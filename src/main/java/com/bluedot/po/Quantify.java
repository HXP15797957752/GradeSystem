package com.bluedot.po;

/**
 * @author : 游斌平
 *
 */
public class Quantify {
	private int id;
	private int year;
	private double proportion;
	private int grade;
	private int unitID;
	private int optionID;
	private int departmentID;
	
	public int getDepartmentID() {
		return departmentID;
	}
	public void setDepartmentID(int departmentID) {
		this.departmentID = departmentID;
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
	public double getProportion() {
		return proportion;
	}
	public void setProportion(double proportion) {
		this.proportion = proportion;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getUnitID() {
		return unitID;
	}
	public void setUnitID(int unitID) {
		this.unitID = unitID;
	}
	public int getOptionID() {
		return optionID;
	}
	public void setOptionID(int optionID) {
		this.optionID = optionID;
	}
	@Override
	public String toString() {
		return "Quantify [id=" + id + ", year=" + year + ", proportion=" + proportion + ", grade=" + grade + ", unitID="
				+ unitID + ", optionID=" + optionID + ", departmentID=" + departmentID + "]";
	}
	
	
}
