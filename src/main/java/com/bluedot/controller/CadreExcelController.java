package com.bluedot.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.bluedot.service.CadreExcelService;
import com.bluedot.utils.WebUtil;

/**
 * 处级干部表格导入控制类
 * @author hxp
 * 2018年12月19日 下午1:57:21
 */
@Controller
public class CadreExcelController {
    @Autowired
    private CadreExcelService cadreExcleService;
    
    /*
     * 导入Excel
     * */
    @RequestMapping("/importexcel")
    @ResponseBody
    public void ImportExcel(@RequestParam("file") CommonsMultipartFile file, HttpServletResponse response) {
        try {
            InputStream fileInputStream = file.getInputStream();        
            cadreExcleService.dealExcel(fileInputStream);
            response.sendRedirect("admin/cadre-info.jsp");
        } catch (IOException e) {
            System.out.println("导入表格失败！");
            e.printStackTrace();
        }
         
    }
    
    /*
     * 下载Excel
     * */
    @RequestMapping("/downloadexcel")
    @ResponseBody
    public void downloadExcel(HttpServletRequest request, HttpServletResponse response) {
      //创建HSSFWorkbook对象(excel的文档对象)
        HSSFWorkbook wb = new HSSFWorkbook();
        //建立新的sheet对象（excel的表单）
        HSSFSheet sheet= wb.createSheet("处级干部信息表");
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
            WebUtil.downloadExcel(response, wb, "处级干部信息导入模板.xls");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    
    }
}
