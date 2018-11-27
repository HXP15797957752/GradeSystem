package com.bluedot.dao;

import java.util.List;

import com.bluedot.po.Option;

/**
 * @author : 游斌平
 *
 */
public interface OptionDao {
	public int insertOption(Option option); 
	public List<Option> searchAllOption(); 
	public List<Option> searchManageOption();
	public List<Option> searchTeacherOption();
}
