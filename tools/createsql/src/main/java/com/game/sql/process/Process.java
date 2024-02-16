package com.game.sql.process;


import com.game.sql.model.SqlModule;

/**
 * @Author: liulongling
 * @Date: 2021/7/24 17:33
 */
public interface Process {
    SqlModule process() throws Exception;
}
