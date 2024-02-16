package com.game.sql.utils;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

/**
 * @Author: liulongling
 * @Date: 2021/7/15 15:41
 */
public class AccessFileUtils {
    public static final Charset DEFAULT_CHARSET = StandardCharsets.UTF_8;

    /**
     * 创建新的文件夹
     *
     * @param newdir
     */
    public static void createNewdir(String newdir) {
        File file = new File(newdir);
        if (!file.exists()) {
            file.mkdir();
        }
    }

    /**
     * 创建新的文件
     *
     * @param newFile
     * @return
     */
    public static File createNewFile(String newFile) {
        File file = new File(newFile);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return file;
    }

    /**
     * 拷贝文件
     *
     * @param source 源文件
     * @param dest   目标文件
     * @throws IOException
     */
    public static void copyFileUsingJava7Files(File source, File dest)
            throws IOException {
        Files.copy(source.toPath(), dest.toPath());
    }
}
