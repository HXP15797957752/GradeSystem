<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
      pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>江西农业大学</title>
  <meta name="description" content="这是一个 user 页面">
  <meta name="keywords" content="user">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="${APP_PATH}/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="${APP_PATH}/css/amazeui.min.css"/>
  <link rel="stylesheet" href="${APP_PATH}/css/admin.css">
  <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
  <script src="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script src="https://cdn.bootcss.com/layer/2.3/layer.js"></script>
</head>
<body>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>江西农业大学</strong> <small>年度考核评分系统</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
        <li class="am-dropdown" data-am-dropdown>       
        
		<a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;"> <span class="am-icon-users"></span> 用户</a>   
      </li>
      <li><li><a href="${APP_PATH  }/user/loginout.do"><span class="am-icon-power-off"></span> 退出</a></li></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="${APP_PATH }/user/index.jsp"><span class="am-icon-home"></span> 首页</a></li>
      <li><a href="${APP_PATH }/user/usermessage.jsp"><span class="am-icon-check"></span> 个人资料</a></li>
      <li><a href="grade-table.html"><span class="am-icon-map-marker"></span> 民主测评统计</a></li>
    </ul>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-bookmark"></span> 公告</p>
        <p>时光静好，与君语；细水流年，与君同。—— Amaze UI</p>
      </div>
    </div>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-tag"></span> wiki</p>
        <p>Welcome to the Amaze UI wiki!</p>
      </div>
    </div>
  </div>
  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content">
    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">个人资料</strong> / <small>Personal information</small></div>
    </div>

    <hr/>

    <div class="am-g">

      <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
       
      </div>

      <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
        <form class="am-form am-form-horizontal">
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">工资编号</label>
            <div class="am-u-sm-9" id="adminuserId">
                <input type="text"  id="adminuserId2" > 
            </div>
          </div>
          <div class="am-form-group">
            <label for="user-name" class="am-u-sm-3 am-form-label">姓名</label>
            <div class="am-u-sm-9" id="adminname">
                <input type="text" readonly='readonly' id="adminname2" > 
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">电子邮箱</label>
            <div class="am-u-sm-9" id="adminemail">
              <input type="text" id="adminemail2" placeholder="请输入邮箱"> 
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">手机号码</label>
            <div class="am-u-sm-9" id="adminphone">
              <input type="text" id="adminphone2" placeholder="请输入手机号码"> 
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-phone" class="am-u-sm-3 am-form-label">修改密码</label>
            <div class="am-u-sm-9" id="adminpassword">
        <input type="password" id="adminpassword2" >
            </div>
          </div>
          <div class="am-form-group">
            <div class="am-u-sm-9 am-u-sm-push-3" id="adminsave">
             <button type="button" class="am-btn am-btn-primary updateSave">保存修改</button> 
            </div>
          </div>
        </form>
      </div>   
    </div>
  </div>
  <!-- content end -->

</div>

<footer>
  <hr>
  <p class="am-padding-left">© 2018 江西农业大学.蓝点工作室</p>
</footer>


<script type="text/javascript">
     
$.ajax({
	url : "${APP_PATH}/user/adminMessage.do",
	type : "post",
	success : function(result) {
		
		 $("#adminuserId2").val(result.extend.userMessage.userId);
		 $("#adminname2").val(result.extend.userMessage.userName);
		 $("#adminemail2").val(result.extend.userMessage.email);
		 $("#adminphone2").val(result.extend.userMessage.phone);
		 $("#adminpassword2").val(result.extend.userMessage.password);	 
		 $(document).on("click",".updateSave",function(){
       var userId=$("#insertUserId").val();
				var userName= $("input[id=adminname2]").val();
				var email= $("input[id=adminemail2]").val();
				var phone= $("input[id=adminphone2]").val();
				var password= $("input[id=adminpassword2]").val();
				var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
        if(userId==""){
		    		  layer.msg('<span style="font-size: 15px;">工资编号不能为空</span>',{
		   				 offset:'225px',
		   				 area:['230px', '70px'],
		   				 time: 1000,
		   				});  
		     		   return false;
		    		  
		    	  }
            if(password==""){
		    		   layer.msg('<span style="font-size: 15px;">密码不能为空</span>',{
		    				 offset:'225px',
		    				 area:['230px', '70px'],
		    				 time: 1000,
		    				});  
		      		   return false;
		    	   }
				if(!regEmail.test(email)&&email!=""){
					 layer.msg('<span style="font-size: 15px;">邮箱格式不正确</span>',{
						 offset:'225px',
						 area:['230px', '70px'],
						 time: 2000,
						});  
					 return false;
					
				}else{
					
					$.ajax({
						
						url:"${APP_PATH}/user/adminSave.do",
						type:"post",
						data:{
              "userId":userId,
							"userName":userName,
							"email":email,
							"phone":phone,
							"password":password
						},
						
						success:function(result){
							
						}
	            	});
					
				}
				
				
				 layer.msg('<span style="font-size: 15px;">修改成功</span>',{
					 offset:'225px',
					 area:['230px', '70px'],
					 time: 2000,
					});  
						 
			});
	}});
	
</script>
</body>
</html>