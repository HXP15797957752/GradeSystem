package com.bluedot.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bluedot.po.Cadre;
import com.bluedot.po.Department;
import com.bluedot.po.User;
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
    @RequestMapping("/showdepartmentbyname")
    @ResponseBody
    public List<Department> loadDepartmentByName(HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<Department> departmentList = null;
        if(null!=user) {
            departmentList = qualitativeService.loadDepartmentByName(user.getUserName());
        }
        return departmentList;
    }
    
    /*
     * 加载前端页面select的option选项即被考核的单位
     * */
    @RequestMapping("/showdepartment")
    @ResponseBody
    public List<Department> loadDepartment(HttpSession session) {
        List<Department> departmentList = null;
        departmentList = qualitativeService.loadDepartment();
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
    
    /*
     * 删除干部信息
     * */
    @RequestMapping("/deletecadrebyid")
    @ResponseBody
    public void  deleteCadre(@RequestParam("cadreID")int cadreID) {
        qualitativeService.deleteCadreByID(cadreID);
         
    }
    
    /*
     * 查询干部信息
     * */
    @RequestMapping("/getcadrebyid")
    @ResponseBody
    public Cadre  getCadreByID(@RequestParam("cadreID")int cadreID) {
        Cadre cadre = qualitativeService.getCadreById(cadreID);
        return cadre;
    }
    
    /*
     * 更新干部信息
     * */
    @RequestMapping("/updatecadre")
    @ResponseBody
    public void  updateCadre(HttpServletRequest request) {
        Integer cadreID = Integer.valueOf(request.getParameter("cadreID"));
        Integer salaryID = Integer.valueOf(request.getParameter("salaryID"));
        String cadreName = request.getParameter("cadreName");
        String position = request.getParameter("position");
        Integer rank = Integer.valueOf(request.getParameter("rank"));
        String departmentName = request.getParameter("departmentName");
        Department department = qualitativeService.queryDepartmentByName(departmentName);
        if(null==department) {
            return;
        }
        Cadre cadre = new Cadre(cadreID,salaryID,cadreName,position,rank);
        cadre.setDepartmentId(department.getDepartmentId());
        cadre.setOfDepartment(department);
        System.out.println(cadre);
        qualitativeService.updateCadre(cadre);
        
    }
    
}


