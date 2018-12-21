package com.bluedot.po;

/**
 * @author : 游斌平
 *
 */
public class Quantify {
	private int id;
	private int year;
	private Double proportion;
	private Double grade;
	private int unitID;
	private int optionID;
	private int departmentID;
	private Double getGrade;
	
	
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


	public Double getProportion() {
		return proportion;
	}


	public void setProportion(Double proportion) {
		this.proportion = proportion;
	}


	public Double getGrade() {
		return grade;
	}


	public void setGrade(Double grade) {
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


	public int getDepartmentID() {
		return departmentID;
	}


	public void setDepartmentID(int departmentID) {
		this.departmentID = departmentID;
	}


	public Double getGetGrade() {
		return getGrade;
	}


	public void setGetGrade(Double getGrade) {
		this.getGrade = getGrade;
	}


	@Override
	public String toString() {
		return "Quantify [id=" + id + ", year=" + year + ", proportion=" + proportion + ", grade=" + grade + ", unitID="
				+ unitID + ", optionID=" + optionID + ", departmentID=" + departmentID + "]";
	}
	
	
}
