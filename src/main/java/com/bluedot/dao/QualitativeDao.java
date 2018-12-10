package com.bluedot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bluedot.po.Cadre;
import com.bluedot.po.Department;

/**
 * 定性评分Dao接口
 * @author hxp
 * 2018年12月2日 下午7:57:27
 */
public interface QualitativeDao {
    public List<Cadre> queryCadreByDepartment(@Param("ofDepartment")int ofDepartment);

    public List<Department> queryDepartment();
    
    public Department getDepartmentById(Integer id);


    public List<Cadre> queryAllPlusCadre(Integer rank);

    public Cadre getCadreById(Integer id);

    public List<Department> queryDepartmentByType(int type);
}
