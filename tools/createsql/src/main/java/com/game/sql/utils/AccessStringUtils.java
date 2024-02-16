package com.game.sql.utils;

import com.game.sql.exception.AccessException;
import lombok.extern.slf4j.Slf4j;

/**
 * @Author: liulongling
 * @Date: 2021/7/15 15:41
 */
@Slf4j
public class AccessStringUtils {
    /**
     * 截取字符串str中指定字符 strStart、strEnd之间的字符串
     */
    public static String subString(String str, String strStart, String strEnd) {
        //找出指定的2个字符在 该字符串里面的 位置
        int strStartIndex = str.indexOf(strStart);
        int strEndIndex = str.indexOf(strEnd);

        //index 为负数 即表示该字符串中 没有该字符
        if (strStartIndex < 0) {
            throw new AccessException("字符串 :---->" + str + "<---- 中不存在 " + strStart + ", 无法截取目标字符串");
        }
        if (strEndIndex < 0) {
            throw new AccessException("字符串 :---->" + str + "<---- 中不存在 " + strEnd + ", 无法截取目标字符串");
        }
        log.debug("str:{} strStart:{} strEnd:{} strStartIndex:{} strEndIndex:{}", str, strStart, strEnd, strStartIndex, strEndIndex);
        return str.substring(strStartIndex, strEndIndex + 1);
    }
}
