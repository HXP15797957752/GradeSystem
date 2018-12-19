package com.bluedot.service;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/**
 * 处级干部表格导入业务处理接口
 * @author hxp
 * 2018年12月19日 下午2:13:53
 */
public interface CadreExcelService {
    public void dealExcel(InputStream inputStream) throws IOException;

    public void downloadExcel();
}
