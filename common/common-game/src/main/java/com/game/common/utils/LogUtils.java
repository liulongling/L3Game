package com.game.common.utils;


import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;

import static java.nio.charset.StandardCharsets.UTF_8;

/**
 * 日志使用规范和说明
 * - debug: 完整详细的记录流程的关键路径，用于开发人员比较感兴趣的跟踪和调试信息，生产环境中不会打开debug状态
 * - info: 应简洁明确让管理员确定状态，记录相当重要有意义的信息。关键的系统参数的回显、后台服务的初始化状态、需要系统管理员确认的关键信息都需要使用info级别
 * - warn: 能清楚告知发生了什么情况，指示潜在问题能引起别人重视，但不一定需要处理
 * - error: 系统出现异常或不希望出现的问题，能及时得到关注处理。但也不是所有的异常都记录成error
 */
public class LogUtils {
    //打印调用栈的最大深度
    private static final int MAX_STACK_DEPTH = 500;

    /**
     * 获取完整的调用栈信息
     *
     * @return
     */
    public static String getCallerStack() {
        return getCallerStack(MAX_STACK_DEPTH);
    }

    /**
     * 获取调用栈信息
     *
     * @param depth 打印的方法栈深度
     */
    public static String getCallerStack(int depth) {
        return getCallerStack(depth,0);
    }

    public static String getCallerStack(int depth, int start) {
        StringBuilder info = new StringBuilder();
        try {
            //忽略本方法体内的方法调用信息
            final int ignoreDepth = 2;
            if (depth < 0) {
                return info.toString();
            }
            StackTraceElement[] elements = Thread.currentThread().getStackTrace();
            if (elements.length - ignoreDepth < depth) {
                depth = Math.abs(elements.length - ignoreDepth);
            }

            for (int index = 2 + start; depth > 0 && index < elements.length; index += 1, depth -= 1) {
                StackTraceElement curElement = elements[index];
                info.append("\tat ")
                        .append(curElement.getClassName())
                        .append(".")
                        .append(curElement.getMethodName())
                        .append("(")
                        .append(curElement.getFileName())
                        .append(":")
                        .append(curElement.getLineNumber())
                        .append(")")
                        .append('\n');
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return info.toString();
    }

    public static String collectThrowableInfo(Throwable throwable) {
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try (PrintStream printStream = new PrintStream(byteArrayOutputStream, true, "UTF-8")) {
            throwable.printStackTrace(printStream);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return new String(byteArrayOutputStream.toByteArray(), UTF_8);
    }

}
