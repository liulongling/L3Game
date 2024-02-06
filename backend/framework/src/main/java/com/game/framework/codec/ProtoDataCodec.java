package com.game.framework.codec;


import com.game.common.consts.CommonConst;
import com.game.framework.kit.ProtoKit;

import java.util.Objects;

/**
 * 业务参数的 proto 编解码器
 *
 * @author L3
 * @date 2022-05-18
 */
@SuppressWarnings("unchecked")
public final class ProtoDataCodec implements DataCodec {
    @Override
    public byte[] encode(Object data) {
        return ProtoKit.toBytes(data);
    }

    @Override
    public <T> T decode(final byte[] data, Class<?> dataClass) {

        if (Objects.isNull(data)) {
            return (T) ProtoKit.parseProtoByte(CommonConst.emptyBytes, dataClass);
        }

        return (T) ProtoKit.parseProtoByte(data, dataClass);
    }

    @Override
    public String codecName() {
        return "j-protobuf";
    }
}
