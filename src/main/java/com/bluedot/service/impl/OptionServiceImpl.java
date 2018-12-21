package com.bluedot.service.impl;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluedot.dao.OptionDao;
import com.bluedot.dao.QuantifyDao;
import com.bluedot.po.AddOptions;
import com.bluedot.po.Department;
import com.bluedot.po.Option;
import com.bluedot.po.Quantify;
import com.bluedot.service.DepartmentService;
import com.bluedot.service.OptionService;

/**
 * @author : 游斌平
 *
 */
@Service("optionService")
public class OptionServiceImpl implements OptionService{
	@Autowired
	private OptionDao optionDao;
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private QuantifyDao quantifyDao;
	@Override
	public void insertOneOption(AddOptions addOption) {
		// TODO Auto-generated method stub
		List<Department> departments = null;
		Quantify quantify = new Quantify();
		int year = Calendar.getInstance().get(Calendar.YEAR);
		if(addOption.getAddUnitId() == 1) {
			departments = departmentService.searchTeacherDepartment();
		}else {
			departments = departmentService.searchManageDepartment();	
		}
		for (Department department : departments) {
			quantify.setDepartmentID(department.getDepartmentId());
			quantify.setOptionID(addOption.getOptionId());
			quantify.setUnitID(addOption.getAddUnitId());
			quantify.setYear(year);
			quantifyDao.insertQuantify(quantify);
		}
	}
	
	@Override
	public List<Option> searchOption(int type) {
		// TODO Auto-generated method stub
		if(type==1) {
			return optionDao.searchHTOption();
		}else {
			return optionDao.searchHMOption();
		}
	}

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

	@Override
	public void updateOption(Option option) {
		// TODO Auto-generated method stub
		optionDao.updateOption(option);
	}

	@Override
	public void deleteOption(Option option) {
		// TODO Auto-generated method stub
		optionDao.deleteOption(option);
		optionDao.deleteQuantifyByOptionId(option.getId());
	}
	
}
