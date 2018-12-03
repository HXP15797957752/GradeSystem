package com.bluedot.dao;

import java.util.List;

import com.bluedot.po.Cadre;

/**
 * 定性评分Dao接口
 * @author hxp
 * 2018年12月2日 下午7:57:27
 */
public interface QualitativeDao {
    public List<Cadre> queryCadreByDepartment();
}
