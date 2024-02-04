package com.game.common.kit;

import lombok.experimental.UtilityClass;

/**
 * hash kit
 *
 * @author liulongling
 * @date 2023-07-03
 */
@UtilityClass
public class HashKit {
    public int hash32(final String data) {
        return MurmurHash3.hash32(data);
    }

    public int hash32(final byte[] data) {
        return MurmurHash3.hash32(data);
    }
}
