package com.game.framework.message;



import com.game.framework.kit.DataCodecKit;

import java.io.Serial;


public final class ResponseMessage extends BarMessage {
    @Serial
    private static final long serialVersionUID = 2501490581523234975L;

    public <T> T getData(Class<T> clazz) {
        return DataCodecKit.decode(this.data, clazz);
    }
}