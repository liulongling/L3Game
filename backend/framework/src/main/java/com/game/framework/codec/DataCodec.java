package com.game.framework.codec;

import com.game.framework.kit.DataCodecKit;

/**
 * 业务数据的编解码器
 * <pre>
 *     see {@link DataCodecKit}
 * </pre>
 *
 * @author L3
 * @date 2022-05-18
 */
@SuppressWarnings("unchecked")
public interface DataCodec {
    /**
     * 将数据对象编码成字节数组
     *
     * @param data 数据对象
     * @return bytes
     */
    byte[] encode(Object data);

    /**
     * 将字节数组解码成对象
     *
     * @param data      数据对象的字节
     * @param dataClass 数据对象 class
     * @param <T>       t
     * @return 业务参数
     */
    <T> T decode(byte[] data, Class<?> dataClass);

    /**
     * 编解码名
     *
     * @return 编解码名
     */
    default String codecName() {
        return this.getClass().getSimpleName();
    }
}
