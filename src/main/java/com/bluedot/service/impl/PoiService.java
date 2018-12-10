package com.bluedot.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bluedot.enums.WorkBookVersion;
import com.bluedot.po.UnitManage;
import com.bluedot.service.IPoiService;
import com.bluedot.utils.ExcelUtil;



@Service("poiService")
public class PoiService implements IPoiService{

	
	
	/**
	 * 根据file区分获取workbook实例
	 * @param version
	 * @return
	 */
	public Workbook getWorkbook(MultipartFile file,String suffix) throws Exception{
		Workbook wk=null;
		if (Objects.equals(WorkBookVersion.WorkBook2003Xls.getCode(), suffix)) {
			wk=new HSSFWorkbook(file.getInputStream());
		}else if (Objects.equals(WorkBookVersion.WorkBook2007Xlsx.getCode(), suffix)) {
			wk=new XSSFWorkbook(file.getInputStream());
		}
		
		return wk;
	}

	@Override
	public List<UnitManage> readExcelData(Workbook wb) throws Exception {
		
		UnitManage unitManage=null;
		
		List<UnitManage> unitManages=new ArrayList<UnitManage>();
		Row row=null;
		int numSheet=wb.getNumberOfSheets();
		if (numSheet>0) {
			for(int i=0;i<numSheet;i++){
				Sheet sheet=wb.getSheetAt(i);
				int numRow=sheet.getLastRowNum();
				
				if (numRow>0) {
					for(int j=1;j<=numRow;j++){
						
						row=sheet.getRow(j);
						unitManage=new UnitManage();
						String unitName=null;
						if(row.getCell(1)==null){
							unitName=null;
						}else {
							unitName=ExcelUtil.manageCell(row.getCell(1), null);
						}
						String unitKind=null;
						if(row.getCell(2)==null){
							unitKind=null;
						}else {
							unitKind=ExcelUtil.manageCell(row.getCell(2), null);
						}
						unitManage.setUnitName(unitName);
						unitManage.setUnitKind(unitKind);
						unitManages.add(unitManage);
					}
				}
			}
		}
		return unitManages;
	}
}
