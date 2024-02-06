package com.game.framework.kit;

import com.game.framework.codec.ProtoDataCodec;
import lombok.Getter;
import lombok.experimental.UtilityClass;
import com.game.framework.codec.DataCodec;

/**
 * 业务框架对业务数据的编解码器
 * <pre>
 *     会在构建业务框架时赋值  DataCodecKit#dataCodec
 *     see {@link BarSkeletonBuilder#build()}
 * </pre>
 *
 * @author L3
 * @date 2022-05-18
 */
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
