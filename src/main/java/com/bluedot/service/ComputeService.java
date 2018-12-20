package com.bluedot.service;

import java.util.List;

import com.bluedot.po.GradeCadreView;
import com.bluedot.po.GradeDepartmentView;
import com.bluedot.po.GradeSubCadreView;

/**
 * 计算service接口类
 * @author hxp
 * 2018年12月10日 下午7:16:20
 */
public interface ComputeService {

    List<GradeDepartmentView> loadTeachYearScore(Integer trueYear);

    List<GradeDepartmentView> loadManageYearScore(Integer trueYear);

    List<GradeCadreView> loadCadreYearScore(Integer trueYear);

    List<GradeSubCadreView> loadSubCadreYearScore(Integer trueYear);

  
}
