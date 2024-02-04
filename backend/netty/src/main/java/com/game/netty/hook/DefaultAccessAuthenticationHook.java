package com.game.netty.hook;

import com.game.common.core.CmdKit;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;
import org.jctools.maps.NonBlockingHashSet;

import java.util.Set;

/**
 * @author liulongling
 * @date 2023-02-19
 */
@Getter
@FieldDefaults(level = AccessLevel.PRIVATE)
public class DefaultAccessAuthenticationHook implements AccessAuthenticationHook {
    /**
     * 需要忽略的路由，可以添加到这 set 中
     */
    final Set<Integer> cmdMergeSet = new NonBlockingHashSet<>();
    /**
     * 需要忽略的主路由，可以添加到这 set 中
     */
    final Set<Integer> cmdSet = new NonBlockingHashSet<>();

    /**
     * 需要拒绝的路由
     */
    final Set<Integer> rejectionCmdMergeSet = new NonBlockingHashSet<>();
    /**
     * 需要拒绝的主路由
     */
    final Set<Integer> rejectionCmdSet = new NonBlockingHashSet<>();

    /**
     * true 表示请求业务方法需要先登录，默认不需要登录
     */
    @Setter
    boolean verifyIdentity;

    @Override
    public void removeIgnoreAuthCmd(int cmd, int subCmd) {
        int cmdMerge = CmdKit.merge(cmd, subCmd);
        this.cmdMergeSet.remove(cmdMerge);
    }

    @Override
    public void removeIgnoreAuthCmd(int cmd) {
        this.cmdSet.remove(cmd);
    }

    @Override
    public boolean pass(boolean loginSuccess, int cmdMerge) {

        if (!this.verifyIdentity) {
            // 表示不需要登录，就可以访问所有的业务方法（action）
            return true;
        }

        // 已经【登录】的玩家，可以直接访问业务方法
        return loginSuccess
                // 在忽略的【路由】范围内的，可以直接访问业务方法（不需要登录）
                || this.cmdMergeSet.contains(cmdMerge)
                // 在忽略的【主路由】范围内的，可以直接访问业务方法（不需要登录）
                || this.cmdSet.contains(CmdKit.getCmd(cmdMerge));
    }

    @Override
    public void addRejectionCmd(int cmd) {
        this.rejectionCmdSet.add(cmd);
    }

    @Override
    public void addRejectionCmd(int cmd, int subCmd) {
        int cmdMerge = CmdKit.merge(cmd, subCmd);
        this.rejectionCmdMergeSet.add(cmdMerge);
    }

    @Override
    public void removeRejectCmd(int cmd, int subCmd) {
        int cmdMerge = CmdKit.merge(cmd, subCmd);
        this.rejectionCmdMergeSet.remove(cmdMerge);
    }

    @Override
    public void removeRejectCmd(int cmd) {
        this.rejectionCmdSet.remove(cmd);
    }

    @Override
    public boolean reject(int cmdMerge) {
        // 在拒绝访问的【路由】范围内的，不能直接访问业务方法
        return this.rejectionCmdMergeSet.contains(cmdMerge)
                // 在拒绝访问的【主路由】范围内的，不能直接访问业务方法
                || this.rejectionCmdSet.contains(CmdKit.getCmd(cmdMerge));
    }

    @Override
    public void clear() {
        this.cmdSet.clear();
        this.cmdMergeSet.clear();
        this.rejectionCmdSet.clear();
        this.rejectionCmdMergeSet.clear();
    }
}
