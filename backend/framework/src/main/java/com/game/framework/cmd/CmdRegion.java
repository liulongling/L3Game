package com.game.framework.cmd;

import java.util.Set;

/**
 * @author liulongling
 * @date 2023-05-01
 */
public interface CmdRegion {
    int endPointLogicServerId(Set<Integer> idHashSet);

    int endPointLogicServerId(int[] idHashArray);

    boolean hasIdHash();
}
