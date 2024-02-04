package com.game.netty.message;


import com.game.netty.cmd.CmdInfo;

import java.io.Serial;

/**
 * 请求参数
 *
 * @author liulongling
 * @date 2021-12-20
 */
public sealed class RequestMessage extends BarMessage permits SyncRequestMessage {
    @Serial
    private static final long serialVersionUID = 8564408386704453534L;

    public ResponseMessage createResponseMessage() {
        ResponseMessage responseMessage = new ResponseMessage();

        this.settingCommonAttr(responseMessage);

        return responseMessage;
    }

    public void settingCommonAttr(final ResponseMessage responseMessage) {
        // response 与 request 使用的 headMetadata 为同一引用
        responseMessage.setHeadMetadata(this.headMetadata);
    }

    /**
     * 设置自身属性到 request 中
     *
     * @param requestMessage request
     */
    public void copyTo(RequestMessage requestMessage) {
        requestMessage.responseStatus = this.responseStatus;
        requestMessage.validatorMsg = this.validatorMsg;
        requestMessage.headMetadata = this.headMetadata;
        requestMessage.dataClass = this.dataClass;
        requestMessage.data = this.data;
    }

    /**
     * 创建 RequestMessage 时，附带当前 RequestMessage 对象的一些信息
     * <pre>
     *     使用场景：与其他游戏逻辑服通信时可以使用
     * </pre>
     *
     * @param cmdInfo 路由
     * @return 新的 RequestMessage
     */
    public RequestMessage createRequestMessage(CmdInfo cmdInfo) {
        return createRequestMessage(cmdInfo, null);
    }

    /**
     * 创建 RequestMessage 时，附带当前 RequestMessage 对象的一些信息
     * <pre>
     *     使用场景：与其他游戏逻辑服通信时可以使用
     * </pre>
     *
     * @param cmdInfo 路由
     * @param data    请求参数
     * @return 新的 RequestMessage
     */
    public RequestMessage createRequestMessage(CmdInfo cmdInfo, Object data) {
        HeadMetadata metadata = this.headMetadata.cloneHeadMetadata();
        metadata.setCmdInfo(cmdInfo);

        RequestMessage requestMessage = new RequestMessage();
        requestMessage.setHeadMetadata(metadata);
        requestMessage.setData(data);

        return requestMessage;
    }
}
