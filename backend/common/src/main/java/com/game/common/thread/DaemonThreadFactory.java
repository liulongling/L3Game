package com.game.common.thread;

import java.util.concurrent.ThreadFactory;

public final class DaemonThreadFactory extends ThreadCreator implements ThreadFactory {

    public DaemonThreadFactory(String threadNamePrefix) {
        super(threadNamePrefix);
        this.setDaemon(true);
    }

    @Override
    public Thread newThread(Runnable runnable) {
        return createThread(runnable);
    }
}
