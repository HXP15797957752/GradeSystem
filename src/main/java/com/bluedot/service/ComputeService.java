package com.bluedot.service;

import java.util.List;

import com.bluedot.po.GradeDepartmentView;

/**
 * 计算service接口类
 * @author hxp
 * 2018年12月10日 下午7:16:20
 */
public interface ComputeService {

    List<GradeDepartmentView> loadTeachYearScore();

    List<GradeDepartmentView> loadManageYearScore();

  
}
