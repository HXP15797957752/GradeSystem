package com.bluedot.service.impl;

import java.io.InputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluedot.dao.CadreDao;
import com.bluedot.dao.QualitativeDao;
import com.bluedot.exception.ImportException;
import com.bluedot.po.Cadre;
import com.bluedot.po.Department;
import com.bluedot.service.CadreExcelService;

/**
 * 处级干部信息导入业务类
 * @author hxp
 * 2018年12月19日 下午2:01:39
 */
@Service
public class CadreExcelServiceImpl implements CadreExcelService{
    @Autowired
    private CadreDao cadreDao;
    @Autowired
    private QualitativeDao qualitativeDao;
    @Override
    public void dealExcel(InputStream inputStream) throws Exception {  
        List<Cadre> updateList  = new ArrayList<Cadre>();
        List<Cadre> addList = new  ArrayList<Cadre>();
        //根据指定的文件输入流导入Excel从而产生Workbook对象
        Workbook wb0 = new HSSFWorkbook(inputStream);
        //获取Excel文档中的第一个表单
        Sheet sht0 = wb0.getSheetAt(0);
        //对Sheet中的每一行进行迭代
        for (Row r : sht0) {
            //如果当前行的行号（从0开始）未达到2（第三行）则从新循环
            if(r.getRowNum()<=1){
                continue;
            }          
            //创建实体类
           Cadre cadre = new Cadre();
           cadre.setSalaryID(Integer.valueOf(getCellValue(r.getCell(0))));
           cadre.setCadreName(getCellValue(r.getCell(1)));
           cadre.setPosition(getCellValue(r.getCell(2)));
           if("正处级".equals(getCellValue(r.getCell(3)))) {
               cadre.setRank(0);
           }else if("副处级".equals(getCellValue(r.getCell(3)))){
               cadre.setRank(1);
           }else {
               throw new  ImportException("导入失败，级别错误");
           }
           
           Department department = qualitativeDao.getDepartmentByName(getCellValue(r.getCell(4)));
           if(null!=department) {
               cadre.setDepartmentId(department.getDepartmentId());
           }else {
               //如果导入的单位不存在则停止导入
               throw new  ImportException("导入失败，部门名称错误");
           }
           Cadre queryCadre =  qualitativeDao.getCadreBySalaryID(cadre.getSalaryID());
           if(null!=queryCadre) {
               updateList.add(cadre);
               //cadreDao.updateCadre(cadre);
           }else { 
               addList.add(cadre);
               //cadreDao.addCadre(cadre);
           }
        } 
        for(Cadre cadre :updateList) {
            cadreDao.updateCadre(cadre);
        }
        
        for(Cadre cadre : addList) {
            cadreDao.addCadre(cadre);
        }
    }
    /*
     * 下载Excel
     * */
    @Override
    public void downloadExcel() {        
        /*//创建HSSFWorkbook对象(excel的文档对象)
        HSSFWorkbook wb = new HSSFWorkbook();
        //建立新的sheet对象（excel的表单）
        HSSFSheet sheet=wb.createSheet("处级干部信息表");
        //在sheet里创建第一行，参数为行索引(excel的行)，可以是0～65535之间的任何一个
        HSSFRow row1=sheet.createRow(0);
        //创建单元格（excel的单元格，参数为列索引，可以是0～255之间的任何一个    
        HSSFCell cell=row1.createCell(0);
        //设置单元格内容
        cell.setCellValue("处级干部个人信息表");
        //合并单元格CellRangeAddress构造参数依次表示起始行，截至行，起始列， 截至列
        sheet.addMergedRegion(new CellRangeAddress(0,0,0,4));
        //在sheet里创建第二行
        HSSFRow row2=sheet.createRow(1);    
        //创建单元格并设置单元格内容 
        row2.createCell(0).setCellValue("工资编号");
        row2.createCell(1).setCellValue("姓名");    
        row2.createCell(2).setCellValue("职位");
        row2.createCell(3).setCellValue("级别");
        row2.createCell(4).setCellValue("所在部门");
        
       //输出Excel文件
          try {
              OutputStream output=response.getOutputStream();
              response.reset();
              response.setHeader("Content-disposition", "attachment; filename=处级干部信息.xls");
              response.setContentType("application/msexcel");        
              wb.write(output);
              output.close();
          } catch (IOException e) {
              System.out.println("文件下载失败！");
              e.printStackTrace();
          }*/
    }
    
    public String getCellValue(Cell cell) {
        String value = "";
        // 以下是判断数据的类型
        switch (cell.getCellType()) {
        case HSSFCell.CELL_TYPE_NUMERIC:
            value = cell.getNumericCellValue() + "";
            if (HSSFDateUtil.isCellDateFormatted(cell)) {
                Date date = cell.getDateCellValue();
                if (date != null) {
                    value = new SimpleDateFormat("yyyy-MM-dd").format(date);
                } else {
                    value = "";
                }
            } else {
                value = new DecimalFormat("0").format(cell.getNumericCellValue());
            }
            break;
        case HSSFCell.CELL_TYPE_STRING: // 字符串
            value = cell.getStringCellValue();
            break;
        case HSSFCell.CELL_TYPE_BOOLEAN: // Boolean
            value = cell.getBooleanCellValue() + "";
            break;
        case HSSFCell.CELL_TYPE_FORMULA: // 公式
            value = cell.getCellFormula() + "";
            break;
        case HSSFCell.CELL_TYPE_BLANK: // 空值
            value = "";
            break;
        case HSSFCell.CELL_TYPE_ERROR: // 故障
            value = "非法字符";
            break;
        default:
            value = "未知类型";
            break;
        }
        return value;
    }

}
