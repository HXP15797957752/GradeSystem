<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>评分比例设置</title>
  <meta name="description" content="这是一个form页面">
  <meta name="keywords" content="form">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="/GradeSystem/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="/GradeSystem/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="/GradeSystem/css/amazeui.min.css"/>
  <link rel="stylesheet" href="/GradeSystem/css/admin.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>Amaze</strong> <small>后台管理模板</small>
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
				<li><a href="admin-index.html"><span class="am-icon-home"></span>
						首页</a></li>
				<li class="admin-parent"><a class="am-cf"
					data-am-collapse="{target: '#collapse-nav'}"><span
						class="am-icon-file"></span> 定性模块 <span
						class="am-icon-angle-right am-fr am-margin-right"></span></a>
					<ul class="am-list am-collapse admin-sidebar-sub am-in"
						id="collapse-nav">
						<li><a href="admin-user.html" class="am-cf"><span
								class="am-icon-check"></span> 个人资料<span
								class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
						<li><a href="admin-help.html"><span
								class="am-icon-puzzle-piece"></span> 帮助页</a></li>
						<li><a href="admin-gallery.html"><span class="am-icon-th"></span>
								相册页面<span
								class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
						<li><a href="admin-log.html"><span
								class="am-icon-calendar"></span> 系统日志</a></li>
						<li><a href="admin-404.html"><span class="am-icon-bug"></span>
								404</a></li>
					</ul></li>
				<li><a href="admin-table.html"><span class="am-icon-table"></span>
						表格</a></li>
				<li><a href="admin-form.html"><span
						class="am-icon-pencil-square-o"></span> 表单</a></li>
				<li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
			</ul>

			<div class="am-panel am-panel-default admin-sidebar-panel">
				<div class="am-panel-bd">
					<p>
						<span class="am-icon-bookmark"></span> 公告
					</p>
					<p>时光静好，与君语；细水流年，与君同。—— Amaze UI</p>
				</div>
			</div>

			<div class="am-panel am-panel-default admin-sidebar-panel">
				<div class="am-panel-bd">
					<p>
						<span class="am-icon-tag"></span> wiki
					</p>
					<p>Welcome to the Amaze UI wiki!</p>
				</div>
			</div>
		</div>
<!-- sidebar end -->

<!-- content start -->
<div class="admin-content">

  <!--<div class="am-cf am-padding">
    <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">表单</strong> / <small>form</small></div>
  </div>-->

  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li class="am-active"><a href="#tab1">教学科研单位</a></li>
      <li><a href="#tab2">管理服务单位</a></li>
       <li><a href="#tab3">单位添加</a></li>
      <li><a href="#tab4">教学科研评分选项添加</a></li>
      <li><a href="#tab5">管理服务评分选项添加</a></li>
      <li><a href="#tab6">评分选项</a></li>
      <li><a href="#tab7">评分选项添加</a></li>
    </ul>

    <div class="am-tabs-bd">
    	<!--教学科研start-->
      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
				<div class="am-g am-margin-top">
				<div class="am-u-sm-12">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>序号</th><th>单位</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
			          <c:forEach items="${teacherDepartments}" var="teacherDepartment">
		          	  <tr>
			          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="teacherDepartmentId" value="${teacherDepartment.departmentId}" readonly="true"></td>
				        <td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="teacherDepartmentName" value="${teacherDepartment.departmentName}"></td>
			            <td>
			            	<button type="button" class="am-btn am-btn-primary am-btn-xs">修改</button>
							<button type="button" class="am-btn am-btn-primary am-btn-xs">删除</button>
			            </td>
			          </tr>	
		          	</c:forEach>	
			          
		          </tbody>
		        </table>
		      </div>
				</div>
         </div>
<!--      教学科研end-->
<!--    管理服务start-->
      <div class="am-tab-panel am-fade" id="tab2">                         
          <div class="am-u-sm-12">
            <div class="am-g am-margin-top">
              <form class="am-form">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>序号</th><th>单位</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
		          	<c:forEach items="${manageDepartments}" var="manageDepartment">
		          	  <tr>
			          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="manageDepartmentId" value="${manageDepartment.departmentId}" readonly="true"></td>
				          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="manageDepartmentName" value="${manageDepartment.departmentName}"></td>
			            <td>
			            	<button type="button" class="am-btn am-btn-primary am-btn-xs">修改</button>
							<button type="button" class="am-btn am-btn-primary am-btn-xs">删除</button>
			            </td>
			          </tr>	
		          	</c:forEach>		        		          
		          </tbody>
		        </table>
		       </form>
		     </div>
          </div> 
      </div>
       <!--   单位添加 start-->
      <div class="am-tab-panel am-fade" id="tab3">                         
          <div class="am-u-sm-12">
            	<div class="am-g am-margin-top">
                <form class="am-form" action="/GradeSystem/quantify/addDepartment.do">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>单位选项名</th>
		          </tr>
		          </thead>
		          <tbody>
			          <tr>
			          	<td><input type="text" style="width:90%;border:none;"placeholder="请输入增加单位名" name="departmentName"></td>        
			          </tr>
			          <tr>
			          	<td>
			          		<select name="gradingUnitId">
			          			<option selected="selected" value="1">==请选择单位==</option>
			          			<option value="1">教学科研</option>
			          			<option value="2">服务管理</option>
			          		</select>
			          	</td>  
			          </tr>	
			          <tr>
			          	<td>
							<button type="submit" class="am-btn am-btn-primary am-btn-xs">添加</button>
			            </td>	
			          </tr>	          
		          </tbody>
		        </table>
		       </form>
		      </div>
          </div>  
      </div>
<!--   教学评分选项start-->
      <div class="am-tab-panel am-fade" id="tab4">                         
          <div class="am-u-sm-12">
            	<div class="am-g am-margin-top">
            		<form class="am-form">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>教学评分选项添加</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
			          <tr>
			          	<td>
				          	<select name="teacherId">
				          		<c:forEach items="${teacherOptions}" var="teacherOption">
				          			<option value="${teacherOption.id }">${teacherOption.optionName }</option>
				          		</c:forEach>
				          	</select>
			          	</td>
			            <td>
							<button type="submit" class="am-btn am-btn-primary am-btn-xs">添加</button>
			            </td>
			          </tr>		          
		          </tbody>
		        </table>
		       </form>
		      </div>
          </div>  
      </div>
      <!--   管理服务评分选项添加 start-->
      <div class="am-tab-panel am-fade" id="tab5">                         
          <div class="am-u-sm-12">
            <div class="am-g am-margin-top">
               <form class="am-form">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>管理服务评分选项名</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
			          <tr>
			          	<td><!-- <input type="text" style="width:90%;border:none;"placeholder="请输入增加管理服务评分选项名" name="user9"> -->
			          		<select id="manageOption" name="manageId"> 
			          			<c:forEach items="${manageOptions}" var="manageOption">
			          				<option value="${manageOption.id }">${manageOption.optionName}</option>
			          			</c:forEach>
			          		</select>
			          	</td>
			            <td>
							<button type="submit" class="am-btn am-btn-primary am-btn-xs">添加</button>
			            </td>
			          </tr>		          
		          </tbody>
		        </table>
		       </form>
		      </div>
          </div>  
      </div>
      <!--   评分选项start-->
      <div class="am-tab-panel am-fade" id="tab6">                         
          <div class="am-u-sm-12">
            	<div class="am-g am-margin-top">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>序号</th><th>评分选项名</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
			          <c:forEach items="${options }" var="option">
			          	 <tr>
				          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="id" value="${option.id}" readonly="true"></td>
				          	<td><input type="text" style="width:100%;border:none;"placeholder="请输入" name="optionName" value="${option.optionName}"></td>
				            <td>
				            	<button type="button" class="am-btn am-btn-primary am-btn-xs">修改</button>
								<button type="button" class="am-btn am-btn-primary am-btn-xs">删除</button>
				            </td>
				          </tr>
			          </c:forEach>
		          </tbody>
		        </table>
		      </div>
          </div>  
      </div>
      
       <!--   评分选项添加 start-->
      <div class="am-tab-panel am-fade" id="tab7">                         
          <div class="am-u-sm-12">
            	<div class="am-g am-margin-top">
                <form class="am-form" action="/GradeSystem/quantify/addoption.do">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <thead>
		          <tr>
		            <th>评分选项名</th><th>操作</th>
		          </tr>
		          </thead>
		          <tbody>
			          <tr>
			          	<td><input type="text" style="width:90%;border:none;"placeholder="请输入增加选项名" name="optionName"></td>
			            <td>
							<button type="submit" class="am-btn am-btn-primary am-btn-xs">添加</button>
			            </td>
			          </tr>		          
		          </tbody>
		        </table>
		       </form>
		      </div>
          </div>  
      </div>
      
    </div>
  </div>

  <!--<div class="am-margin">
    <button type="button" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
    <button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
  </div>-->
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
<script src="/GradeSystem/js/polyfill/rem.min.js"></script>
<script src="/GradeSystem/js/polyfill/respond.min.js"></script>
<script src="/GradeSystem/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="/GradeSystem/js/jquery.min.js"></script>
<script src="/GradeSystem/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="/GradeSystem/js/app.js"></script>
</body>
</html>
