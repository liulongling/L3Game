package com.game.framework.kit;

import com.baidu.bjf.remoting.protobuf.Codec;
import com.baidu.bjf.remoting.protobuf.ProtobufProxy;
import com.game.common.consts.CommonConst;
import com.game.common.consts.GameLogName;
import lombok.experimental.UtilityClass;
import lombok.extern.slf4j.Slf4j;

import java.util.Objects;

@UtilityClass
@Slf4j(topic = GameLogName.CommonStdout)
public class ProtoKit {
    /**
     * 将对象转为 pb 字节数组
     *
     * @param data 对象
     * @return 字节数组 （一定不为null）
     */
    @SuppressWarnings("unchecked")
    public byte[] toBytes(Object data) {

        if (Objects.isNull(data)) {
            return CommonConst.emptyBytes;
        }

        Class clazz = data.getClass();
        Codec<Object> codec = ProtobufProxy.create(clazz);

        try {
            return codec.encode(data);
        } catch (Throwable e) {
            log.error(e.getMessage(), e);
        }

        return CommonConst.emptyBytes;
    }

    /**
     * 将字节解析成 pb 对象
     *
     * @param data  pb 字节
     * @param clazz pb class
     * @param <T>   t
     * @return pb 对象
     */
    public <T> T parseProtoByte(byte[] data, Class<T> clazz) {

        if (Objects.isNull(data)) {
            return null;
        }

        Codec<T> codec = ProtobufProxy.create(clazz);

        try {
            return codec.decode(data);
        } catch (Throwable e) {
            log.error(e.getMessage(), e);
        }

        return null;
    }
}
