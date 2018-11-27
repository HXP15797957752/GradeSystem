package com.bluedot.dao;

import java.util.List;

import com.bluedot.po.Department;

/**
 * @author : 游斌平
 *
 */
public interface DepartmentDao {
	public int insertDepartment(Department department);
	public List<Department> searchManageDepartment();
	public List<Department> searchTeacherDepartment();
}
