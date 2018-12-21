package com.bluedot.dao;

import java.util.List;

import com.bluedot.po.Option;
import com.bluedot.po.Quantify;

/**
 * @author : 游斌平
 *
 */
public interface OptionDao {
	public int insertOption(Option option); 
	public List<Option> searchAllOption(); 
	public List<Option> searchManageOption();
	public List<Option> searchTeacherOption();
	public void updateOption(Option option);
	public void deleteOption(Option option);
	public  List<Option> searchHTOption();
	public List<Option> searchHMOption();
	public void deleteQuantifyByOptionId(int id);
	public void updateQuantifyByOption(Option option);
}
