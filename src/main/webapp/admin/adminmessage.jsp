<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
      pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>管理员信息</title>
  <meta name="description" content="这是一个 index 页面">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="${APP_PATH}/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="${APP_PATH}/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="${APP_PATH}/css/amazeui.min.css"/>
  <link rel="stylesheet" href="${APP_PATH}/css/admin.css">
   <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
	<script src="https://cdn.bootcss.com/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script> 
	<script src="https://cdn.bootcss.com/layer/2.3/layer.js"></script> 
	<script src="${APP_PATH}/js/app.js"></script>
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
        
		<a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;"> <span class="am-icon-users"></span> 管理员 </a>   
      </li>
      <li><li><a href="${APP_PATH  }/user/loginout.do"><span class="am-icon-power-off"></span> 退出</a></li></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="${APP_PATH }/admin/index.jsp"><i class="am-icon-home am-margin-left-sm"></i> 首页</a></li>
      <li><a href="${APP_PATH }/admin/adminmessage.jsp"><i class="am-icon-check am-margin-left-sm"></i> 个人资料</a></li>
      <li><a href="${APP_PATH }/admin/user-manage.jsp"><i class="am-icon-user am-margin-left-sm"></i> 用户管理</a></li>
      <li><a href="${APP_PATH }/admin/cadre-info.jsp"><i class="am-icon-archive am-margin-left-sm"></i> 处级干部信息</a></li>
      <li><a href="${APP_PATH }/quantify/groupUser.do"><i class="am-icon-bookmark  am-margin-left-sm"></i> 单位分组设置</a></li>
      <li class="am-panel">
	    <a data-am-collapse="{parent: '#collapase-nav-1', target: '#leader-nav'}">
	        <i class="am-icon-paint-brush am-margin-left-sm"></i> 校领导打分 <i class="am-icon-angle-right am-fr am-margin-right"></i>
	    </a>
	    <ul class="am-list am-collapse admin-sidebar-sub" id="leader-nav">
	        <li><a href="${APP_PATH }/admin/leader-grade-cadre.jsp"><i class="am-icon-location-arrow am-margin-left-sm"></i> 正职评分 </a></li>
	        <li><a href="${APP_PATH }/admin/leader-grade-department.jsp"><i class="am-icon-location-arrow am-margin-left-sm"></i> 领导班子评分 </a></li>
	    </ul>
	  </li>
	  <li class="am-panel">
	    <a data-am-collapse="{parent: '#collapase-nav-1', target: '#dx-set-nav'}">
	        <i class="am-icon-area-chart am-margin-left-sm"></i> 定量设置 <i class="am-icon-angle-right am-fr am-margin-right"></i>
	    </a>
	    <ul class="am-list am-collapse admin-sidebar-sub" id="dx-set-nav">
	        <li><a href="${APP_PATH }/quantify/quantifyInit.do"><i class="am-icon-location-arrow am-margin-left-sm"></i>定量初始化设置</a></li>
	        <li><a href="${APP_PATH }/quantify/quantifyIndex.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 评分比例设置</a></li>
      		<li><a href="${APP_PATH }/quantify/quantifyUpdate.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 评分更新设置</a></li>
      		<li><a href="${APP_PATH }/quantify/teacherUnitProportion.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 教学科研单位评分比例设置</a></li>
      		<li><a href="${APP_PATH }/quantify/managerUnitProportion.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 管理服务单位评分比例设置</a></li>
	    </ul>
	  </li>
	  <li class="am-panel">
	    <a data-am-collapse="{parent: '#collapase-nav-1', target: '#dx-grade-nav'}">
	        <i class="am-icon-bars am-margin-left-sm"></i> 定量统计<i class="am-icon-angle-right am-fr am-margin-right"></i>
	    </a>
	    <ul class="am-list am-collapse admin-sidebar-sub" id="dx-grade-nav">
	        <li><a href="${APP_PATH }/quantify/teacherUintGrade.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 教学科研单位评分</a></li>
	        <li><a href="${APP_PATH }/quantify/managerUintGrade.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 管理服务单位评分</a></li>      
	        <li><a href="${APP_PATH }/quantify/teacherUnit.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 教学科研单位信息</a></li>
	        <li><a href="${APP_PATH }/quantify/managerUnit.do"><i class="am-icon-location-arrow am-margin-left-sm"></i> 管理服务单位信息</a></li>
	    </ul>
	  </li>
	  <li class="am-panel">
	    <a data-am-collapse="{parent: '#collapase-nav-1', target: '#yearall-nav'}">
	        <i class="am-icon-users am-margin-left-sm"></i> 年度评分汇总统计 <i class="am-icon-angle-right am-fr am-margin-right"></i>
	    </a>
	    <ul class="am-list am-collapse admin-sidebar-sub" id="yearall-nav">
	        <li><a href="${APP_PATH }/admin/teach-unit-score-statistics.jsp"><i class="am-icon-location-arrow am-margin-left-sm"></i> 教学单位年度评分 </a></li>
	        <li><a href="${APP_PATH }/admin/manage-unit-score-statistics.jsp"><i class="am-icon-location-arrow am-margin-left-sm"></i> 管理单位年度评分 </a></li>
	        <li><a href="${APP_PATH }/admin/chief-score-statistics.jsp"><i class="am-icon-location-arrow am-margin-left-sm"></i> 正职年度评分 </a></li>
	        <li><a href="${APP_PATH }/admin/subchief-score-statistics.jsp"><i class="am-icon-location-arrow am-margin-left-sm"></i> 副职年度评分</a></li>
	    </ul>
	  </li>      
    </ul>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-bookmark"></span> 公告</p>
        <p>年度考核过程中相关人员务必公平公正对待。—— 组织部</p>
      </div>
    </div>

    <!--<div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-tag"></span> jxau</p>
        <p>Welcome to the JXAU!</p>
      </div>
    </div>-->
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
            <label for="user-name"  class="am-u-sm-3 am-form-label">编号</label>
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

         <!--  <div class="am-form-group">
            <label for="user-QQ" class="am-u-sm-3 am-form-label">新密码</label>
            <div class="am-u-sm-9">
              <input type="password" id="user-QQ" placeholder="输入新密码">
            </div>
          </div> -->
          <div class="am-form-group">
            <div class="am-u-sm-9 am-u-sm-push-3" id="adminsave">
            <button type="button" class="am-btn am-btn-primary updateSave">保存修改</button> 
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
		 $("#adminuserId2").val(result.extend.userMessage.userId);
		 $("#adminname2").val(result.extend.userMessage.userName);
		 $("#adminemail2").val(result.extend.userMessage.email);
		 $("#adminphone2").val(result.extend.userMessage.phone);
		 $("#adminpassword2").val(result.extend.userMessage.password);	 
		 $(document).on("click",".updateSave",function(){
			 var userId =$("input[id=adminuserId2]").val();
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