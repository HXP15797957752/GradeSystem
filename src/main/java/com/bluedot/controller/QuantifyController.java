package com.bluedot.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bluedot.po.AddOptions;
import com.bluedot.po.Department;
import com.bluedot.po.Option;
import com.bluedot.po.Quantify;
import com.bluedot.po.QuantifyYearGrade;
import com.bluedot.po.User;
import com.bluedot.service.DepartmentService;
import com.bluedot.service.OptionService;
import com.bluedot.service.QuantifyService;
import com.bluedot.service.QuantifyYearGradeService;
import com.bluedot.service.UserService;



/**
 * @author : 游斌平
 *
 */
@Controller
@RequestMapping("/quantify")
public class QuantifyController {
	
	@Autowired
	private QuantifyService quantifyService;
	@Autowired
	private OptionService optionService;
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private UserService userService;
	@Autowired
	private QuantifyYearGradeService quantifyYearGradeService;
	/**
	 * 定量模块index
	 */
	@RequestMapping("/quantifyIndex")
	public String QuantifyIndex(HttpServletRequest request) {
		List<Option> options = optionService.searchAllOption();
		List<Option> manageOptions = optionService.searchManageOption();
		List<Option> teacherOptions = optionService.searchTeacherOption();
		List<Department> manageDepartment = departmentService.searchManageDepartment();
		List<Department> teacherDepartment = departmentService.searchTeacherDepartment();
		request.setAttribute("options", options);
		request.setAttribute("manageOptions", manageOptions);
		request.setAttribute("teacherOptions", teacherOptions);
		request.setAttribute("manageDepartments", manageDepartment);
		request.setAttribute("teacherDepartments", teacherDepartment);
		return "admin/set-score-scale";
	}
	@RequestMapping("/quantifyInit")
	public String QuantifyInit(HttpServletRequest request) {
		List<QuantifyYearGrade> quantifyYearGrades = quantifyYearGradeService.searchQuantifyYearGrade();
		request.setAttribute("quantifyYears", quantifyYearGrades);
		return "admin/quantify-init";
	}
	@RequestMapping("/searchYearGrade")
	public String SearchYearGrade(HttpServletRequest request, Integer year ) {
		List<QuantifyYearGrade> quantifyYearGrades = quantifyYearGradeService.searchYearGrade(year);
		request.setAttribute("quantifyYears", quantifyYearGrades);
		request.setAttribute("year", year);
		return "admin/quantify-year";
	}
	@RequestMapping("/quantifySetting")
	public String QunatifySetting(HttpServletRequest request) {
		quantifyYearGradeService.saveYearGrade();
		return "admin/index";
	}
	@RequestMapping("/initYear")
	public String InitYear(HttpServletRequest request) {
		quantifyService.initYear();
		return "admin/index";
	}
	@RequestMapping("/groupUser")
	public String GroupUser(HttpServletRequest request) {
		List<Department> manageDepartment = departmentService.searchManageDepartment();
		List<Department> teacherDepartment = departmentService.searchTeacherDepartment();
		List<User> user = userService.getGroupUser();
		request.setAttribute("users", user);
		request.setAttribute("manageDepartments", manageDepartment);
		request.setAttribute("teacherDepartments", teacherDepartment);
		return "admin/group-department";
	}
	@RequestMapping("/quantifyUpdate")
	public String QuantifyUpdate(HttpServletRequest request) {
		List<Option> Toptions = optionService.searchOption(1);
		List<Department> Tdepartments = departmentService.searchTeacherDepartment();
		List<Option> Moptions = optionService.searchOption(2);
		List<Department> Mdepartments = departmentService.searchManageDepartment();
		request.setAttribute("Toptions", Toptions);
		request.setAttribute("Tdepartments", Tdepartments);
		request.setAttribute("Moptions", Moptions);
		request.setAttribute("Mdepartments", Mdepartments);
		return "admin/set-score-scale1";
	}
	@RequestMapping("/teacherUnit")
	public String TeacherUnit(HttpServletRequest request) {
		Integer year = Calendar.getInstance().get(Calendar.YEAR);
		List<Option> Toptions = optionService.searchOption(1);
		List<Department> Tdepartments = departmentService.searchTeacherDepartment();
		List<List<Quantify>> lists = new ArrayList<>();
		List<Double> listSum = new ArrayList<>();
		quantifyService.searchAllQuantify(1,lists,listSum,year);
		request.setAttribute("lists", lists);
		request.setAttribute("listSum", listSum);
		request.setAttribute("Toptions", Toptions);
		request.setAttribute("Tdepartments", Tdepartments);
		request.setAttribute("year", year);
		return "admin/teach-unitShow";
	}
	@RequestMapping("/managerUnit")
	public String ManagerUnit(HttpServletRequest request) {
		Integer year = Calendar.getInstance().get(Calendar.YEAR);
		List<Option> Moptions = optionService.searchOption(2);
		List<Department> Mdepartments = departmentService.searchManageDepartment();
		List<List<Quantify>> lists = new ArrayList<>();
		List<Double> listSum = new ArrayList<>();
		quantifyService.searchAllQuantify(2,lists,listSum,year);
		request.setAttribute("lists", lists);
		request.setAttribute("listSum", listSum);
		request.setAttribute("Moptions", Moptions);
		request.setAttribute("Mdepartments", Mdepartments);
		request.setAttribute("year", year);
		return "admin/manage-unitShow";
	}
	@RequestMapping("/addOneProportion")
	public String AddOneProportion(HttpServletRequest request,Integer departmentId, Double [] proportions, Integer type) {
		quantifyService.addOneProportion(departmentId, proportions, type);
		return "admin/index";
	}
	@RequestMapping("/addOneGrade")
	public String AddOneGrade(HttpServletRequest request,Integer departmentId, Double [] grades, Integer type) {
		quantifyService.addOneGrade(departmentId, grades, type);
		return "admin/index";
	}
	
	@RequestMapping("/quantifyProportion")
	public String QuantifyProportion(HttpServletRequest request,Integer [] departmentId, Double [] proportions,Integer type) {
		quantifyService.addQuantifyProportion(departmentId,proportions,type);
		return "admin/index";
	}
	@RequestMapping("/quantifyGrade")
	public String QuantifyGrade(HttpServletRequest request,Integer [] departmentId, Double [] grades,Integer type) {
		quantifyService.addQuantifyGrade(departmentId,grades,type);
		return "admin/index";
	}
	@RequestMapping("/managerUintGrade")
	public String ManagerUnitGrade(HttpServletRequest request) {
		List<Option> options = optionService.searchOption(2);
		List<Department> departments = departmentService.searchManageDepartment();
		request.setAttribute("options", options);
		request.setAttribute("departments", departments);
		return "admin/manage-unit";
	}
	@RequestMapping("/teacherUintGrade")
	public String TeacherUnitGrade(HttpServletRequest request) {
		List<Option> options = optionService.searchOption(1);
		List<Department> departments = departmentService.searchTeacherDepartment();
		request.setAttribute("options", options);
		request.setAttribute("departments", departments);
		return "admin/teach-unit";
	}
	@RequestMapping("/teacherUnitProportion")
	public String TeacherUnitProportion(HttpServletRequest request) {
		Integer year = Calendar.getInstance().get(Calendar.YEAR);
		List<Option> options = optionService.searchOption(1);
		List<Department> departments = departmentService.searchTeacherDepartment();
		request.setAttribute("options", options);
		request.setAttribute("departments", departments);
		request.setAttribute("year", year);
		return "admin/teach-unit2";
	}
	@RequestMapping("/managerUnitProportion")
	public String ManagerUnitProportion(HttpServletRequest request) {
		Integer year = Calendar.getInstance().get(Calendar.YEAR);
		List<Option> options = optionService.searchOption(2);
		List<Department> departments = departmentService.searchManageDepartment();
		request.setAttribute("options", options);
		request.setAttribute("departments", departments);
		request.setAttribute("year", year);
		return "admin/manage-unit2";
	}
	@RequestMapping("/addOneOption")
	public String AddOneOption(HttpServletRequest request,AddOptions addOption) {
		optionService.insertOneOption(addOption);
		return "admin/index";
	}
	@RequestMapping("/addDepartment")
	public String AddDepartment(HttpServletRequest request,Department department) {
		departmentService.insertDepartment(department);
		return "admin/index";
	}
	@RequestMapping("/updateDepartment")
	public String UpdateDepartment(HttpServletRequest request,HttpServletResponse response, Department department) throws IOException {
		departmentService.updateDepartment(department);
		return "admin/index";
	}
	@RequestMapping("/updateDepartmentGroup")
	public String UpdateDepartmentGroup(HttpServletRequest request,HttpServletResponse response, Department department) throws IOException {
		departmentService.updateDepartmentGroup(department);
		return "admin/index";
	}
	@RequestMapping("/updateOption")
	public String Updateoption(HttpServletRequest request, Option option) {
		optionService.updateOption(option);
		return "admin/index";
	}
	@RequestMapping("/deleteDepartment")
	public String DeleteDepartment(HttpServletRequest request, Department department) {
		departmentService.deleteDepartment(department);
		return "admin/index";
	}
	@RequestMapping("/deleteOption")
	public String deleteOption(HttpServletRequest request,Option option) {
		optionService.deleteOption(option);
		return "admin/index";
	}
	@RequestMapping("/addoption")
	public String AddOption(HttpServletRequest request,Option option) {
		optionService.insertOption(option);
		return "admin/index";
	}
}
