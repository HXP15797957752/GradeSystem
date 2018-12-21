package com.bluedot.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bluedot.enums.WorkBookVersion;
import com.bluedot.exception.UserException;
import com.bluedot.po.BaseBody;
import com.bluedot.po.UnitManage;
import com.bluedot.po.User;
import com.bluedot.service.IPoiService;
import com.bluedot.service.UserService;
import com.bluedot.utils.ExcelBeanUtil;
import com.bluedot.utils.ExcelUtil;
import com.bluedot.utils.WebUtil;












/** 
* @author 作者 zg
* @version 创建时间：2018年11月23日 下午8:40:15 
*/

@Controller
@RequestMapping("/user")
public class UserController {
    
	/*
	 * 用户登录
	 */
	@Value("单位信息表")
	private String sheetUnittName;
	
	@Value("单位信息表.xls")
	private String excelUnitName;
	@Autowired
	UserService userService;
	
	@Autowired
	IPoiService poiService;
	@RequestMapping("/login")
	@ResponseBody
	public String login(User user,HttpServletRequest request) {
		try {
			user.setUserName(StringUtils.isNotEmpty(user.getUserName())?URLDecoder.decode(user.getUserName(),"UTF-8"):null);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		Subject subject=SecurityUtils.getSubject();
		UsernamePasswordToken token=new UsernamePasswordToken(user.getUserName(), user.getPassword());	
		try {
			subject.login(token);
			request.getSession().setAttribute("user", user);
			return "index.jsp";
			
		}catch(Exception e) {
			System.out.println(UserException.getMsg("用户名密码错误!!"));
			return "userlogin";
			
		}
		
				
	}
	
	@RequestMapping("/adminMessage")
	@ResponseBody
	public BaseBody adminMessage(HttpServletRequest request) {
		/*try {
			userName=StringUtils.isNotEmpty(userName)?URLDecoder.decode(userName,"UTF-8"):null;
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		User user=(User)request.getSession().getAttribute("user");
		User userMessage=userService.getByUserName(user.getUserName());
		return BaseBody.success().add("userMessage", userMessage);
		
	}
	@RequestMapping("/adminSave")
	@ResponseBody
	public BaseBody adminSave(User user) {
		try {
			user.setUserId(StringUtils.isNotEmpty(user.getUserId())?URLDecoder.decode(user.getUserId(),"UTF-8"):null);
			user.setUserName(StringUtils.isNotEmpty(user.getUserName())?URLDecoder.decode(user.getUserName(),"UTF-8"):null);
			user.setEmail(StringUtils.isNotEmpty(user.getEmail())?URLDecoder.decode(user.getEmail(),"UTF-8"):"无");
			user.setPhone(StringUtils.isNotEmpty(user.getPhone())?URLDecoder.decode(user.getPhone(),"UTF-8"):"无");
			user.setPassword(StringUtils.isNotEmpty(user.getPassword())?URLDecoder.decode(user.getPassword(),"UTF-8"):null);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		
		userService.adminSave(user);
		User adminSave=userService.getByUserName(user.getUserName());
		return BaseBody.success().add("adminSave", adminSave);
	}
	@RequestMapping("/insertUser")
	@ResponseBody
	public BaseBody insertUser(User user) {
		
		try {
		    user.setUserId(StringUtils.isNotEmpty(user.getUserId())?URLDecoder.decode(user.getUserId(),"UTF-8"):null);
			user.setUserName(StringUtils.isNotEmpty(user.getUserName())?URLDecoder.decode(user.getUserName(),"UTF-8"):null);
			user.setEmail(StringUtils.isNotEmpty(user.getEmail())?URLDecoder.decode(user.getEmail(),"UTF-8"):"无");
			user.setPhone(StringUtils.isNotEmpty(user.getPhone())?URLDecoder.decode(user.getPhone(),"UTF-8"):"无");
			user.setPassword(StringUtils.isNotEmpty(user.getPassword())?URLDecoder.decode(user.getPassword(),"UTF-8"):null);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		userService.insertUser(user);
		
		User insertUser=userService.getByUserName(user.getUserName());
		return BaseBody.success().add("insertUser", insertUser);
		
	}
	@RequestMapping("/selectAllUser")
	@ResponseBody
	public BaseBody selectAllUser() {
		List<User> list=userService.selectAllUser();
		return BaseBody.success().add("userlist", list);
	}
	@RequestMapping("/checkUser")
	@ResponseBody
	public BaseBody checkUser(String userName) {
		
		boolean b=userService.checkUser(userName);
		if(b) {
			return BaseBody.success();
		}else {
			return BaseBody.fail();
		}
		
	}
	@RequestMapping("/delete")
	@ResponseBody
	public BaseBody deleteUser(int id) {
		userService.deleteUser(id);
		return BaseBody.success();
	}
	@RequestMapping("/selectById")
	@ResponseBody
	public BaseBody selectById(int id) {
		
		User userMessage=userService.selectById(id);
		return BaseBody.success().add("userMessage", userMessage);
	}
	@RequestMapping("/updateUser")
	@ResponseBody
	public BaseBody updateUser(User user) {
		userService.updateUser(user);
		return BaseBody.success();
	}
	
	@RequestMapping("/excel/upload")
	@ResponseBody
	public BaseBody uploadExcel(MultipartHttpServletRequest request) {		
		MultipartFile file=request.getFile("unitManageFile");
		if (file==null || file.getName()==null) {
			return BaseBody.fail();
		}
		String fileName=file.getOriginalFilename();
		String suffix=StringUtils.substring(fileName, fileName.lastIndexOf(".")+1);
		if (WorkBookVersion.valueOfSuffix(suffix)==null) {
			return BaseBody.fail();
		}
		try {
			Workbook wb=poiService.getWorkbook(file,suffix);
			List<UnitManage> unitManages=poiService.readExcelData(wb);
//			userService.insertUnit(unitManages);
			for(UnitManage unitManage:unitManages){
				userService.insertUnit(unitManage);}
		} catch (Exception e) {
			System.out.println("上传失败");
			return BaseBody.fail();
		}
		
		return BaseBody.success();
	}
	
	//查出所有单位
	@RequestMapping("/selectAllUnit")
	@ResponseBody
	public BaseBody selectAllUnit() {
		
		List<UnitManage> unitManages=userService.selectAllUnit();
		return BaseBody.success().add("unitManages", unitManages);
	}
	
	@RequestMapping("/deleteUnit")
	@ResponseBody
	public BaseBody deleteUnit(int id) {
		userService.deleteUnit(id);
		return BaseBody.success();
	}
	

	@RequestMapping("/selectUnitById")
	@ResponseBody
	public BaseBody selectUnitById(int id) {
		
		UnitManage unitManage=userService.selectUnitById(id);
		return BaseBody.success().add("unitManageMessage", unitManage);
	}
	//更新单位
	
	@RequestMapping("/updateUnit")
	@ResponseBody
	public BaseBody updateUnit(UnitManage unitManage) {
		userService.updateUnit(unitManage);
		return BaseBody.success();
	}
	
	@RequestMapping("/excel/export")
	@ResponseBody
	public String exportExcel(HttpServletResponse response) {
		try {
		List<UnitManage> unitManages=userService.selectAllUnit();
		String[] headers=new String[]{"序号","单位名称","类别"};
		List<Map<Integer, Object>> dataList=ExcelBeanUtil.unitList(unitManages);
		Workbook wb=new HSSFWorkbook(); 
		ExcelUtil.fillExcelSheetData(dataList, wb, headers, sheetUnittName);
		WebUtil.downloadExcel(response, wb, excelUnitName);
		System.out.println(excelUnitName);
		return excelUnitName;
		}catch(Exception e) {
			System.out.println("导出异常");
		}
	return null;
	}

	@RequestMapping("/loginout")
	public String loginout(HttpServletRequest request) {
		 Enumeration<String> enumeration = request.getSession().getAttributeNames();
		  while (enumeration.hasMoreElements()) {
		  String key = enumeration.nextElement().toString();
		  request.getSession().removeAttribute(key);
		 }
		return "redirect:/userlogin.html";
	}
}
