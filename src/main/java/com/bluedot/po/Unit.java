package com.bluedot.po;

/**
 * @author : 游斌平
 *
 */
public class Unit {
	private int id;
	private String unitName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUnitName() {
		return unitName;
	}
	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}
	@Override
	public String toString() {
		return "Unit [id=" + id + ", unitName=" + unitName + "]";
	}
	
}
