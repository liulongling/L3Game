package com.game.common.utils;

import cn.hutool.core.date.DateUtil;
import org.apache.commons.lang3.time.DateFormatUtils;

import java.lang.management.ManagementFactory;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.*;
import java.time.temporal.ChronoUnit;
import java.time.temporal.TemporalAdjusters;
import java.util.*;

/**
 * 时间工具类
 *
 */
public class DateUtils extends org.apache.commons.lang3.time.DateUtils
{
    public static String YYYY = "yyyy";

    public static String YYYY_MM = "yyyy-MM";

    public static String YYYY_MM_DD = "yyyy-MM-dd";

    public static String YYYYMMDDHHMMSS = "yyyyMMddHHmmss";

    public static String YYYYMMDD = "yyyyMMdd";

    public static String YYYY_MM_DD_HH_MM_SS = "yyyy-MM-dd HH:mm:ss";

    private static String[] parsePatterns = {
            "yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy-MM", 
            "yyyy/MM/dd", "yyyy/MM/dd HH:mm:ss", "yyyy/MM/dd HH:mm", "yyyy/MM",
            "yyyy.MM.dd", "yyyy.MM.dd HH:mm:ss", "yyyy.MM.dd HH:mm", "yyyy.MM"};

    /**
     * 获取当年的第一天
     */
    public static Date getCurrentFirstOfYear(){
        Calendar currCal=Calendar.getInstance();
        int currentYear = currCal.get(Calendar.YEAR);
        return getFirstOfYear(currentYear);
    }

    /**
     * 获取当年的最后一天
     */
    public static Date getCurrentLastOfYear(){
        Calendar currCal=Calendar.getInstance();
        int currentYear = currCal.get(Calendar.YEAR);
        return getLastOfYear(currentYear);
    }

    /**
     * 获取某年第一天日期
     * @param year 年份
     * @return Date
     */
    public static Date getFirstOfYear(int year){
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(Calendar.YEAR, year);
        return calendar.getTime();
    }



    /**
     * 获取某年最后一天日期
     * @param year 年份
     * @return Date
     */
    public static Date getLastOfYear(int year){
        Calendar calendar = Calendar.getInstance();
        calendar.clear();
        calendar.set(Calendar.YEAR, year);
        calendar.roll(Calendar.DAY_OF_YEAR, -1);
        return calendar.getTime();
    }

    /**
     * 获取本月的第一天
     *
     * @return String
     **/
    public static Date getMonthStart() {
        LocalDate firstDayOfMonth = LocalDate.now().with(TemporalAdjusters.firstDayOfMonth());
        LocalTime startTime = LocalTime.of(0, 0); // 00:00:00
        LocalDateTime localDateTime = LocalDateTime.of(firstDayOfMonth, startTime);
        ZonedDateTime zonedDateTime = localDateTime.atZone(ZoneId.of("Asia/Shanghai"));
        return Date.from(zonedDateTime.toInstant());
    }

    /**
     * 获取本月的最后一天
     *
     * @return String
     **/
    public static Date getMonthEnd() {
        LocalDate lastDayOfMonth = LocalDate.now().with(TemporalAdjusters.lastDayOfMonth());
        LocalTime startTime = LocalTime.of(23, 59,59); // 23:59:59
        LocalDateTime localDateTime = LocalDateTime.of(lastDayOfMonth, startTime);
        ZonedDateTime zonedDateTime = localDateTime.atZone(ZoneId.of("Asia/Shanghai"));
        return Date.from(zonedDateTime.toInstant());
    }


    public static Long getLastMonthStartTime() throws Exception {
        Long currentTime = System.currentTimeMillis();

        String timeZone = "GMT+8:00";
        Calendar calendar = Calendar.getInstance();// 获取当前日期
        calendar.setTimeZone(TimeZone.getTimeZone(timeZone));
        calendar.setTimeInMillis(currentTime);
        calendar.add(Calendar.YEAR, 0);
        calendar.add(Calendar.MONTH, -1);
        calendar.set(Calendar.DAY_OF_MONTH, 1);// 设置为1号,当前日期既为本月第一天
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        calendar.set(Calendar.MILLISECOND, 0);

        return calendar.getTimeInMillis();
    }

    public static Long getLastMonthEndTime() {
        Long currentTime = System.currentTimeMillis();

        String timeZone = "GMT+8:00";
        Calendar calendar = Calendar.getInstance();// 获取当前日期
        calendar.setTimeZone(TimeZone.getTimeZone(timeZone));
        calendar.setTimeInMillis(currentTime);
        calendar.add(Calendar.YEAR, 0);
        calendar.add(Calendar.MONTH, -1);
        calendar.set(Calendar.DAY_OF_MONTH, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));// 获取当前月最后一天
        calendar.set(Calendar.HOUR_OF_DAY, 23);
        calendar.set(Calendar.MINUTE, 59);
        calendar.set(Calendar.SECOND, 59);
        calendar.set(Calendar.MILLISECOND, 999);

        return calendar.getTimeInMillis();
    }

    /**
     * 获取上个月月开始时间和结束时间
     *
     * @return
     */
    public static Map<Date, Date> getLastMonthTime() throws Exception {
        Long startTime = getLastMonthStartTime();
        Long endTime = getLastMonthEndTime();
        Map map = new HashMap();
        map.put("startDate", new Date(startTime));
        map.put("endDate", new Date(endTime));
        return map;
    }


    /**
     * 是否是今天
     *
     * @param date 日期
     * @return
     */
    public static boolean isToday(Date date) {
        Calendar c1 = Calendar.getInstance();
        c1.setTime(date);
        int year1 = c1.get(Calendar.YEAR);
        int month1 = c1.get(Calendar.MONTH) + 1;
        int day1 = c1.get(Calendar.DAY_OF_MONTH);
        Calendar c2 = Calendar.getInstance();
        c2.setTime(new Date());
        int year2 = c2.get(Calendar.YEAR);
        int month2 = c2.get(Calendar.MONTH) + 1;
        int day2 = c2.get(Calendar.DAY_OF_MONTH);
        if (year1 == year2 && month1 == month2 && day1 == day2) {
            return true;
        }
        return false;
    }

    /**
     * 获取当天指定时间
     *
     * @param hour   几点
     * @param minute 分钟
     * @param second 秒
     * @return
     */
    public static Date getTodayDateTime(int hour, int minute, int second) {
        return string2Date(getTimeString(getTime(new Date(), hour, minute, second)), YYYY_MM_DD_HH_MM_SS);
    }

    /**
     * 最近几天开始时间
     *
     * @return
     */
    public static Date getNeverDayStartTime(int day) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.add(Calendar.DATE, -day);
        return DateUtil.beginOfDay(calendar.getTime());
    }

    public static Date string2Date(String date, String patterm) {
        try {
            return new SimpleDateFormat(patterm).parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 查询2个时间差 单位天
     *
     * @param date1
     * @param date2
     * @return
     */
    public static long compareDateInterval(Date date1, Date date2) {
        LocalDate localDate1 = date1.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        LocalDate localDate11 = LocalDate.of(localDate1.getYear(), localDate1.getMonthValue(), localDate1.getDayOfMonth()); // 第一个日期

        LocalDate localDate2 = date2.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        LocalDate localDate22 = LocalDate.of(localDate2.getYear(), localDate2.getMonthValue(), localDate2.getDayOfMonth()); // 第二个日期
        return ChronoUnit.DAYS.between(localDate11, localDate22);
    }

    /**
     * 获取当前月第一天
     *
     * @param month
     * @return
     */
    public static String getFirstDayOfMonth(int month) {
        Calendar calendar = Calendar.getInstance();
        // 设置月份
        calendar.set(Calendar.MONTH, month - 1);
        // 获取某月最小天数
        int firstDay = calendar.getActualMinimum(Calendar.DAY_OF_MONTH);
        // 设置日历中月份的最小天数
        calendar.set(Calendar.DAY_OF_MONTH, firstDay);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        // 格式化日期
        SimpleDateFormat sdf = new SimpleDateFormat(YYYY_MM_DD_HH_MM_SS);
        String firstDayDate = sdf.format(calendar.getTime());
        return firstDayDate;

    }

    /**
     * 获取当前月最后一天
     *
     * @param month
     * @return
     */
    public static String getLastDayOfMonth(int month) {
        Calendar calendar = Calendar.getInstance();
        // 设置月份
        calendar.set(Calendar.MONTH, month - 1);
        // 获取某月最大天数
        int lastDay = 0;
        //2月的平年瑞年天数
        if (month == 2) {
            lastDay = calendar.getLeastMaximum(Calendar.DAY_OF_MONTH);
        } else {
            lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
        }
        // 设置日历中月份的最大天数
        calendar.set(Calendar.DAY_OF_MONTH, lastDay);
        calendar.set(Calendar.HOUR_OF_DAY, 23);
        calendar.set(Calendar.MINUTE, 59);
        calendar.set(Calendar.SECOND, 59);
        // 格式化日期
        SimpleDateFormat sdf = new SimpleDateFormat(YYYY_MM_DD_HH_MM_SS);
        String lastDayDate = sdf.format(calendar.getTime());
        return lastDayDate;

    }

    public static Date getBeginTime(int year, int month) {
        YearMonth yearMonth = YearMonth.of(year, month);
        LocalDate localDate = yearMonth.atDay(1);
        LocalDateTime startOfDay = localDate.atStartOfDay();
        ZonedDateTime zonedDateTime = startOfDay.atZone(ZoneId.of("Asia/Shanghai"));

        return Date.from(zonedDateTime.toInstant());
    }

    public static Date getEndTime(int year, int month) {
        YearMonth yearMonth = YearMonth.of(year, month);
        LocalDate endOfMonth = yearMonth.atEndOfMonth();
        LocalDateTime localDateTime = endOfMonth.atTime(23, 59, 59, 999);
        ZonedDateTime zonedDateTime = localDateTime.atZone(ZoneId.of("Asia/Shanghai"));
        return Date.from(zonedDateTime.toInstant());
    }

    /**
     * 获取当天指定时间
     *
     * @param hour   几点
     * @param minute 分钟
     * @param second 秒
     * @return
     */
    public static Date getTime(Date date, int hour, int minute, int second) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(Calendar.HOUR_OF_DAY, hour);
        calendar.set(Calendar.MINUTE, minute);
        calendar.set(Calendar.SECOND, second);
        return calendar.getTime();
    }

    public static String getTimeString(Date date) {
        SimpleDateFormat dateFormat = new SimpleDateFormat(YYYY_MM_DD_HH_MM_SS);
        return dateFormat.format(date);
    }

    public static String getDateString(Date date, String patterm) {
        SimpleDateFormat dateFormat = new SimpleDateFormat(patterm);
        return dateFormat.format(date);
    }

    public static String getDateString(Date date) {
        return getDateString(date, YYYY_MM_DD);
    }

    /**
     * 获取当前Date型日期
     * 
     * @return Date() 当前日期
     */
    public static Date getNowDate()
    {
        return new Date();
    }

    /**
     * 获取当前日期, 默认格式为yyyy-MM-dd
     * 
     * @return String
     */
    public static String getDate()
    {
        return dateTimeNow(YYYY_MM_DD);
    }

    public static final String getTime()
    {
        return dateTimeNow(YYYY_MM_DD_HH_MM_SS);
    }

    public static final String dateTimeNow()
    {
        return dateTimeNow(YYYYMMDDHHMMSS);
    }

    public static final String dateTimeNow(final String format)
    {
        return parseDateToStr(format, new Date());
    }

    public static final String dateTime(final Date date)
    {
        return parseDateToStr(YYYY_MM_DD, date);
    }

    public static final String parseDateToStr(final String format, final Date date)
    {
        return new SimpleDateFormat(format).format(date);
    }

    public static final Date dateTime(final String format, final String ts)
    {
        try
        {
            return new SimpleDateFormat(format).parse(ts);
        }
        catch (ParseException e)
        {
            throw new RuntimeException(e);
        }
    }

    /**
     * 日期路径 即年/月/日 如2018/08/08
     */
    public static final String datePath()
    {
        Date now = new Date();
        return DateFormatUtils.format(now, "yyyy/MM/dd");
    }

    /**
     * 日期路径 即年/月/日 如20180808
     */
    public static final String dateTime()
    {
        Date now = new Date();
        return DateFormatUtils.format(now, "yyyyMMdd");
    }

    /**
     * 日期型字符串转化为日期 格式
     */
    public static Date parseDate(Object str)
    {
        if (str == null)
        {
            return null;
        }
        try
        {
            return parseDate(str.toString(), parsePatterns);
        }
        catch (ParseException e)
        {
            return null;
        }
    }

    /**
     * 获取服务器启动时间
     */
    public static Date getServerStartDate()
    {
        long time = ManagementFactory.getRuntimeMXBean().getStartTime();
        return new Date(time);
    }

    /**
     * 计算相差天数
     */
    public static int differentDaysByMillisecond(Date date1, Date date2)
    {
        return Math.abs((int) ((date2.getTime() - date1.getTime()) / (1000 * 3600 * 24)));
    }

    /**
     * 计算时间差
     *
     * @param endDate 最后时间
     * @param startTime 开始时间
     * @return 时间差（天/小时/分钟）
     */
    public static String timeDistance(Date endDate, Date startTime)
    {
        long nd = 1000 * 24 * 60 * 60;
        long nh = 1000 * 60 * 60;
        long nm = 1000 * 60;
        // long ns = 1000;
        // 获得两个时间的毫秒时间差异
        long diff = endDate.getTime() - startTime.getTime();
        // 计算差多少天
        long day = diff / nd;
        // 计算差多少小时
        long hour = diff % nd / nh;
        // 计算差多少分钟
        long min = diff % nd % nh / nm;
        // 计算差多少秒//输出结果
        // long sec = diff % nd % nh % nm / ns;
        return day + "天" + hour + "小时" + min + "分钟";
    }

    /**
     * 增加 LocalDateTime ==> Date
     */
    public static Date toDate(LocalDateTime temporalAccessor)
    {
        ZonedDateTime zdt = temporalAccessor.atZone(ZoneId.systemDefault());
        return Date.from(zdt.toInstant());
    }

    /**
     * 增加 LocalDate ==> Date
     */
    public static Date toDate(LocalDate temporalAccessor)
    {
        LocalDateTime localDateTime = LocalDateTime.of(temporalAccessor, LocalTime.of(0, 0, 0));
        ZonedDateTime zdt = localDateTime.atZone(ZoneId.systemDefault());
        return Date.from(zdt.toInstant());
    }
}
