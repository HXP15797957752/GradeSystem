package com.bluedot.service.impl;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluedot.dao.DepartmentDao;
import com.bluedot.dao.OptionDao;
import com.bluedot.dao.QuantifyDao;
import com.bluedot.po.Department;
import com.bluedot.po.Option;
import com.bluedot.po.Quantify;
import com.bluedot.service.OptionService;
import com.bluedot.service.QuantifyService;

/**
 * @author : 游斌平
 *
 */
@Service("quantifyService")
public class QuantifyServiceImpl implements QuantifyService{
	
	@Autowired
	private OptionDao optionDao;
	@Autowired
	private QuantifyDao quantifyDao;
	@Autowired
	private DepartmentDao departmentDao;
	@Override
	public void searchAllQuantify(int type, List<List<Quantify>> lists,List<Double> listSum) {
		// TODO Auto-generated method stub
		List<Option> options = null;
		List<Department>  departments= null;
		Quantify quantify = new Quantify();
		DecimalFormat df = new DecimalFormat("#.00");
		if(type == 1) {
			  options = optionDao.searchHTOption();
			  departments = departmentDao.searchTeacherDepartment();
		}else {
			options = optionDao.searchHMOption();
			departments = departmentDao.searchManageDepartment();
		}
		for (Department department : departments) {
			List<Quantify> quantifies =new  ArrayList<>();
			double sum = 0.0;
			for (Option option : options) {
				quantify.setDepartmentID(department.getDepartmentId());
				quantify.setOptionID(option.getId());
				quantify = quantifyDao.searchOneQuantify(quantify);
				if(quantify == null) {
					quantify = new Quantify();
					quantify.setGrade(0.0);
					quantify.setProportion(0.0);
				}
				if(quantify.getGrade() == null ) {
					quantify.setGrade(0.0);
				}
				if(quantify.getProportion() == null) {
					quantify.setProportion(0.0);
				}
				quantify.setGetGrade(Double.parseDouble(df.format(quantify.getGrade()*quantify.getProportion())));
				quantifies.add(quantify);
				sum = sum + quantify.getGetGrade();
			}
			lists.add(quantifies);
			sum = Double.parseDouble(df.format(sum));
			listSum.add(sum);
		}
	}
	@Override
	public void addOneProportion(Integer departmentId, Double[] proportions, Integer type) {
		// TODO Auto-generated method stub
		List<Option> options = null;
		Quantify quantify = new Quantify();
		int index = 0; 
		if(type == 1) {
			options = optionDao.searchHTOption();
		}else {
			options = optionDao.searchHMOption();
		}
		for (Option option : options) {
			quantify.setDepartmentID(departmentId);
			quantify.setOptionID(option.getId());
			try{
				quantify.setProportion(proportions[index++]);
			}catch (Exception e) {
				// TODO: handle exception
				quantify.setProportion(0.0);
			}
			quantifyDao.updateQuantifyProportion(quantify);
		}
	}
	@Override
	public void addOneGrade(Integer departmentId, Double[] grades, Integer type) {
		// TODO Auto-generated method stub
		List<Option> options = null;
		Quantify quantify = new Quantify();
		int index = 0; 
		if(type == 1) {
			  options = optionDao.searchHTOption();
		}else {
			options = optionDao.searchHMOption();
		}
		for (Option option : options) {
			quantify.setDepartmentID(departmentId);
			quantify.setOptionID(option.getId());
			try{
				quantify.setGrade(grades[index++]);
			}catch (Exception e) {
				// TODO: handle exception
				quantify.setGrade(0.0);
			}
			quantifyDao.updateQuantifyGrade(quantify);
		}
	}
	@Override
	public void addQuantifyProportion(Integer[] departmentId, Double [] proportions, Integer type) {
		// TODO Auto-generated method stub
		List<Option> options = null;
		Quantify quantify = new Quantify();
		int index = 0; 
		if(type == 1) {
			  options = optionDao.searchHTOption();
		}else {
			options = optionDao.searchHMOption();
		}
		for(int i = 0; i<departmentId.length; i++) {
			for (Option option : options) {
				quantify.setDepartmentID(departmentId[i]);
				quantify.setOptionID(option.getId());
				try{
					quantify.setProportion(proportions[index++]);
				}catch (Exception e) {
					// TODO: handle exception
					quantify.setProportion(0.0);
				}
				quantifyDao.updateQuantifyProportion(quantify);
			}
		}
	}
	@Override
	public void addQuantifyGrade(Integer[] departmentId, Double[] grades, Integer type) {
		// TODO Auto-generated method stub
		List<Option> options = null;
		Quantify quantify = new Quantify();
		int index = 0; 
		if(type == 1) {
			  options = optionDao.searchHTOption();
		}else {
			options = optionDao.searchHMOption();
		}
		for(int i = 0; i<departmentId.length; i++) {
			for (Option option : options) {
				quantify.setDepartmentID(departmentId[i]);
				quantify.setOptionID(option.getId());
				try{
					quantify.setGrade(grades[index++]);
				}catch (Exception e) {
					// TODO: handle exception
					quantify.setGrade(0.0);
				}
				quantifyDao.updateQuantifyGrade(quantify);
			}
		}
		System.out.println(grades[0]);
	}
	
}
