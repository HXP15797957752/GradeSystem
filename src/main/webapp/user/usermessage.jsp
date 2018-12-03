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


  <!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>江西农业大学</strong> <small>年度考核评分系统</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="admin-index.html"><span class="am-icon-home"></span> 首页</a></li>
      <li><a href="admin-user.html"><span class="am-icon-check"></span> 个人资料</a></li>
      <li><a href="grade-table.html"><span class="am-icon-map-marker"></span> 民主测评统计</a></li>
      <li><a href="teach-unit.html"><span class="am-icon-table"></span> 教学科研统计</a></li>
      <li><a href="manage-unit.html"><span class="am-icon-table"></span> 管理服务统计</a></li>
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
            <label for="user-name" class="am-u-sm-3 am-form-label">姓名</label>
            <div class="am-u-sm-9" id="adminname">
              <!-- <input type="text" id="user-name" placeholder="姓名 "> -->
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">电子邮箱</label>
            <div class="am-u-sm-9" id="adminemail">
              <!-- <input type="email" id="user-email" placeholder="输入你的电子邮箱 "> -->
            </div>
          </div>
          
          <div class="am-form-group">
            <label for="user-email" class="am-u-sm-3 am-form-label">手机号码</label>
            <div class="am-u-sm-9" id="adminphone">
              <!-- <input type="email" id="user-phone" placeholder="输入你的手机号码 "> -->
            </div>
          </div>

          <div class="am-form-group">
            <label for="user-phone" class="am-u-sm-3 am-form-label">修改密码</label>
            <div class="am-u-sm-9" id="adminpassword">
             <!--  <input type="password"  placeholder="密码"> -->
            </div>
          </div>

         <!--  <div class="am-form-group">
            <label for="user-QQ" class="am-u-sm-3 am-form-label">新密码</label>
            <div class="am-u-sm-9">
              <input type="password" id="user-QQ" placeholder="输入新密码">
            </div>
          </div> -->
          <div class="am-form-group">
            <div class="am-u-sm-9 am-u-sm-push-3" id="adminsave">
              <!-- <button type="button" class="am-btn am-btn-primary">保存修改</button> -->
            </div>
          </div>
        </form>
      </div>
           
           <!--    <table>
                 <tr>
                   <td></td>
                   <td></td>
                 </tr>
                 <tr>
                    <td></td>
                   <td></td>
                 </tr>
                 <tr>
                     <td></td>
                   <td></td>
                 </tr>
                 <tr>
                     <td></td>
                   <td></td>
                 </tr>
                 <tr>
                     <td></td>
                   <td></td>
         
                 </tr>
              </table>
       -->
      
    </div>
  </div>
  <!-- content end -->

</div>

<footer>
  <hr>
  <p class="am-padding-left">© 2018 江西农业大学.蓝点工作室</p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="js/polyfill/rem.min.js"></script>
<script src="js/polyfill/respond.min.js"></script>
<script src="js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<!-- <script src="js/jquery.min.js"></script>
<script src="js/amazeui.min.js"></script>
<![endif]
<script src="js/app.js"></script> -->

<script type="text/javascript">
     
$.ajax({
	url : "${APP_PATH}/user/adminMessage.do",
	type : "post",
	success : function(result) {
		
		 $("#adminname").append("<input type='text' id='adminname2' readonly='readonly' value='"+result.extend.userMessage.userName+"'>");
		 $("#adminemail").append("<input type='text' id='adminemail2'  value='"+(result.extend.userMessage.email==null?"无":result.extend.userMessage.email)+"'>");
		 $("#adminphone").append("<input type='text' id='adminphone2'  value='"+(result.extend.userMessage.phone==null?"无":result.extend.userMessage.phone)+"'>");
		 $("#adminpassword").append("<input type='password' id='adminpassword2'  value='"+result.extend.userMessage.password+"'>");  
		 $("#adminsave").append("<button></button>").addClass("am-btn am-btn-primary updateSave").append("修改保存");
		 $(document).on("click",".updateSave",function(){
				var userName= $("input[id=adminname2]").val();
				var email= $("input[id=adminemail2]").val();
				var phone= $("input[id=adminphone2]").val();
				var password= $("input[id=adminpassword2]").val();
				var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
				if(!regEmail.test(email)){
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