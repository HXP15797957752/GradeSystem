package com.bluedot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluedot.dao.QualitativeDao;
import com.bluedot.po.Cadre;
import com.bluedot.po.Department;
import com.bluedot.service.QualitativeService;
/**
 * 定性评分service实现类
 * @author hxp
 * 2018年12月2日 下午7:54:22
 */
@Service("qualitativeService")
public class QualitativeServiceImpl implements QualitativeService {
    @Autowired
    private QualitativeDao qualitativeDao;
    /*
     * 查询所有正职干部信息
     * */
    @Override
    public List<Cadre> loadAllPlusCadre(Integer rank) {
        List<Cadre> cadreList = qualitativeDao.queryAllPlusCadre(rank);
        return cadreList;
    }
    
    /*
     * 通过部门查干部信息
     * */
    @Override
    public List<Cadre> loadCadre(int ofDepartment) {
        List<Cadre> cadreList = qualitativeDao.queryCadreByDepartment(ofDepartment);
        return cadreList;
    }

    @Override
    public List<Department> loadDepartment(String userName) {
        List<Department> departmentList  = qualitativeDao.queryDepartmentByUserName(userName);
        return departmentList;
    }

    @Override
    public List<Department> loadDepartmentByType(int type) {
        List<Department> departmentList  = qualitativeDao.queryDepartmentByType(type);
        return departmentList;
    }
    
}
