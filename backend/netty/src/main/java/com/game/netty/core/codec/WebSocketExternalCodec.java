package com.game.netty.core.codec;

import com.game.jproto.ExternalMessage;
import com.game.netty.core.kit.DataCodecKit;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToMessageCodec;
import io.netty.handler.codec.http.websocketx.BinaryWebSocketFrame;

import java.util.List;

/**
 * @author liulongling
 * @date 2023-02-21
 */
public class WebSocketExternalCodec extends MessageToMessageCodec<BinaryWebSocketFrame, ExternalMessage> {
    @Override
    protected void encode(ChannelHandlerContext ctx, ExternalMessage externalMessage, List<Object> out) {
        /*
         *【游戏对外服】发送消息给【游戏客户端】
         * 编码器 - ExternalMessage ---> 字节数组，将消息发送到请求端（客户端）
         */
        byte[] bytes = DataCodecKit.encode(externalMessage);
        // 使用默认 buffer 。如果没有做任何配置，通常默认实现为池化的 direct （直接内存，也称为堆外内存）
        ByteBuf byteBuf = ctx.alloc().buffer(bytes.length);
        byteBuf.writeBytes(bytes);

        BinaryWebSocketFrame socketFrame = new BinaryWebSocketFrame(byteBuf);
        out.add(socketFrame);
    }

    @Override
    protected void decode(ChannelHandlerContext ctx, BinaryWebSocketFrame binary, List<Object> out) {
        // 解码器 - 字节数组 ---> ExternalMessage，接收请求端的消息（客户端）
        ByteBuf contentBuf = binary.content();
        byte[] msgBytes = new byte[contentBuf.readableBytes()];
        contentBuf.readBytes(msgBytes);

        ExternalMessage message = DataCodecKit.decode(msgBytes, ExternalMessage.class);
        //【游戏对外服】接收【游戏客户端】的消息
        out.add(message);
    }


    public WebSocketExternalCodec() {
    }

    @Deprecated
    public static WebSocketExternalCodec me() {
        return Holder.ME;
    }

    /** 通过 JVM 的类加载机制, 保证只加载一次 (singleton) */
    private static class Holder {
        static final WebSocketExternalCodec ME = new WebSocketExternalCodec();
    }
}
