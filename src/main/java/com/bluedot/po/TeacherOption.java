package com.bluedot.po;

/**
 * @author : 游斌平
 *
 */
public class TeacherOption {
	private int teacherId;
	private String teacherOptionName;
	private Option option;
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	public String getTeacherOptionName() {
		return teacherOptionName;
	}
	public void setTeacherOptionName(String teacherOptionName) {
		this.teacherOptionName = teacherOptionName;
	}
	public void setOption() {
		option = new Option();
		option.setId(teacherId);
		option.setOptionName(teacherOptionName);
	}
	public Option getOption() {
		return option;
	}
	public void setOption(Option option) {
		this.option = option;
	}
}
