package com.bluedot.service;

import java.util.List;

import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.multipart.MultipartFile;

import com.bluedot.po.UnitManage;


/** 
* @author 作者 zg
* @version 创建时间：2018年12月6日 下午4:04:25 
*/
public interface IPoiService {
	
	public Workbook getWorkbook(MultipartFile file,String suffix) throws Exception;
	
	public List<UnitManage> readExcelData(Workbook wb) throws Exception;

}
