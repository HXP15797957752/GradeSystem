package com.bluedot.service.impl;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluedot.dao.DepartmentDao;
import com.bluedot.dao.OptionDao;
import com.bluedot.dao.QuantifyDao;
import com.bluedot.po.Department;
import com.bluedot.po.Option;
import com.bluedot.po.Quantify;
import com.bluedot.service.DepartmentService;

/**
 * @author : 游斌平
 *
 */
@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService{
	@Autowired
	private DepartmentDao departmentDao;
	@Autowired
	private QuantifyDao quantifyDao;
	@Autowired
	private OptionDao optionDao;
	
	
	@Override
	public void updateDepartmentGroup(Department department) {
		// TODO Auto-generated method stub
		departmentDao.updateDepartmentGroup(department);
	}
	@Override
	public Department searchDepartment(int id) {
		// TODO Auto-generated method stub
		return departmentDao.searchDepartment(id) ;
	}
	@Override
	public int insertDepartment(Department department) {
		// TODO Auto-generated method stub
		int year = Calendar.getInstance().get(Calendar.YEAR);
		List<Option> list =null;
		departmentDao.insertDepartment(department);
		Quantify quantify = new Quantify();
		if(department.getGradingUnitId() == 1) {
			list = optionDao.searchHTOption();
		}else {
			list = optionDao.searchHMOption();
		}
		System.out.println(list.size());
		for (Option option : list) {
			quantify.setDepartmentID(department.getDepartmentId());
			quantify.setOptionID(option.getId());
			quantify.setUnitID(department.getGradingUnitId());
			quantify.setYear(year);
			quantifyDao.insertQuantify(quantify);
		}
		return 0;
	}
	@Override
	public List<Department> searchManageDepartment() {
		// TODO Auto-generated method stub
		return departmentDao.searchManageDepartment();
	}
	@Override
	public List<Department> searchTeacherDepartment() {
		// TODO Auto-generated method stub
		return departmentDao.searchTeacherDepartment();
	}
	@Override
	public void updateDepartment(Department department) {
		// TODO Auto-generated method stub
		Department department2 =departmentDao.searchDepartment(department.getDepartmentId());
		if(department.getGradingUnitId() == department2.getGradingUnitId()) {
			departmentDao.updateDepartment(department);
		}else {
			quantifyDao.deleteQuantify(department2.getDepartmentId());
			departmentDao.updateDepartment(department);
			insertDepartment(department);
		}
	}
	@Override
	public void deleteDepartment(Department department) {
		// TODO Auto-generated method stub
		departmentDao.deleteDepartment(department);
		quantifyDao.deleteQuantify(department.getDepartmentId());
	}
	
	
}
