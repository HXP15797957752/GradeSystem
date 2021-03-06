package com.bluedot.po;

/**
 * @author : 游斌平
 *
 */
public class Department {
	private int departmentId;
	private String departmentName;
	private int gradingUnitId;
	private String userName;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public int getGradingUnitId() {
		return gradingUnitId;
	}
	public void setGradingUnitId(int gradingUnitId) {
		this.gradingUnitId = gradingUnitId;
	}
	@Override
	public String toString() {
		return "Department [departmentId=" + departmentId + ", departmentName=" + departmentName + ", gradingUnitId="
				+ gradingUnitId + "]";
	}
}
