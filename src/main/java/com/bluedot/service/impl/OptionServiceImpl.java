package com.bluedot.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluedot.dao.OptionDao;
import com.bluedot.po.Option;
import com.bluedot.service.OptionService;

/**
 * @author : 游斌平
 *
 */
@Service("optionService")
public class OptionServiceImpl implements OptionService{
	@Autowired
	private OptionDao optionDao;
	@Override
	public int insertOption(Option option) {
		// TODO Auto-generated method stub
		return optionDao.insertOption(option);
	}
	
	@Override
	public List<Option> searchAllOption() {
		// TODO Auto-generated method stub
		return optionDao.searchAllOption();
	}

	@Override
	public List<Option> searchManageOption() {
		// TODO Auto-generated method stub
		return optionDao.searchManageOption();
	}

	@Override
	public List<Option> searchTeacherOption() {
		// TODO Auto-generated method stub
		return optionDao.searchTeacherOption();
	}
	
	
}
