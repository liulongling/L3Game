package com.game.sql.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Author: liulongling
 * @Date: 2021/7/15 16:03
 */
public class DateUtils {
    public static final String CARD_LOG_DATE_FORMAT = "yyyyMMdd";

    public static String getSqlDate() {
        SimpleDateFormat sfm = getSimpleDataFormat(CARD_LOG_DATE_FORMAT);
        try {
            return sfm.format(new Date(System.currentTimeMillis()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "19700101";
    }

    public static SimpleDateFormat getSimpleDataFormat(String pattern) {
        return new SimpleDateFormat(pattern);
    }
}
