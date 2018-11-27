package com.bluedot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluedot.dao.DepartmentDao;
import com.bluedot.po.Department;
import com.bluedot.service.DepartmentService;

/**
 * @author : 游斌平
 *
 */
@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService{
	@Autowired
	private DepartmentDao departmentDao;
	@Override
	public int insertDepartment(Department department) {
		// TODO Auto-generated method stub
		return departmentDao.insertDepartment(department);
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
	
}
