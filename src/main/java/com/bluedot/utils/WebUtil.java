package com.bluedot.utils;

import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Workbook;

/** 
* @author 作者 zg
* @version 创建时间：2018年12月6日 下午9:16:49 
*/
public class WebUtil {
	
	public static void downloadExcel(HttpServletResponse response,Workbook wb,String fileName) throws Exception{
		response.setHeader("Content-Disposition", "attachment;filename="+new String(fileName.getBytes("utf-8"),"iso-8859-1"));
		response.setContentType("application/ynd.ms-excel;charset=UTF-8");
		OutputStream out=response.getOutputStream();
		wb.write(out);
		out.flush();
		out.close();
	}

}
