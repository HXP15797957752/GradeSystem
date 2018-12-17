<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>单位管理</title>
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
  <link rel="stylesheet" type="text/css" href="${APP_PATH}/js/jquery-easyui-1.5.5.4/easyui.css">
  <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
	<script type="text/javascript" src="${APP_PATH}/js/jquery-easyui-1.5.5.4/jquery.easyui.min.js"></script>
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
	        <li><a href="leader-grade-cadre.html"><i class="am-icon-location-arrow am-margin-left-sm"></i> 正职评分 </a></li>
	        <li><a href="leader-grade-department.html"><i class="am-icon-location-arrow am-margin-left-sm"></i> 领导班子评分 </a></li>
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
	        <li><a href="teach-unit-score-statistics.html"><i class="am-icon-location-arrow am-margin-left-sm"></i> 教学单位年度评分 </a></li>
	        <li><a href="manage-unit-score-statistics.html"><i class="am-icon-location-arrow am-margin-left-sm"></i> 管理单位年度评分 </a></li>
	        <li><a href="chief-score-statistics.html"><i class="am-icon-location-arrow am-margin-left-sm"></i> 正职年度评分 </a></li>
	        <li><a href="subchief-score-statistics.html"><i class="am-icon-location-arrow am-margin-left-sm"></i> 副职年度评分</a></li>
	    </ul>
	  </li>      
    </ul>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-bookmark"></span> 公告</p>
        <p>单位民主测评必须于2018-12-22之前完成，请相关人员督促到位。—— 组织部</p>
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
  <!-- sidebar end -->
   <div  class="am-modal  am-modal-alert"  tabindex="-1" id="userUpdateModal" >
             <div  class="am-modal-dialog">
          <div class="am-modal-hd" style="border-bottom:1px solid solid;">
              用户信息修改
          </div>
          <div class="am-modal-bd">
              <form class="am-form">
                  <div class="am-g am-margin-top">
                      <div class="am-u-sm-4 am-u-md-4 am-text-right">
                          工资编号:
                      </div>
                      <div class="am-u-sm-8 am-u-md-8 am-u-end col-end">
                          <input name="userId" class="am-input-sm" type="text" id="userIdUpdate">
                      </div>
                  </div>
                  <div class="am-g am-margin-top">
                      <div class="am-u-sm-4 am-u-md-4 am-text-right">
                          姓名:
                      </div>
                      <div class="am-u-sm-8 am-u-md-8 am-u-end col-end">
                          <input name="userName" readonly="readonly" class="am-input-sm" type="text" id="userNameUpdate">
                      </div>
                  </div>
                  <div class="am-g am-margin-top">
                      <div class="am-u-sm-4 am-u-md-4 am-text-right">
                        密码:
                      </div>
                      <div class="am-u-sm-8 am-u-md-8 am-u-end col-end">
                          <input name="password" class="am-input-sm" type="text" id="passwordUpdate">
                      </div>
                  </div>
                   <div class="am-g am-margin-top">
                      <div class="am-u-sm-4 am-u-md-4 am-text-right">
                        电子邮箱:
                      </div>
                      <div class="am-u-sm-8 am-u-md-8 am-u-end col-end">
                          <input name="email" class="am-input-sm" type="text" id="emailUpdate">
                      </div>
                  </div>
                   <div class="am-g am-margin-top">
                      <div class="am-u-sm-4 am-u-md-4 am-text-right">
                       手机号码:
                      </div>
                      <div class="am-u-sm-8 am-u-md-8 am-u-end col-end">
                          <input name="phone" class="am-input-sm" type="text" id="phoneUpdate">
                      </div>
                  </div>
               <div class="am-modal-footer">
                    <span class="am-modal-btn " id="user_update_btn">确定</span>
                    <span class="am-modal-btn" data-am-modal-cancel>关闭</span>     
                </div>
              </form>
          </div>
      </div>

        </div>      

  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户管理</strong> / <small>设置用户</small></div>
    </div>

     <div class="am-g">
      <!--  <div class="am-u-sm-12">
      	添加用户<hr />
      </div> -->
	  <div class="am-u-md-3" id="addUser">
	  	添加用户<br>
		    <form class="am-form">
		      <fieldset class="am-form-set">
		         <input name="userId" id="insertUserId" type="text" placeholder="工资编号">
		        <input name="userName" id="insertUserName" type="text" placeholder="姓名">
		        <input name="password" id="insertPassword" type="password" placeholder="密码">
		        <input name="email" id="insertEmail" type="text" placeholder="电子邮箱">
		        <input name="phone" id="insertPhone" type="text" placeholder="手机号码">
		      </fieldset>
		      <button  id="addUserForm" class="am-btn am-btn-primary am-btn-block">添加账号</button>
		    </form>
	   </div>

      <div class="am-u-sm-9">
      	用户列表<br>
        <table class="am-table am-table-bordered am-table-radius am-table-striped" id="userstable">
          <thead>
          <tr>
            <th>序号</th><th>工资编号</th><th>姓名</th><th>密码</th><th>电子邮箱</th><th>手机号码</th><th>操作</th>
          </tr>
          </thead>
          <tbody>
	        
          </tbody>
        </table>
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

       $("#addUserForm").click(function(){
    	  var userId=$("#insertUserId").val();
    	  var userName= $("#insertUserName").val();
    	  var password=$("#insertPassword").val();
    	  var email=$("#insertEmail").val();
    	  var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
    	  if(userId==""){
    		  layer.msg('<span style="font-size: 15px;">工资编号不能为空</span>',{
   				 offset:'225px',
   				 area:['230px', '70px'],
   				 time: 1000,
   				});  
     		   return false;
    		  
    	  }
    	   if(userName==""){
    		   layer.msg('<span style="font-size: 15px;">用户名不能为空</span>',{
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
					 time: 1000,
					});  
				 return false;
				
			}
    	   $.ajax({
				url:"${APP_PATH}/user/insertUser.do",
				type:"post",
				data:$("#addUser form").serialize(),
				dataType:"json",
				success:function(result){
					$("#insertUserName").val(result.extend.insertUser.userName);
					$("#insertPassword").val(result.extend.insertUser.password);
					var email=result.extend.insertUser.email;
					var phone=result.extend.insertUser.phone;
					$("#insertEmail").val(email);
					$("#insertPhone").val(phone);
					
				}});
    	   layer.msg('<span style="font-size: 15px;">添加成功</span>',{
				 offset:'225px',
				 area:['230px', '70px'],
				 time: 1000,
				 end: function () {
					 window.location.href="${APP_PATH}/admin/user-manage.jsp";
					 }
				});  
    	 
    	   return false;
    	
    	   });
         
       $("#insertUserName").change(function(){
       	var userName = this.value;
			$.ajax({
				url:"${APP_PATH}/user/checkUser.do",
				data:{"userName":userName},
				type:"POST",
				success:function(result){
					if(result.code==500){
						layer.msg('<span style="font-size: 15px;">用户名以被用</span>',{
			   				 offset:'225px',
			   				 area:['230px', '70px'],
			   				 time: 1000,
			   				 end:function () {
								 window.location.href="${APP_PATH}/admin/user-manage.jsp";
							 }
			   				});  
			     		  
					}
				}
			});
       });
       
        $.ajax({
        	url:"${APP_PATH}/user/selectAllUser.do",
			type:"post",
			success:function(result){
				build_users_table(result);
			}
        	
        });
        function build_users_table(result){
        	$("#userstable tbody").empty();
        	var users=result.extend.userlist;
        	$.each(users,function(index,user){
        		var userTd = $("<td></td>").append(user.id);
				var userIdTd = $("<td></td>").append(user.userId);
				var userNameTd = $("<td></td>").append(user.userName);
				var passwordTd = $("<td></td>").append(user.password);
				var emailTd = $("<td></td>").append(user.email);	
				var phoneTd = $("<td></td>").append(user.phone);	
				var editBtn = $("<button></button>").addClass("am-btn am-btn-primary am-btn-xs edit_btn").append("编辑");
				editBtn.attr("edit-id",user.id);
				var delBtn =  $("<button></button>").addClass("am-btn am-btn-danger am-btn-xs delete_btn").append("删除");
				delBtn.attr("del-id",user.id);
				var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
				$("<tr></tr>").append(userTd)
					.append(userIdTd)
					.append(userNameTd)
					.append(passwordTd)
					.append(emailTd)
					.append(phoneTd)
					.append(btnTd)
					.appendTo("#userstable tbody");
                   });
        		
        		
        	}
        	
        $(document).on("click",".delete_btn",function(){
			var id = $(this).attr("del-id");
			if(confirm("确认删除吗?")){
				$.ajax({
					url:"${APP_PATH}/user/delete.do",
					type:"post",
					data:{"id":id},
					success:function(result){
						if(result.code==200){
							layer.msg('<span style="font-size: 15px;">删除成功</span>',{
				   				 offset:'225px',
				   				 area:['230px', '70px'],
				   				 time: 1000,
				   				 end:function () {
									 window.location.href="${APP_PATH}/admin/user-manage.jsp";
								 }
				   				}); 
						}
					}
				});
			}
		});
        
        $(document).on("click",".edit_btn",function(){
			getUser($(this).attr("edit-id"));		
			$("#user_update_btn").attr("edit-id",$(this).attr("edit-id"));
			$("#userUpdateModal").modal({
				  relatedTarget: this,
		           closeViaDimmer:false,//点击遮罩层时关闭 Modal
		           closeOnConfirm:false,
		           
			});
		});
        function getUser(id){
			$.ajax({
				url:"${APP_PATH}/user/selectById.do",
				type:"post",
				data:{"id":id},
				success:function(result){
					var userData = result.extend.userMessage;
					$("#userIdUpdate").val(userData.userId);
					$("#userNameUpdate").val(userData.userName);
					$("#passwordUpdate").val(userData.password);
					$("#emailUpdate").val(userData.email);
					$("#phoneUpdate").val(userData.phone);
				}
			});
		}
        
        $("#user_update_btn").click(function(){
			var email = $("#emailUpdate").val();
			var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
			if(!regEmail.test(email)){
				layer.msg('<span style="font-size: 15px;">邮箱格式不正确</span>',{
					 offset:'225px',
					 area:['230px', '70px'],
					 time: 1000,
					});  
				return false;
			}			
			$.ajax({
				url:"${APP_PATH}/user/updateUser.do",
				type:"post",
				data:"id="+$(this).attr("edit-id")+"&"+$("#userUpdateModal form").serialize(),
				success:function(result){
					if(result.code==200){
					$("#userUpdateModal").modal("hide");
					 window.location.href="${APP_PATH}/admin/user-manage.jsp";
					}}
			});
		});
       
</script>

</body>
</html>