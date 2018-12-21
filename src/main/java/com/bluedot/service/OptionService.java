package com.bluedot.service;


import java.util.List;

import com.bluedot.po.AddOptions;
import com.bluedot.po.Option;

/**
 * @author : 游斌平
 *
 */
public interface OptionService {
	public int insertOption(Option option);
	public List<Option> searchAllOption();
	public List<Option> searchManageOption();
	public List<Option> searchTeacherOption();
	public void updateOption(Option option);
	public void deleteOption(Option option);
	public void insertOneOption(AddOptions addOption);
	public List<Option> searchOption(int type);
}
