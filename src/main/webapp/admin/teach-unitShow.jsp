<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%
   pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>教学科研统计</title>
<meta name="description" content="这是一个form页面">
<meta name="keywords" content="form">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="${APP_PATH }/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="${APP_PATH }/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="${APP_PATH }/css/amazeui.min.css" />
<link rel="stylesheet" href="${APP_PATH }/css/admin.css">
<script>
	function addtr(){
		var tbodyEle = document.getElementById("tbo1");
		var trEle = document.createElement("tr");
		var selectEle = document.createElement("select");
				
		var optionNode = document.createTextNode("请选择");
		var optionEle = document.createElement("option");
		optionEle.appendChild(optionNode);
		var optionNode1 = document.createTextNode("农学院");
		var optionEle1 = document.createElement("option");
		optionEle1.appendChild(optionNode1);
		var optionNode2 = document.createTextNode("林学院");
		var optionEle2 = document.createElement("option");
		optionEle2.appendChild(optionNode2);
		var optionNode3 = document.createTextNode("软件学院");
		var optionEle3 = document.createElement("option");
		optionEle3.appendChild(optionNode3);
		var optionNode4 = document.createTextNode("经管学院");
		var optionEle4 = document.createElement("option");
		optionEle4.appendChild(optionNode4);
		var optionNode5 = document.createTextNode("动科院");
		var optionEle5 = document.createElement("option");
		optionEle5.appendChild(optionNode5);
		selectEle.appendChild(optionEle);
		selectEle.appendChild(optionEle1);
		selectEle.appendChild(optionEle2);
		selectEle.appendChild(optionEle3);
		selectEle.appendChild(optionEle4);
		selectEle.appendChild(optionEle5);
		for(var i = 0;i<12;i++){
			var tdEle = document.createElement("td");
			if(i==2){
				tdEle.appendChild(selectEle);
			}
			trEle.appendChild(tdEle);
		}
		tbodyEle.appendChild(trEle);
	}
</script>
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

		<button
			class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
			data-am-collapse="{target: '#topbar-collapse'}">
			<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
		</button>

		<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

			<ul
				class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
				<li><a href="javascript:;"><span class="am-icon-envelope-o"></span>
						收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
				<li class="am-dropdown" data-am-dropdown><a
					class="am-dropdown-toggle" data-am-dropdown-toggle
					href="javascript:;"> <span class="am-icon-users"></span> 管理员 <span
						class="am-icon-caret-down"></span>
				</a>
					<ul class="am-dropdown-content">
						<li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
						<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
						<li><a href="#"><span class="am-icon-power-off"></span>
								退出</a></li>
					</ul></li>
				<li><a href="javascript:;" id="admin-fullscreen"><span
						class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
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
				<div class="am-fl am-cf">
					<strong class="am-text-primary am-text-lg">教学科研</strong> / <small>定量评分统计表（处级领导班子）</small>
				</div>
			</div>

			<div class="am-g">
               <form action="" method="">
                <div class="am-u-sm-12">
                    <!-- <h2 class="am-text-center am-text-xxxl am-margin-top-lg">404. Not Found</h2> -->
                    <!-- <p class="am-text-center">测 评 要 素</p> -->
                    <table id="teachExcel" class="am-table am-table-bordered am-table-centered am-table-radius am-table-striped" style="table-layout:fixed;text-align: center;">
						<tbody id="tbo1">
							<tr>
								<td colspan="${1+1+1+fn:length(Toptions)*2+1 }" class="am-text-center">
									江西农业大学${year }年度教学科研单位定量评分统计表（处级领导班子）
								</td>
							</tr>
							<tr>
								<td rowspan="2">序号</td>
								<td rowspan="2">组别</td>
								<td rowspan="2">考核单位</td>
								<c:forEach items="${Toptions}" var="option">
									<td colspan="2">${option.optionName}</td>
								</c:forEach>
								<!-- <td>教学</td>
								<td>科研</td>
								<td>学科与研究生</td>
								<td>人才</td>
								<td>学生工作</td>				
								<td>就业（考研）</td>
								<td>党团</td>
								<td>党风廉政建设</td>
								<td>综治</td> -->
								<td rowspan="2">${year }年度定量评价总得分</td>
							</tr>
							<tr>
								<c:forEach items="${Toptions}" var="option">
									<td>评分</td>
								    <td>折算</td>
								</c:forEach>
							</tr>
							<c:forEach items="${Tdepartments}" var="department" varStatus="s">
								<tr>
							    <td>1</td>
							    <td>${department.departmentId}</td>
							    <td>${department.departmentName}</td>
							    <c:forEach items="${lists[s.count -1] }" var="quantify">
							    	<td>${quantify.grade }</td>
							    	<td>${quantify.getGrade }</td>
							    </c:forEach>
						        <td>${listSum[s.count-1]}</td>
							 </tr>
							</c:forEach>
						</tbody>
						<!-- <tbody>
                        	<tr>
	                            <td>
									<button id="btn" type="button" onclick="addtr()" class="am-btn am-btn-primary am-btn-xs">添加</button>
	                            </td>
	                        </tr>
                        </tbody> -->
               		</table>
               </div>
               </form>             
			</div>
			<div class="am-margin">
				<button id="teachExcelButton" type="button" class="am-btn am-btn-primary am-btn-xs">导出excel</button>
			</div>
		</div>
		<!-- content end -->
	</div>
	<footer>
		<hr>
		<p class="am-padding-left">© 2018 江西农业大学.蓝点工作室</p>
	</footer>
	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="${APP_PATH }/js/jquery.min.js"></script>
	<script src="${APP_PATH }/js/amazeui.min.js"></script>
	<!--<![endif]-->
	<script src="${APP_PATH }/js/app.js"></script>
	<script src="${APP_PATH }/js/jquery.table2excel.js"></script>
	<script>
		$("#teachExcelButton").click(function(){
			console.log(1)
			$("#teachExcel").table2excel({
		        exclude: ".noExl",
		        name: "Excel Document Name",
		        filename: "${year}教学科研类定量表",
		        exclude_img: true,
		        exclude_links: true,
		        exclude_inputs: true
		    });
		})
	</script>
</body>
</html>
