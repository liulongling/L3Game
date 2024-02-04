package com.game.common.thread;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * copy from springframework
 *
 * @author liulongling
 * @date 2023-04-02
 */
@Getter
@Setter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ThreadCreator {

    String threadNamePrefix;

    int threadPriority = Thread.NORM_PRIORITY;

    boolean daemon = false;

    ThreadGroup threadGroup;

    final AtomicInteger threadCount = new AtomicInteger();

    public ThreadCreator(String threadNamePrefix) {
        this.threadNamePrefix = threadNamePrefix;
    }

    public void setThreadGroupName(String name) {
        this.threadGroup = new ThreadGroup(name);
    }

    public Thread createThread(Runnable runnable) {
        Thread thread = new Thread(getThreadGroup(), runnable, nextThreadName());
        thread.setPriority(threadPriority);
        thread.setDaemon(daemon);
        return thread;
    }

    protected String nextThreadName() {
        String format = "%s-%d";
        return String.format(format, this.threadNamePrefix, this.threadCount.incrementAndGet());

    }
}
