package com.bluedot.utils;

import java.math.BigDecimal;

public class NumberUtil {
    /*
     * 四舍五入保留newScale位小数
     * */
    public static Double DoubleConvert(Double number,int newScale) {
        BigDecimal b = new BigDecimal(number);
        Double result = b.setScale(newScale, BigDecimal.ROUND_HALF_UP).doubleValue();
        return result;  
        
    }
}

