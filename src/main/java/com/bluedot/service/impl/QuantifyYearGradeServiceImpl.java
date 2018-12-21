package com.bluedot.service.impl;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluedot.dao.DepartmentDao;
import com.bluedot.dao.OptionDao;
import com.bluedot.dao.QuantifyDao;
import com.bluedot.dao.QuantifyYearGradeDao;
import com.bluedot.po.Department;
import com.bluedot.po.Option;
import com.bluedot.po.Quantify;
import com.bluedot.po.QuantifyYearGrade;
import com.bluedot.service.QuantifyYearGradeService;

/**
 * @author : 游斌平
 *
 */
@Service("quantifyYearGradeService")
public class QuantifyYearGradeServiceImpl implements QuantifyYearGradeService{
	@Autowired
	private OptionDao optionDao;
	@Autowired
	private QuantifyDao quantifyDao;
	@Autowired
	private DepartmentDao departmentDao;
	@Autowired
	private QuantifyYearGradeDao quantifyYearGradeDao;
	@Override
	public List<QuantifyYearGrade> searchQuantifyYearGrade() {
		// TODO Auto-generated method stub
		return quantifyYearGradeDao.searchQuantifyYearGrade();
	}
	@Override
	public List<QuantifyYearGrade> searchYearGrade(Integer year) {
		// TODO Auto-generated method stub
		return quantifyYearGradeDao.searchYearGrade(year);
	}
	@Override
	public void saveYearGrade() {
		// TODO Auto-generated method stub
		Integer year = Calendar.getInstance().get(Calendar.YEAR);
		List<Option> options = null;
		List<Department>  departments= null;
		Quantify quantify = new Quantify();
		DecimalFormat df = new DecimalFormat("#.00");
		QuantifyYearGrade grade = new QuantifyYearGrade();
		List<QuantifyYearGrade> quantifyYearGrades = new ArrayList<>();
		List<QuantifyYearGrade> exit = quantifyYearGradeDao.searchYearGrade(year);
		quantify.setYear(year);
	    options = optionDao.searchHTOption();
	    departments = departmentDao.searchTeacherDepartment();
		operation(options, departments, quantify, df, grade,year,quantifyYearGrades);
	    options = optionDao.searchHMOption();
	    departments = departmentDao.searchManageDepartment();
		operation(options, departments, quantify, df, grade,year,quantifyYearGrades);
		for (QuantifyYearGrade quantifyYearGrade : quantifyYearGrades) {
			boolean isflag = false;
			for (QuantifyYearGrade quantifyYearGrade2 : exit) {
				if(quantifyYearGrade2.getDepartmentId() == quantifyYearGrade.getDepartmentId()) {
					isflag = true;
					break;
				}
			}
			if(!isflag) {
				quantifyYearGradeDao.insertYearGrade(quantifyYearGrade);
			}else {
				quantifyYearGradeDao.updateYearGrade(quantifyYearGrade);
			}
		}
	}
	public void operation(List<Option> options, List<Department>  departments, Quantify quantify, DecimalFormat df,QuantifyYearGrade grade, int year,List<QuantifyYearGrade> quantifyYearGrades) {
		for (Department department : departments) {
			double sum = 0.0;
			for (Option option : options) {
				quantify.setDepartmentID(department.getDepartmentId());
				quantify.setOptionID(option.getId());
				System.out.println(quantify.getDepartmentID()+"  "+quantify.getOptionID());
				quantify = quantifyDao.searchOneQuantify(quantify);
				if(quantify == null) {
					quantify = new Quantify();
					quantify.setGrade(0.0);
					quantify.setProportion(0.0);
					System.out.println(grade.getSumGrade()+"    ---1");
				}
				if(quantify.getGrade() == null ) {
					quantify.setGrade(0.0);
					System.out.println(grade.getSumGrade()+"    ---2");
				}
				if(quantify.getProportion() == null) {
					quantify.setProportion(0.0);
					System.out.println(grade.getSumGrade()+"    ---3");
				}
				sum = sum + Double.parseDouble(df.format(quantify.getGrade()*quantify.getProportion()));
			}
			sum = Double.parseDouble(df.format(sum));
			grade = new QuantifyYearGrade();
			grade.setDepartmentId(department.getDepartmentId());
			grade.setYear(year);
			grade.setDepartmentName(department.getDepartmentName());
			grade.setSumGrade(sum);
			quantifyYearGrades.add(grade);
	   }
	}
}
