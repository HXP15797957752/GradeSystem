package com.bluedot.po;

/**
 * @author : 游斌平
 *
 */
public class QuantifyYearGrade {
	private int id;
	private int year;
	private double sumGrade;
	private int departmentId;
	private String departmentName;
	
	public QuantifyYearGrade() {
        super();
    }
    public QuantifyYearGrade( double sumGrade) {
        this.sumGrade = sumGrade;
    }
    public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	
	public double getSumGrade() {
		return sumGrade;
	}
	public void setSumGrade(double sumGrade) {
		this.sumGrade = sumGrade;
	}
	public int getDepartmentId() {
		return departmentId;
	}
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}
	@Override
	public String toString() {
		return "QuantifyYearGrade [id=" + id + ", year=" + year + ", grade=" + sumGrade + ", departmentId=" + departmentId
				+ "]";
	}
	
}
