package com.game.netty.core.kit;

import com.game.netty.core.codec.DataCodec;
import com.game.netty.core.codec.ProtoDataCodec;
import lombok.Getter;
import lombok.experimental.UtilityClass;


@UtilityClass
public class DataCodecKit {

    /** 业务数据的编解码器 */
    @Getter
    DataCodec dataCodec = new ProtoDataCodec();

    /**
     * 将业务参数编码成字节数组
     *
     * @param data 业务参数 (指的是请求端的请求参数)
     * @return bytes
     */
    public byte[] encode(Object data) {
        return dataCodec.encode(data);
    }

    /**
     * 将字节数组解码成对象
     *
     * @param data       业务参数 (指的是请求端的请求参数)
     * @param paramClazz clazz
     * @param <T>        t
     * @return 业务参数
     */
    public <T> T decode(byte[] data, Class<T> paramClazz) {
        return dataCodec.decode(data, paramClazz);
    }

    void setDataCodec(DataCodec dataCodec) {
        DataCodecKit.dataCodec = dataCodec;
    }
}
