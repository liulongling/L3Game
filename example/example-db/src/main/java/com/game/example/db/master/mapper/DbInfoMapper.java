package com.game.example.db.master.mapper;



import com.game.example.db.master.domain.DbInfo;

import java.util.List;

/**
 * 数据库信息Mapper接口
 *
 * @author liulongling
 * @date 2024-02-17
 */
public interface DbInfoMapper
{
    /**
     * 查询数据库信息
     *
     * @param id 数据库信息主键
     * @return 数据库信息
     */
    public DbInfo selectDbInfoById(Long id);

    /**
     * 查询数据库信息列表
     *
     * @param dbInfo 数据库信息
     * @return 数据库信息集合
     */
    public List<DbInfo> selectDbInfoList(DbInfo dbInfo);

    /**
     * 新增数据库信息
     *
     * @param dbInfo 数据库信息
     * @return 结果
     */
    public int insertDbInfo(DbInfo dbInfo);

    /**
     * 修改数据库信息
     *
     * @param dbInfo 数据库信息
     * @return 结果
     */
    public int updateDbInfo(DbInfo dbInfo);

    /**
     * 删除数据库信息
     *
     * @param id 数据库信息主键
     * @return 结果
     */
    public int deleteDbInfoById(Long id);

    /**
     * 批量删除数据库信息
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDbInfoByIds(String[] ids);
}
