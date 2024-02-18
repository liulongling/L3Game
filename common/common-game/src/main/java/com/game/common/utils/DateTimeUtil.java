package com.game.common.utils;

import lombok.extern.slf4j.Slf4j;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.*;
import java.util.*;

@Slf4j
public class DateTimeUtil {

    public static final int ExpireTime = 2 * DateTimeUtil.ONE_HOUR_TO_SEL;

    public static final int RedisRef = 2 * DateTimeUtil.ONE_HOUR_TO_SEL;

    public static Map<Integer, Integer> testTime = new HashMap<>();

    public static Map<Integer, Integer> testTime1 = new HashMap<>();

    public static final int ONE_MINUTE_TO_SECONDS = 60;     // 1分钟 -> 60秒
    public static final int ONE_HOUR_TO_MINUTES = 60;       // 1小时 -> 60分钟
    public static final int ONE_DAY_TO_HOURS = 24;          // 1天 -> 24小时
    public static final String SDF_DATETIME = "yyyy-MM-dd HH:mm:ss";
    public static final String SDF_DATE = "yyyy-MM-dd";
    public static final String ES_DATE_FORMAT = "yyyy.MM.dd";
    public static final String CARD_LOG_DATE_FORMAT = "yyyyMMdd";
    public static final String FORMAT_YYYY_MM = "yyyyMM";
    /**
     * 1秒的毫秒数
     */
    public static final long ONE_SECOND_TO_MSEL = 1000;
    /**
     * 1分钟的毫秒数
     */
    public static final long ONE_MINUTE_TO_MSEL = ONE_MINUTE_TO_SECONDS * ONE_SECOND_TO_MSEL;
    /**
     * 1小时的毫秒数
     */
    public static final long ONE_HOUR_TO_MSEL = ONE_HOUR_TO_MINUTES * ONE_MINUTE_TO_MSEL;
    /**
     * 1分钟的秒数
     */
    public static final int ONE_MINUTE_TO_SEL = ONE_HOUR_TO_MINUTES;
    /**
     * 1小时的秒数
     */
    public static final int ONE_HOUR_TO_SEL = ONE_HOUR_TO_MINUTES * ONE_MINUTE_TO_SEL;

    public static long YESTERDAY_FIVE = 0L;     // 昨日五时刻
    public static long TODAY_FIVE = 0L;         // 今日五时刻
    public static long TOMORROW_FIVE = 0L;      // 明日五时刻
    public static long TODAY_TWENTY_FOUR = 0L;  // 今日4点59分59秒
    public static long YESTERDAY_ZONE = 0L;     // 昨日零时刻
    public static long TODAY_ZONE = 0L;         // 今日零时刻
    public static long TOMORROW_ZONE = 0L;      // 明日零时刻
    public static long TODAY_TWENTY_ZONE = 0L;  // 今日23点59分59秒
    public static long WEEK_FIVE = 0L;          // 本周五时刻
    public static long NEXT_WEEK_FIVE = 0L;     // 下周五时刻
    public static long NEXT_MONTH_FIVE = 0L;    // 下月五时刻
    public static long WEEK_ZONE = 0L;          // 本周零时刻
    public static long NEXT_WEEK_ZONE = 0L;     // 下周零时刻
    public static int todayOfWeek = 1;
    public static long redisTime = System.currentTimeMillis();
    private static volatile long timeDifference = 0L;

    public static long CURRENT_MONTH_FIVE = 0L;  // 本月五时刻

    /**
     * 1天的毫秒数
     */
    public static long ONE_DAY_TO_MSEL = ONE_DAY_TO_HOURS * ONE_HOUR_TO_MSEL;
    /**
     * 1天的秒数
     */
    public static int ONE_DAY_TO_SEL = ONE_DAY_TO_HOURS * ONE_HOUR_TO_SEL;


    /**
     * 获取当前时间
     *
     * @return
     */
    public static long getNow() {
        int uid = 0;
        if(testTime.get(uid) != null){
            return testTime.get(uid) * 1000L;
        }
        if(testTime1.get(uid) != null){
            return System.currentTimeMillis() + timeDifference + testTime1.get(uid) * 1000L;
        }
        return System.currentTimeMillis() + timeDifference;
    }

    /**
     * 长整形日期转字符串日期，格式为 yyyy-MM-dd HH:mm:ss
     *
     * @param time
     * @return
     */
    public static String getStringByTime(long time) {
        SimpleDateFormat sfm = getSimpleDataFormat(SDF_DATETIME);
        try {
            return sfm.format(new Date(time));
        } catch (Exception e) {
            log.error(null, e);
        }
        return "1970-01-01 00:00:00";
    }





    public static SimpleDateFormat getSimpleDataFormat(String pattern) {
        return new SimpleDateFormat(pattern);
    }

    /**
     * 字符串日期转长整形日期，格式可以为 yyyy-MM-dd HH:mm:ss 或 yyyy-MM-dd 等
     *
     * @param time
     * @return
     */
    public static long parseTimeToMillis(String time, String pattern) {
        SimpleDateFormat format = getSimpleDataFormat(pattern);
        try {
            if (null == time || time.isEmpty() || time.equals("0")) {
                return 0L;
            }
            return format.parse(time).getTime();
        } catch (Exception e) {
            log.error(null, e, "");
        }
        return 0L;
    }

    public static int getNowAsTimestamp() {
        return (int) (getNow() / (DateTimeUtil.ONE_SECOND_TO_MSEL * 1.0));
    }

    public static int getTimeAsTimestamp(long time) {
        return (int) (time / (DateTimeUtil.ONE_SECOND_TO_MSEL * 1.0));
    }

    public static String getVersion() {
        return String.valueOf(getNow() / 1000000D);
    }

    /**
     * 根据 策划中time类型进行时间计算
     *
     * @return 时间 秒
     */
    public static int getNowByModelTime(int time) {
        switch (time) {
            case 1: {
                return DateTimeUtil.getTimeAsTimestamp(DateTimeUtil.TOMORROW_FIVE);
            }
            case 2: {
                return DateTimeUtil.getTimeAsTimestamp(DateTimeUtil.NEXT_WEEK_FIVE);
            }
            case 3: {
                return DateTimeUtil.getTimeAsTimestamp(DateTimeUtil.NEXT_MONTH_FIVE);
            }
            default:{
                return 0;
            }
        }
    }

    public static int getNowAsTimestampByModelTime(int time) {
       return getNowByModelTime(time);
    }

    public static int getDayOfWeekByTime(long time) {
        return LocalDateTime.ofInstant(Instant.ofEpochMilli(time), ZoneId.systemDefault()).getDayOfWeek().getValue();
    }

    public static int getDayOfWeek(int day) {
        switch(day){
            case 1 : {
                return 1;
            }
            case 2 : {
                return 2;
            }
            case 3 : {
                return 4;
            }
            case 4 : {
                return 8;
            }
            case 5 : {
                return 16;
            }
            case 6 : {
                return 32;
            }
            case 7 : {
                return 64;
            }
        }
        return 0;
    }

    /**
     * 计算两个日期之间相差的天数
     * @param earlier 早一点的日期
     * @param later 晚一点的日期
     * @return 相差天数
     */
    public static int getDateDiff(Date earlier, Date later) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(earlier);
        long time1 = cal.getTimeInMillis();
        cal.setTime(later);
        long time2 = cal.getTimeInMillis();
        long between_days=(time2-time1)/(1000*3600*24);

        return Integer.parseInt(String.valueOf(between_days));
    }

    /**
     * 计算两个日期之间相差的月数
     * @param earlier 早一点的日期
     * @param later 晚一点的日期
     * @return 相差天数
     */
    public static int getMonthDiff(Date earlier, Date later) {
        Calendar c1 = Calendar.getInstance();
        Calendar c2 = Calendar.getInstance();
        c1.setTime(earlier);
        c2.setTime(later);
        int  year = c2.get(Calendar.YEAR) - c1.get(Calendar.YEAR);
        return c2.get(Calendar.MONTH)+year*12 - c1.get(Calendar.MONTH);
    }

    /**
     * 获取两个日期之间的所有日期
     * @param startTime 开始日期
     * @param endTime 结束日期
     * @return
     */
    public static List<String> getDays(String startTime, String endTime) {
        List<String> days = new ArrayList<String>();
        DateFormat dateFormat = new SimpleDateFormat(ES_DATE_FORMAT);
        try {
            Date start = dateFormat.parse(startTime);
            Date end = dateFormat.parse(endTime);

            Calendar tempStart = Calendar.getInstance();
            tempStart.setTime(start);

            Calendar tempEnd = Calendar.getInstance();
            tempEnd.setTime(end);
            tempEnd.add(Calendar.DATE, +1);// 日期加1(包含结束)
            while (tempStart.before(tempEnd)) {
                days.add(dateFormat.format(tempStart.getTime()));
                tempStart.add(Calendar.DAY_OF_YEAR, 1);
            }
        } catch (Exception e) {
            log.error(null, e, "");
        }

        return days;
    }

    public static List<String> getDays(Date start, Date end) {
        List<String> days = new ArrayList<>();
        DateFormat dateFormat = new SimpleDateFormat(ES_DATE_FORMAT);
        try {
            Calendar tempStart = Calendar.getInstance();
            tempStart.setTime(start);
            Calendar tempEnd = Calendar.getInstance();
            tempEnd.setTime(end);
            tempEnd.add(Calendar.DATE, +1);// 日期加1(包含结束)
            while (tempStart.before(tempEnd)) {
                days.add(dateFormat.format(tempStart.getTime()));
                tempStart.add(Calendar.DAY_OF_YEAR, 1);
            }
        } catch (Exception e) {
            log.error(null, e, "");
        }
        return days;
    }

    /**
     * 根据时间戳获取周id（结构为年份+当年第几周，例如202117为2021年第17周）
     * @param time
     * @return
     */
    public static int getWeekId(int time) {
        Calendar cal = Calendar.getInstance();
        cal.setTimeInMillis(time * 1000L);
        cal.setFirstDayOfWeek(Calendar.MONDAY);
        return Integer.parseInt(cal.get(Calendar.YEAR) + "" + cal.get(Calendar.WEEK_OF_YEAR));
    }

    public static int getNextClearTimeByCompare() {
        // 当前时间大于当月 5 时返回下月 5 时 否则返回当月 5 时
        boolean b = getNowAsTimestamp() >= getTimeAsTimestamp(CURRENT_MONTH_FIVE);
        if (b) {
            return getTimeAsTimestamp(NEXT_MONTH_FIVE);
        } else {
            return getTimeAsTimestamp(CURRENT_MONTH_FIVE);
        }
    }


}
