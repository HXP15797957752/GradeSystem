package com.bluedot.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bluedot.po.User;

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
			e.printStackTrace();
			return "userlogin";
			
		}
		
				
	}
}
