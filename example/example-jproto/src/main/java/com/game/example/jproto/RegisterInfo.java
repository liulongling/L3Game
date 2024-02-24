package com.game.example.jproto;

import com.baidu.bjf.remoting.protobuf.annotation.ProtobufClass;
import com.iohao.game.widget.light.protobuf.ProtoFileMerge;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.FieldDefaults;

/**
 * @author liulongling
 * @date 2024-02-14
 */
@Getter
@Setter
@ToString
@ProtobufClass
@FieldDefaults(level = AccessLevel.PUBLIC)
@ProtoFileMerge(fileName = GameProtoFile.COMMON_FILE_NAME, filePackage = GameProtoFile.COMMON_FILE_PACKAGE)
public class RegisterInfo {
    /** 平台ID */
    String platformId;
    /** 渠道ID */
    int channelId;
    /** 平台UID */
    String platformUid;
    /** 角色名称 */
    String name;
}