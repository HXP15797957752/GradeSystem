package com.bluedot.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    public List<GradeDepartmentView> loadTeachYearScore(@RequestParam("year")Integer year){
        List<GradeDepartmentView> viewList = null;
        Integer trueYear = (year==null?LocalDate.now().getYear():year);
            viewList = computeService.loadTeachYearScore(trueYear);
        return viewList;
    }
    /*
     * 显示管理单位年度总评分
     * */
    @RequestMapping("/loadmanage")
    @ResponseBody
    public List<GradeDepartmentView> loadManageYearScore(@RequestParam("year")Integer year){
        Integer trueYear = (year==null?LocalDate.now().getYear():year);
        List<GradeDepartmentView> viewList = computeService.loadManageYearScore(trueYear);
        return viewList;
    }
    
    /*
     * 显示正职年度总分
     * */
    @RequestMapping("/loadcadre")
    @ResponseBody
    public List<GradeCadreView> loadCadreYearSocre(@RequestParam("year")Integer year){
        Integer trueYear = (year==null?LocalDate.now().getYear():year);
        List<GradeCadreView>  viewList =computeService.loadCadreYearScore(trueYear);
        return viewList;
    }
    /*
     * 显示副职年度总分
     * */
    @RequestMapping("/loadsubcadre")
    @ResponseBody
    public List<GradeSubCadreView> loadSubCadreYearScore(@RequestParam("year")Integer year){
        Integer trueYear = (year==null?LocalDate.now().getYear():year);
        List<GradeSubCadreView> viewList = computeService.loadSubCadreYearScore(trueYear);
        return viewList;
    }
}
