package com.bluedot.dao;

import com.bluedot.po.Quantify;

/**
 * @author : 游斌平
 *
 */
public interface QuantifyDao {
	public void  insertQuantify(Quantify quantify);
	public void deleteQuantify(int id);
	public void deleteQuantifyByOptionId(int id);
	public void updateQuantifyProportion(Quantify quantify);
	public void updateQuantifyGrade(Quantify quantify);
	public Quantify searchOneQuantify(Quantify quantify);
	public void updateQuantifyProportionAll(Quantify quantify);
	public void updateQuantifyGradeAll(Quantify quantify);
}
