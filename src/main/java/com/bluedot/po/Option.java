package com.bluedot.po;

/**
 * @author : 游斌平
 *
 */
public class Option {
	private int id;
	private String optionName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	@Override
	public String toString() {
		return "Option [id=" + id + ", optionName=" + optionName + "]";
	}
	
}
