package com.bluedot.po;
/** 
* @author 作者 zg
* @version 创建时间：2018年12月6日 下午4:39:49 
*/
public class UnitManage {
	
	
	private int id;
	private String unitName;
	private String unitKind;
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
	public String getUnitKind() {
		return unitKind;
	}
	public void setUnitKind(String unitKind) {
		this.unitKind = unitKind;
	}
	@Override
	public String toString() {
		return "UnitManage [id=" + id + ", unitName=" + unitName + ", unitKind=" + unitKind + "]";
	}

}
