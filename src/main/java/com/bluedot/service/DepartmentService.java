package com.bluedot.service;

import java.util.List;

import com.bluedot.po.Department;

/**
 * @author : 游斌平
 *
 */
public interface DepartmentService {
	public int insertDepartment(Department department);
	public List<Department> searchManageDepartment();
	public List<Department> searchTeacherDepartment();
	public void updateDepartment(Department department);
	public void deleteDepartment(Department department);
}
