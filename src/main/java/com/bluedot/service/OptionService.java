package com.bluedot.service;


import java.util.List;

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
}
