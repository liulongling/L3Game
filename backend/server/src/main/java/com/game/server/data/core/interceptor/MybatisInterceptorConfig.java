package com.game.server.data.core.interceptor;

import lombok.Getter;
import lombok.Setter;

/**
 * mybatis拦截器配置
 *
 * @Author:liulongling
 * @Date:2022/3/8 13:51
 */

@Getter
@Setter
public class MybatisInterceptorConfig {
    private String modelName;
    private String attrName;
    private String attrNameForList;
    private String interceptorClass;
    private String interceptorMethod;
    private String undoClass;
    private String undoMethod;


    public MybatisInterceptorConfig(Class<?> modelClass, String attrName, Class<?> interceptorClass, String interceptorMethod, String undoMethod) {
        this.modelName = modelClass.getName();
        this.attrName = attrName;
        this.interceptorClass = interceptorClass.getName();
        this.interceptorMethod = interceptorMethod;
        this.undoClass = interceptorClass.getName();
        this.undoMethod = undoMethod;
    }

}
