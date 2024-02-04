package com.game.netty.session;

import java.util.Objects;

/**
 * @author liulongling
 * @date 2023-02-18
 */
public record UserChannelId(String channelId) {
    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }

        if (!(o instanceof UserChannelId that)) {
            return false;
        }

        return Objects.equals(channelId, that.channelId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(channelId);
    }
}