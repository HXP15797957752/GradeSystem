package com.bluedot.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bluedot.po.UnitManage;



/** 
* @author 作者 zg
* @version 创建时间：2018年12月6日 下午9:04:40 
*/
public class ExcelBeanUtil {
    
	public static List<Map<Integer, Object>> unitList(final List<UnitManage> unitManages){
		List<Map<Integer, Object>> dataList=new ArrayList<>();
		
		if (unitManages!=null && unitManages.size()>0) {
			int length=unitManages.size();
			
			Map<Integer, Object> dataMap;
			UnitManage bean;
			for (int i = 0; i < length; i++) {
				bean=unitManages.get(i);
				dataMap=new HashMap<>();
				dataMap.put(0, bean.getId());
				dataMap.put(1, bean.getUnitName());
				dataMap.put(2, bean.getUnitKind());
				dataList.add(dataMap);
			}
		}
		return dataList;
	}
}
