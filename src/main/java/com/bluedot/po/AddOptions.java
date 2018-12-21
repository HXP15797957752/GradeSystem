package com.bluedot.po;

/**
 * @author : 游斌平
 *
 */
public class AddOptions {
	private int addUnitId;
	private int optionId;
	
	public int getAddUnitId() {
		return addUnitId;
	}
	public void setAddUnitId(int addUnitId) {
		this.addUnitId = addUnitId;
	}
	public int getOptionId() {
		return optionId;
	}
	public void setOptionId(int optionId) {
		this.optionId = optionId;
	}
	@Override
	public String toString() {
		return "AddOptions [addUnitId=" + addUnitId + ", optionId=" + optionId + "]";
	}
	
}
