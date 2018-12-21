package com.bluedot.service;

import java.util.List;

import com.bluedot.po.QuantifyYearGrade;

/**
 * @author : 游斌平
 *
 */
public interface QuantifyYearGradeService {
	public List<QuantifyYearGrade> searchQuantifyYearGrade();
	public List<QuantifyYearGrade> searchYearGrade(Integer year);
	public void saveYearGrade();
}
