package com.game.netty.session;

import com.game.common.kit.attr.AttrOptions;
import com.game.framework.cmd.CmdRegions;
import com.game.framework.message.HeadMetadata;
import com.game.framework.message.RequestMessage;
import io.netty.channel.Channel;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;
import org.jctools.maps.NonBlockingHashSet;

import java.util.Objects;

/**
 * @author liulongling
 * @date 2023-05-28
 */
@Getter
@FieldDefaults(level = AccessLevel.PROTECTED)
public abstract class AbstractUserSession implements UserSession {
    final AttrOptions options = new AttrOptions();
    Channel channel;
    /** 玩家 id */
    long userId;
    UserChannelId userChannelId;
    public CmdRegions cmdRegions;
    /** 状态 */
    @Setter
    UserSessionState state = UserSessionState.ACTIVE;

    public AbstractUserSession() {
        // false 没有进行身份验证
        this.option(UserSessionOption.verifyIdentity, false);

        // 玩家绑定的多个游戏逻辑服记录
        this.option(UserSessionOption.bindingLogicServerIdSet, new NonBlockingHashSet<>());
    }

    @Override
    public void employ(RequestMessage requestMessage) {
        HeadMetadata headMetadata = requestMessage.getHeadMetadata();
        // 设置请求用户的id
        headMetadata.setUserId(this.userId);


        if (!this.isVerifyIdentity()) {
            // 只有没进行验证的，才给 userChannelId
            String channelId = this.userChannelId.channelId();
            // 一般指用户的 channelId （来源于对外服的 channel 长连接）
            headMetadata.setChannelId(channelId);
        }

        // 设置用户绑定的游戏逻辑服 id
        this.ifPresent(UserSessionOption.bindingLogicServerIdArray, headMetadata::setBindingLogicServerIds);

        // 如果 headMetadata 的 attachmentData 不为 null，通常是开发者在其他地方给 attachmentData 设置了值，框架就不管了。
        if (Objects.isNull(headMetadata.getAttachmentData())) {
            // 将 UserSession attachment 的值设置到 HeadMetadata attachmentData 中
            this.ifPresent(UserSessionOption.attachment, headMetadata::setAttachmentData);
        }
    }

    @Override
    public void setUserId(long userId) {
        this.userId = userId;
        this.option(UserSessionOption.verifyIdentity, true);
    }

    @Override
    public boolean isVerifyIdentity() {
        return this.optionValue(UserSessionOption.verifyIdentity, false);
    }

    @Override
    public boolean isActive() {
        return true;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }

        if (!(o instanceof AbstractUserSession that)) {
            return false;
        }

        return Objects.equals(userChannelId, that.userChannelId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userChannelId);
    }
}
