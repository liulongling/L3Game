package com.game.netty.kit;

import com.alipay.remoting.rpc.RpcCommandType;
import com.game.common.consts.CommonConst;
import com.game.common.exception.ActionErrorEnum;
import com.game.common.exception.MsgExceptionInfo;
import com.game.jproto.ExternalMessage;
import com.game.netty.cmd.CmdInfo;
import com.game.netty.core.kit.DataCodecKit;
import com.game.common.kit.HashKit;
import com.game.netty.message.ExternalMessageCmdCode;
import com.game.netty.message.HeadMetadata;
import com.game.netty.message.RequestMessage;
import com.game.netty.message.ResponseMessage;
import lombok.experimental.UtilityClass;

import java.util.Objects;

/**
 * @author liulongling
 * @date 2023-02-21
 */
@UtilityClass
public class ExternalKit {

    /**
     * 创建请求消息
     *
     * @param cmdMerge 路由 {@link com.game.common.core.CmdKit#merge(int, int)}
     * @param idHash   当前游戏对外服的 idHash
     * @return 请求消息
     */
    public RequestMessage createRequestMessage(int cmdMerge, int idHash) {
        return createRequestMessage(cmdMerge, idHash, null);
    }

    /**
     * 创建请求消息
     *
     * @param cmdMerge 路由 {@link com.game.common.core.CmdKit#merge(int, int)}
     * @param idHash   当前游戏对外服的 idHash
     * @param data     业务数据 byte[]
     * @return 请求消息
     */
    public RequestMessage createRequestMessage(int cmdMerge, int idHash, byte[] data) {
        // 元信息
        HeadMetadata headMetadata = new HeadMetadata()
                .setCmdMerge(cmdMerge)
                .setRpcCommandType(RpcCommandType.REQUEST_ONEWAY)
                .setSourceClientId(idHash);

        // 请求
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setHeadMetadata(headMetadata);

        requestMessage.setData(data);

        return requestMessage;
    }

    public RequestMessage convertRequestMessage(ExternalMessage externalMessage, int idHash) {
        int cmdMerge = externalMessage.getCmdMerge();

        // 元信息
        HeadMetadata headMetadata = new HeadMetadata()
                .setCmdMerge(cmdMerge)
                .setRpcCommandType(RpcCommandType.REQUEST_ONEWAY)
                .setSourceClientId(idHash)
                .setMsgId(externalMessage.getMsgId())
                .setCustomData(externalMessage.getCustomData());

        byte[] data = externalMessage.getData();

        if (externalMessage.getCmdCode() == ExternalMessageCmdCode.bizCache) {
            int cacheCondition = getCacheCondition(data);
            headMetadata.setCacheCondition(cacheCondition);
        }

        // 请求
        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setHeadMetadata(headMetadata);
        requestMessage.setData(data);

        return requestMessage;
    }

    public ExternalMessage convertExternalMessage(ResponseMessage responseMessage) {
        HeadMetadata headMetadata = responseMessage.getHeadMetadata();

        // 游戏框架内置的协议， 与游戏前端相互通讯的协议
        ExternalMessage externalMessage = createExternalMessage();
        // 路由
        externalMessage.setCmdMerge(headMetadata.getCmdMerge());
        // 业务数据
        externalMessage.setData(responseMessage.getData());
        // 状态码
        externalMessage.setResponseStatus(responseMessage.getResponseStatus());
        // 验证信息（异常消息）
        externalMessage.setValidMsg(responseMessage.getValidatorMsg());
        // 消息标记号；由前端请求时设置，服务器响应时会携带上
        externalMessage.setMsgId(headMetadata.getMsgId());
        // 开发者自定义数据
        externalMessage.setCustomData(headMetadata.getCustomData());

        return externalMessage;
    }

    public ExternalMessage createExternalMessage() {
        // 游戏框架内置的协议， 与游戏前端相互通讯的协议
        ExternalMessage externalMessage = new ExternalMessage();
        // 请求命令类型: 0 心跳，1 业务
        externalMessage.setCmdCode(ExternalMessageCmdCode.biz);
        return externalMessage;
    }

    public ExternalMessage createIdleErrorMessage() {
        ExternalMessage externalMessage = ExternalKit.createExternalMessage();
        // 请求命令类型: 心跳
        externalMessage.setCmdCode(ExternalMessageCmdCode.idle);
        // 错误码
        externalMessage.setResponseStatus(ActionErrorEnum.idleErrorCode.getCode());
        // 错误消息
        externalMessage.setValidMsg(ActionErrorEnum.idleErrorCode.getMsg());

        return externalMessage;
    }

    public ExternalMessage createExternalMessage(CmdInfo cmdInfo, byte[] data) {
        return createExternalMessage(cmdInfo.getCmd(), cmdInfo.getSubCmd(), data);
    }

    public ExternalMessage createExternalMessage(CmdInfo cmdInfo, Object object) {
        return createExternalMessage(cmdInfo.getCmd(), cmdInfo.getSubCmd(), object);
    }

    public ExternalMessage createExternalMessage(CmdInfo cmdInfo) {
        ExternalMessage externalMessage = ExternalKit.createExternalMessage();
        externalMessage.setCmdMerge(cmdInfo.getCmdMerge());
        return externalMessage;
    }

    public ExternalMessage createExternalMessage(int cmd, int subCmd) {
        ExternalMessage externalMessage = ExternalKit.createExternalMessage();
        externalMessage.setCmdMerge(cmd, subCmd);
        return externalMessage;
    }

    public ExternalMessage createExternalMessage(int cmd, int subCmd, Object object) {
        byte[] data = null;

        if (object != null) {
            data = DataCodecKit.encode(object);
        }

        return ExternalKit.createExternalMessage(cmd, subCmd, data);
    }

    public ExternalMessage createExternalMessage(int cmd, int subCmd, byte[] data) {
        // 游戏框架内置的协议， 与游戏前端相互通讯的协议
        ExternalMessage externalMessage = ExternalKit.createExternalMessage(cmd, subCmd);

        // 业务数据
        externalMessage.setData(data);

        return externalMessage;
    }


    /**
     * byte[] 转 hash
     * <pre>
     *     缓存查询条件: 由请求参数计算出一个 hash 值。
     *     同一 action 条件参数的 hash 值碰撞的几率不是很大。
     *
     *     当条件参数不存在时，那么就是无参 action，使用 1 来表示。
     * </pre>
     *
     * @param data bytes
     * @return hash
     */
    public int getCacheCondition(byte[] data) {
        return Objects.nonNull(data) ? HashKit.hash32(data) : 1;
    }

    public void employError(ExternalMessage message, MsgExceptionInfo exceptionInfo) {
        message.setResponseStatus(exceptionInfo.getCode());
        message.setValidMsg(exceptionInfo.getMsg());
        message.setData(CommonConst.emptyBytes);
    }
}
