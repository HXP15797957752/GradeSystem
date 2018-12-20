package com.bluedot.dao;

import java.util.List;

import com.bluedot.po.QuantifyYearGrade;

/**
 * @author : 游斌平
 *
 */
public interface QuantifyYearGradeDao {
	public List<QuantifyYearGrade> searchQuantifyYearGrade();
	public List<QuantifyYearGrade> searchYearGrade(Integer year);
	public void insertYearGrade(QuantifyYearGrade grade);
	public void updateYearGrade(QuantifyYearGrade grade);
	public void deleteOfDepartment(QuantifyYearGrade quantifyYearGrade);
	public void updateDepartmentName(QuantifyYearGrade quantifyYearGrade);
}
