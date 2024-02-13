package com.game.netty.bootstrap.handler;

import com.game.netty.session.SocketUserSessions;
import com.game.netty.session.SocketUserSession;
import com.iohao.game.external.core.aware.UserSessionsAware;
import com.iohao.game.external.core.session.UserSessions;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.handler.codec.http.*;

import java.util.Map;
import java.util.stream.Collectors;

/**
 * WebSocket 连接前的 token 验证 handler
 *
 * @author 渔民小镇
 * @date 2023-08-03
 */
public class WebSocketVerifyHandler extends ChannelInboundHandlerAdapter
        implements UserSessionsAware {

    protected SocketUserSessions userSessions;

    @Override
    public void setUserSessions(UserSessions<?, ?> userSessions) {
        this.userSessions = (SocketUserSessions) userSessions;
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        System.out.println(" Test WebSocketVerifyHandler channelRead");
        if (msg instanceof FullHttpRequest request) {
            // 从 uri 中解析参数
            String uri = request.uri();
            Map<String, String> params = getParams(uri);

            // 开发者可以重写 verify 方法来扩展
            SocketUserSession userSession = userSessions.getUserSession(ctx);
            boolean verify = verify(userSession, params);

            if (verify) {
                //  验证通过后，移除自身；减少消息在 handler 中流动的次数
                ctx.pipeline().remove(this);
            } else {
                // 验证失败，关闭连接或返回错误响应
                FullHttpResponse response = new DefaultFullHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.UNAUTHORIZED);
                ctx.writeAndFlush(response).addListener(ChannelFutureListener.CLOSE);
                return;
            }
        }

        super.channelRead(ctx, msg);
    }

    /**
     * verify
     *
     * @param userSession ctx
     * @param params      params
     * @return 返回 false 表示验证没通过，框架会关闭连接
     */
    protected boolean verify(SocketUserSession userSession, Map<String, String> params) {
        /*
         * 保存一份验证完成的数据，后续使用。
         * 开发者如果有想把解析后的数据传递到游戏逻辑服中的，
         * 可以先在这里保存一份想要传递的数据。
         */

        // 参考文档 https://www.yuque.com/iohao/game/tb1126szmgfu6u55
        return true;
    }

    protected Map<String, String> getParams(String uri) {
        return new QueryStringDecoder(uri)
                .parameters()
                .entrySet()
                .stream()
                .collect(Collectors.toMap(Map.Entry::getKey, entry -> entry.getValue().get(0)));
    }

}