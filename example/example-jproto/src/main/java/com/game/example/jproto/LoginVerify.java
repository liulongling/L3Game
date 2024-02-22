package com.game.example.jproto;

import com.baidu.bjf.remoting.protobuf.annotation.ProtobufClass;
import com.iohao.game.widget.light.protobuf.ProtoFileMerge;
import lombok.AccessLevel;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.FieldDefaults;

/**
 * @author liulongling
 * @date 2024-02-14
 */
@Setter
@ToString
@ProtobufClass
@FieldDefaults(level = AccessLevel.PUBLIC)
@ProtoFileMerge(fileName = GameProtoFile.COMMON_FILE_NAME, filePackage = GameProtoFile.COMMON_FILE_PACKAGE)
public class LoginVerify {
    /** jwt */
    String jwt;
}
