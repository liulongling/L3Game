package com.game.netty.core.codec;


import com.game.common.consts.CommonConst;
import com.game.netty.core.kit.ProtoKit;

import java.util.Objects;


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
