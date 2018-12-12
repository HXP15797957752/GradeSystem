package com.bluedot.service;

import java.util.List;

import com.bluedot.po.Quantify;

/**
 * @author : 游斌平
 *
 */
public interface QuantifyService {
	public void addQuantifyProportion(Integer [] departmentId,Double  [] proportions, Integer type);
	public void addQuantifyGrade(Integer [] departmentId,Double  [] grades, Integer type);
	public void addOneGrade(Integer departmentId, Double [] grades, Integer type);
	public void addOneProportion(Integer departmentId, Double [] proportions, Integer type);
	public void  searchAllQuantify(int type, List<List<Quantify>> lists,List<Double> listSum, Integer year);
	public void initYear();
}
