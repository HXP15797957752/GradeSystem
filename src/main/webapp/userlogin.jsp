<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <!--<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">-->
	<link rel="icon" type="image/png" href="../i/favicon.png">
    <link rel="stylesheet" href="login/common/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="login/css/login/login.css">
    <title>登录</title>
</head>
<body>
    <div class="banner-wrapper">
		<div class="banner">
			<img class="logo" src="login/images/jxaulogo.jpg" alt="">
		</div>
	</div>
    <div class="content-wrapper">
		<div class="content">
			<div class="logon-panel">
			     <font style="color:red">${requestScope.errorMsg}</font>
					<form action="<c:url value='/user/login.do'/>" method="post">
						<table class="form-box" >
							<!--<div class="errMsg"></div>-->
							<tr>
								<td>
	                                <div class="inputWrapper">
	                                    <!--<i class="user_bg"></i>-->
	                                    <img class="user_bg" src="login/images/name.png" alt="">
	                                    <i></i>
	                                    <input  placeholder="请输入用户名"  class="field" type="text" name="userName" id="username" autocomplete="off" />
	                                </div>
								</td>
							</tr>
							<tr>
								<td>
	                                <div class="inputWrapper">
	                                    <img class="pwd_bg" src="login/images/lock.png" alt="">
	                                    <i></i>
	                                    <input  placeholder="请输入密码"  class="field" type="password" name="password" id="password" autocomplete="off"/><br/>
										<input type="checkbox" name="auto">自动登陆
									</div>
								</td>
							</tr>	
							<tr>
								<td><input class="button" type="submit" value="登录" /></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="login/common/js/common.js"></script>
</body>
</html>