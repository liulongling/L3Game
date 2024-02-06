package com.game.framework.protocol;

import com.baidu.bjf.remoting.protobuf.FieldType;
import com.baidu.bjf.remoting.protobuf.annotation.Protobuf;
import com.baidu.bjf.remoting.protobuf.annotation.ProtobufClass;
import lombok.ToString;

import java.util.List;

/**
 * 对象类型的包装类
 *
 * @author L3
 * @date 2023-04-17
 */
@ToString
@ProtobufClass
public final class ByteValueList {
    /** byte[] List */
    @Protobuf(fieldType = FieldType.BYTES, order = 1)
    public List<byte[]> values;

    public static ByteValueList of(List<byte[]> values) {
        var theValue = new ByteValueList();
        theValue.values = values;
        return theValue;
    }
}
