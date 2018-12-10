package com.bluedot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bluedot.po.Cadre;
import com.bluedot.po.Department;
import com.bluedot.service.QualitativeService;

/**
 * 定性评分加载数据
 * @author hxp
 * 2018年11月29日 下午9:51:44
 */
@Controller
@RequestMapping("/schoolgrade")
public class QualitativeController {
    @Autowired
    private  QualitativeService qualitativeService;    
    
    /*
     * 加载前端页面所选单位对应的处级干部正职
     * */
    @RequestMapping("/showpluscadre")
    @ResponseBody
    public List loadPlusCadre(@RequestParam(value="rank") Integer rank) {
        List<Cadre> cadreList  = qualitativeService.loadAllPlusCadre(rank);        
        return cadreList;
    }
    
    /*
     * 加载前端页面所选单位对应的处级干部正职
     * */
    @RequestMapping("/showcadre")
    @ResponseBody
    public List loadCadre(@RequestParam(value="ofDepartment") int ofDepartment) {
        List<Cadre> cadreList  = qualitativeService.loadCadre(ofDepartment);        
        return cadreList;
    }
    /*
     * 加载前端页面select的option选项即被考核的单位
     * */
    @RequestMapping("/showdepartment")
    @ResponseBody
    public List<Department> loadDepartment() {
        List<Department> departmentList = qualitativeService.loadDepartment();
        return departmentList;
    }
    
    /*
     * 加载学校民主测评页面对应类型的被考核单位
     * */
    @RequestMapping("/showdepartmentbytype")
    @ResponseBody
    public List<Department> loadDepartmentByType(@RequestParam("type")int type) {
        List<Department> departmentList = qualitativeService.loadDepartmentByType(type);
        return departmentList;
    }
    
}


