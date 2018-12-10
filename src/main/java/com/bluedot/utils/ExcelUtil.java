package com.bluedot.utils;



import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

/** 
* @author 作者 zg
* @version 创建时间：2018年12月6日 下午4:54:13 
*/
public class ExcelUtil {
         
	public static String manageCell(Cell cell,String dateFormat) throws Exception{		
		String value="";
		CellType cellType=cell.getCellTypeEnum();
  		if (CellType.STRING.equals(cellType)) {
			value=cell.getStringCellValue();
		}else if (CellType.NUMERIC.equals(cellType)) {
			if("General".equals(cell.getCellStyle().getDataFormatString())){
				value="1";
            }else if("m/d/yy".equals(cell.getCellStyle().getDataFormatString())){
            	value="1";
            }else {
            	value="1";
            }
		}else if (CellType.BOOLEAN.equals(cellType)) {
			value=String.valueOf(cell.getBooleanCellValue());
		}else if (CellType.BLANK.equals(cellType)) {
			value="1";
		}
		return value;
	}
	
	public static void fillExcelSheetData(List<Map<Integer, Object>> dataList,Workbook wb,String[] headers,String sheetName){
		Sheet sheet=wb.createSheet(sheetName);
		Row headerRow=sheet.createRow(0);
		for(int i=0;i<headers.length;i++){
			headerRow.createCell(i).setCellValue(headers[i]);
		}
		int rowIndex=1;
		Row row;
		Object obj;
		for(Map<Integer, Object> rowMap:dataList){
			
			try {
				row=sheet.createRow(rowIndex++);
				for(int i=0;i<headers.length;i++){
					
					obj=rowMap.get(i);
					if (obj==null) {
						row.createCell(i).setCellValue("");
					}else {
						row.createCell(i).setCellValue(String.valueOf(obj));
					}
				}
			} catch (Exception e) {
				System.out.println("填入异常");
			}
		}
		
	}
	
	
}
