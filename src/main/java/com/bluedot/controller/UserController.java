package com.bluedot.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String login(User user,HttpServletRequest request) {
		
		Subject subject=SecurityUtils.getSubject();
		UsernamePasswordToken token=new UsernamePasswordToken(user.getUserName(), user.getPassword());	
		try {
			subject.login(token);
			request.getSession().setAttribute("user", user);
			return "redirect:/user/index.jsp";
			
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("user", user);
			request.setAttribute("errorMsg", "用户名密码错误");
			return "userlogin";
			
		}
		
				
	}
}
