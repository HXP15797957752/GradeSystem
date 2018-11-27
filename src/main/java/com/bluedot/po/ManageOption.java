package com.bluedot.po;

/**
 * @author : 游斌平
 *
 */
public class ManageOption {
	private int manageId;
	private String manageOptionName;
	private Option option;
	public int getManageId() {
		return manageId;
	}
	public void setManageId(int manageId) {
		this.manageId = manageId;
	}
	public String getManageOptionName() {
		return manageOptionName;
	}
	public void setManageOptionName(String manageOptionName) {
		this.manageOptionName = manageOptionName;
	}
	public void setOption() {
		option = new Option();
		option.setId(manageId);
		option.setOptionName(manageOptionName);
	}
	public Option getOption() {
		return option;
	}
	public void setOption(Option option) {
		this.option = option;
	}
	
}
