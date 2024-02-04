package com.game.common.system;

import com.game.common.kit.InternalSystemPropsKit;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.experimental.FieldDefaults;

/**
 * @author liulongling
 * @date 2023-01-19
 */

@Getter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class OsInfo {
    final String osName = InternalSystemPropsKit.get("os.name", false);
    final boolean linux = getOsMatches("Linux") || getOsMatches("LINUX");
    final boolean mac = getOsMatches("Mac") || getOsMatches("Mac OS X");


    private boolean getOsMatches(String osNamePrefix) {
        if (osName == null) {
            return false;
        }

        return osName.startsWith(osNamePrefix);
    }


    private OsInfo() {

    }

    public static OsInfo me() {
        return Holder.ME;
    }

    /** 通过 JVM 的类加载机制, 保证只加载一次 (singleton) */
    private static class Holder {
        static final OsInfo ME = new OsInfo();
    }
}
