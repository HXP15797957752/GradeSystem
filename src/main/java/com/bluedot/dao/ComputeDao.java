package com.bluedot.dao;

import java.util.List;

import com.bluedot.po.CadreYearScoreRecord;
import com.bluedot.po.DepartmentYearScoreRecord;

/**
 * 计算总分Dao接口
 * @author hxp
 * 2018年12月10日 下午7:18:18
 */
public interface ComputeDao {
    //保存单位年度记录到数据库
    public int saveDepartmentYearScoreRecord(DepartmentYearScoreRecord departmentYearScoreRecord);
    //保存干部年度记录到数据库
    public int saveCadreYearScoreRecord(CadreYearScoreRecord cadreYearScoreRecord);
    //根据年份查询单位年度评分记录
    public  List<DepartmentYearScoreRecord> queryDepartmentYearScoreRecord(Integer year);
    //根据年份查询干部年度评分记录
    public List<CadreYearScoreRecord> queryCadreYearScoreRecord(Integer year);
    //根据单位ID 年份 查询单位年度评分记录
    public DepartmentYearScoreRecord queryDepartmentYearScoreRecordByIDAndYear(DepartmentYearScoreRecord departmentYearScoreRecord);
    //根据干部ID 年份查询干部年度评分记录
    public CadreYearScoreRecord queryCadreYearScoreRecordByIDAndYear(CadreYearScoreRecord cadreYearScoreRecord);
}
