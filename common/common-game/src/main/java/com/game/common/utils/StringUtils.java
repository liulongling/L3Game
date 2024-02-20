package com.game.common.utils;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.*;
import java.util.function.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

import static java.nio.charset.StandardCharsets.UTF_8;

/**
 * @author: liulongling
 * @date: 2024/2/20
 */
public class StringUtils {

    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static String removeEnd(String str, String remove) {
        if (!isEmpty(str) && !isEmpty(remove)) {
            return str.endsWith(remove) ? str.substring(0, str.length() - remove.length()) : str;
        } else {
            return str;
        }
    }

    /**
     * 截取字符左边
     *
     * @param str  被截取的字符串
     * @param size 截取字符串的最大长度
     * @return 返回被截取的字符，最大不超过指定长度
     */
    public static String left(String str, int size) {
        if (str == null || size <= 0) {
            return "";
        }
        if (size > str.length()) {
            size = str.length();
        }
        return str.substring(0, size);
    }

    /**
     * 截取字符右边
     *
     * @param str  被截取的字符串
     * @param size 截取字符串的最大长度
     * @return 返回被截取的字符，最大不超过指定长度
     */
    public static String right(String str, int size) {
        if (str == null || size <= 0) {
            return "";
        }
        int start = str.length() - size;
        if (start < 0) {
            start = 0;
            size = str.length();
        }
        return str.substring(start, str.length());
    }

    /**
     * 判断字符串<br/>
     *
     * @param str
     * @return 如果字符串为null或者为空串或者全部为空格组成则返回true反之则返回false;<br/>
     */
    public static boolean isNullOrEmpty(String str) {
        return str == null || str.isEmpty() || str.trim().isEmpty();
    }

    public static boolean equalsIgnoreCase(String str1, String str2) {
        if (str1 == null && str2 == null) {
            return true;
        } else if (str1 != null && str2 != null) {
            return str1.equalsIgnoreCase(str2);
        } else if (isNullOrEmpty(str1) && isNullOrEmpty(str2)) {
            return true;
        }
        return false;
    }

    /**
     * 如果数组中有任意元素为空 则为true
     *
     * @param str
     * @return
     */
    public static boolean isNullOrEmpty(String... str) {
        for (String tmp : str) {
            if (isNullOrEmpty(tmp)) {
                return true;
            }
        }
        return false;
    }

    /**
     * 检查参数是否存在
     *
     * @param parameters
     * @param para
     * @return
     */
    public static boolean checkParameters(Map<String, Object> parameters,
                                          String... para) {
        for (String str : para) {
            if (!parameters.containsKey(str)) {
                return false;
            }
        }
        return true;
    }

    public static boolean parseBoolean(String str) {
        if (isNullOrEmpty(str)) {
            return false;
        }
        if (Boolean.parseBoolean(str) || str.equals("1")) {
            return true;
        }
        return false;
    }

    /**
     * 如果str为null 则转换成空串,否则原样输出
     *
     * @param str
     * @return
     */
    public static String null2Empty(String str) {
        if (isNullOrEmpty(str)) {
            return "";
        }
        return str;
    }

    /**
     * 验证邮箱
     *
     * @param str 待验证的字符串
     * @return 如果是符合邮箱格式的字符串, 返回<b>true</b>,否则为<b>false</b>
     */
    public static boolean email(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        String regex = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(str);
        return matcher.matches();
    }

    /**
     * 判断字符串的长度是否大于0
     *
     * @param str
     * @return
     */
    public static boolean hasLength(String str) {
        return hasLength((CharSequence) str);
    }

    /**
     * 判断字符串的长度是否大于0
     *
     * @param str
     * @return
     */
    public static boolean hasLength(CharSequence str) {
        return (str != null && str.length() > 0);
    }

    /**
     * 把字符串以“|”分割成多个数值
     *
     * @param idStr
     * @return
     */
    public static List<Integer> strToIntConvert(String idStr) {
        if (idStr == null) {
            return null;
        }

        String[] idStrArr = idStr.split("\\|");
        if (idStrArr.length > 0) {
            List<Integer> idList = new ArrayList<Integer>();
            for (int i = 0; i < idStrArr.length; i++) {
                idList.add(Integer.parseInt(idStrArr[i]));
            }
            return idList;
        }
        return null;
    }

    /**
     * 过滤特殊字符
     *
     * @param str
     * @return
     * @throws PatternSyntaxException
     */
    public static String StringFilter(String str) throws PatternSyntaxException {
        // 清除掉所有特殊字符
        String regEx = "[`~!@$%^*()+=|{}':;',//[//].<>/?~！￥%……*（）——+|{}【】‘；：”“’。，、？《》]";
        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(str);
        return m.replaceAll("").trim();
    }


    /**
     * 获取替换掉屏蔽字的字符串（屏蔽字用*代替，不可屏蔽*）
     * 用于聊天
     *
     * @param str 要替换的字符串
     * @return 替换好的字符串
     */
    public static String getReplaceBanLanguage(String str, Map<String, String> map) {
        int cn = 0;
        StringBuffer sb = null;
        String newStr = StringFilter(str).trim();
        for (String key : map.keySet()) {
            if (newStr.indexOf(key) >= 0) {
                sb = new StringBuffer();
                cn = key.length();
                for (int i = 0; i < cn; i++) {
                    sb.append("*");
                }
                str = newStr.replaceAll(key, sb.toString());
            }
        }
        return str;
    }

    public static String builderParameter(Map<String, Object> maps) {
        StringBuilder builder = new StringBuilder();
        int i = 0;
        for (String key : maps.keySet()) {
            i++;
            builder.append(key);
            builder.append("=");
            builder.append(maps.get(key));
            if (i == maps.size()) {
                builder.append(" and ");
            }
        }
        return builder.toString();
    }

    /**
     * 替换掉字符串中的英文字符
     *
     * @param str
     * @return 返回中文字符
     */
    public static String getCNString(String str) {
        return str.replaceAll("[a-zA-Z]", "");
    }

    /**
     * 换掉字符串中的中文字符
     *
     * @param str
     * @return 返回英文字符
     */
    public static String getEnString(String str) {
        return str.replaceAll("[^a-zA-Z]", "");
    }

    /**
     * 判断字符串中是否包含英文字符
     *
     * @param str
     * @return
     */
    public static boolean containEnglish(String str) {
        Pattern pattern = Pattern.compile("[a-zA-Z]+");
        Matcher matcher = pattern.matcher(str);
        return matcher.find();
    }

    public static String IntArrayToJsonArray(int[] array) {
        StringBuilder stringBuilder = new StringBuilder();
        int maxIndex;
        for (int i = 0; i < array.length; i++) {
            maxIndex = 0;
            for (int j = 0; j < array.length; j++) {
                if (array[j] > array[maxIndex]) {
                    maxIndex = j;
                }
            }
            if (array[maxIndex] > 0) {
                stringBuilder.append(array[maxIndex]).append(",");
                array[maxIndex] = 0;
            }
        }
        return stringBuilder.toString();
    }

    public static int editDistance(String word1, String word2) {
        int n = word1.length();
        int m = word2.length();
        if (n * m == 0) {
            return n + m;
        }
        int[][] dp = new int[n + 1][m + 1];
        for (int i = 0; i < n + 1; i++) {
            dp[i][0] = i;
        }
        for (int j = 0; j < m + 1; j++) {
            dp[0][j] = j;
        }
        for (int i = 1; i < n + 1; i++) {
            for (int j = 1; j < m + 1; j++) {
                int left = dp[i - 1][j] + 1;
                int down = dp[i][j - 1] + 1;
                int left_down = dp[i - 1][j - 1];
                if (word1.charAt(i - 1) != word2.charAt(j - 1)){
                    left_down += 1;
                }
                dp[i][j] = Math.min(left, Math.min(down, left_down));

            }
        }
        return dp[n][m];
    }

    public static int longestCommonString(String wa, String wb) {
        int max = 0;
        int[][] dp = new int[wa.length()][wb.length()];
        if (wa.length() > 0 && wb.length() > 0) {
            max = dp[0][0] = wa.charAt(0) == wb.charAt(0) ? 1 : 0;
        }
        for (int i = 1; i < wa.length(); i += 1) {
            for (int j = 1; j < wb.length(); j += 1) {
                dp[i][j] = wa.charAt(i - 1) == wb.charAt(j - 1) ? dp[i - 1][j - 1] + 1 : 0;
                max = Math.max(max, dp[i][j]);
            }
        }
        return max;
    }

    public static int tryParseInt(String s, int def) {
        try {
            def = Integer.parseInt(s);
        } catch (Exception ignored) {

        }
        return def;
    }

    public static String clearByToken(String word, Function<Character, Boolean> tokenStart, Function<Character, Boolean> tokenEnd) {
        Queue<Character> characters = new LinkedList<>();
        for (char chars : word.toCharArray()) {
            characters.add(chars);
        }
        StringBuilder stringBuilder = new StringBuilder(word.length());
        boolean ignore = false;
        while (!characters.isEmpty()) {
            Character character = characters.poll();
            if (tokenStart.apply(character)) {
                ignore = true;
                continue;
            } else if (tokenEnd.apply(character)) {
                ignore = false;
                continue;
            }
            if (!ignore) {
                stringBuilder.append(character);
            }
        }
        return stringBuilder.toString();
    }

    public static Map<String, String> argsToMap(String[] args) {
        Map<String, String> map = new HashMap<>(args.length);
        for (String arg : args) {
            map.put(arg.split("=")[0], arg.split("=")[1]);
        }
        return map;
    }

    public static double tryParseDouble(String s, double def) {
        try {
            def = Double.parseDouble(s);
        } catch (Exception ignored) {

        }
        return def;
    }

    public static float tryParseFloat(String s, float def) {
        try {
            def = Float.parseFloat(s);
        } catch (Exception ignored) {

        }
        return def;
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
