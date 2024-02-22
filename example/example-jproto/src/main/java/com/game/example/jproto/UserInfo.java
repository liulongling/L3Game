package com.game.example.jproto;

import com.baidu.bjf.remoting.protobuf.annotation.Ignore;
import com.baidu.bjf.remoting.protobuf.annotation.ProtobufClass;
import com.iohao.game.widget.light.protobuf.ProtoFileMerge;
import lombok.AccessLevel;
import lombok.ToString;
import lombok.experimental.FieldDefaults;

import java.io.Serial;
import java.io.Serializable;

/**
 * @author liulongling
 * @date 2024-02-14
 */
@ToString
@ProtobufClass
@FieldDefaults(level = AccessLevel.PUBLIC)
@ProtoFileMerge(fileName = GameProtoFile.COMMON_FILE_NAME, filePackage = GameProtoFile.COMMON_FILE_PACKAGE)
public class UserInfo implements Serializable {
    @Serial
    @Ignore
    private static final long serialVersionUID = 5076168569348502895L;

    /** id */
    long id;
    /** 用户名 */
    String name;
}
