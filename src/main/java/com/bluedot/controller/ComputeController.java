package com.bluedot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bluedot.po.GradeCadreView;
import com.bluedot.po.GradeDepartmentView;
import com.bluedot.po.GradeSubCadreView;
import com.bluedot.service.ComputeService;

/**
 * 计算总分控制类
 * @author hxp
 * 2018年12月10日 下午7:15:30
 */  
@Controller
@RequestMapping("/yearscore") 
public class ComputeController {
    @Autowired
    private ComputeService computeService;
    /*
     * 显示教学单位年度总评分
     * */
    @RequestMapping("/loadteach")
    @ResponseBody
    public List<GradeDepartmentView> loadTeachYearScore(){
        List<GradeDepartmentView> viewList = computeService.loadTeachYearScore();
        return viewList;
    }
    /*
     * 显示管理单位年度总评分
     * */
    @RequestMapping("/loadmanage")
    @ResponseBody
    public List<GradeDepartmentView> loadManageYearScore(){
        List<GradeDepartmentView> viewList = computeService.loadManageYearScore();
        return viewList;
    }
    
    /*
     * 显示正职年度总分
     * */
    @RequestMapping("/loadcadre")
    @ResponseBody
    public List<GradeCadreView> loadCadreYearSocre(){
        List<GradeCadreView>  viewList =computeService.loadCadreYearScore();
        return viewList;
    }
    /*
     * 显示副职年度总分
     * */
    @RequestMapping("/loadsubcadre")
    @ResponseBody
    public List<GradeSubCadreView> loadSubCadreYearScore(){
        List<GradeSubCadreView> viewList = computeService.loadSubCadreYearScore();
        return viewList;
    }
}
