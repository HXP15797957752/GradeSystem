package com.bluedot.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bluedot.po.Department;
import com.bluedot.po.Option;
import com.bluedot.service.DepartmentService;
import com.bluedot.service.OptionService;
import com.bluedot.service.QuantifyService;

/*import net.sf.json.JSONArray;
import net.sf.json.JSONObject;*/


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
/*	@RequestMapping(value = "/quantifyIndex", method ={RequestMethod.POST})
	public String QuantifyIndexs(HttpServletRequest request,@RequestBody List<Quantify> quantifies) {
		System.out.println("you");
		String [] ids = request.getParameterValues("id");
		for (String string : ids) {
			System.out.println(string);
		}
		return "admin/index";
	}*/
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
		int t = optionService.insertOption(option);
		System.out.println(t);
		return "admin/index";
	}
}
