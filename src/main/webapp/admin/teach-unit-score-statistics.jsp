<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   pageContext.setAttribute("APP_PATH",request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>领导班子(单位)评分统计</title>
  <meta name="description" content="这是一个 index 页面">
  <meta name="keywords" content="index">
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
        <p>单位民主测评必须于2018-12-22之前完成，请相关人员督促到位。—— 组织部</p>
      </div>
    </div>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-tag"></span> jxau</p>
        <p>Welcome to the JXAU!</p>
      </div>
    </div>
  </div>
  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">领导班子(单位)</strong> / <small>评分统计</small></div>
    </div>

    <div class="am-g">
      <!--<div class="am-u-md-3">
		  <button type="submit" class="am-btn am-btn-primary am-btn-block">导出单位信息模板</button>
	  </div>
	  <div class="am-u-md-3">
		  <button type="submit" class="am-btn am-btn-primary am-btn-block">导入单位信息</button>
	   </div>-->

      <div class="am-u-sm-12">
      	<hr/>
        <table class="am-table am-table-bordered am-table-radius am-table-striped">
          <thead>
          <tr>
            <th rowspan="4">序号</th><th rowspan="4">单位名称</th><th colspan="14">定性评分(40%)</th><th colspan="2" rowspan="3">定量评分(60%)</th><th rowspan="4">年度考核总得分</th>
          </tr>
          <tr>
            <th colspan="2">校领导评分</th><th colspan="6">单位测评</th><th colspan="6">学校民主测评</th>
          </tr>
          <tr>
            <th rowspan="2">得分</th><th rowspan="2">折算得分(10%)</th><th colspan="4">综合评价票数</th><th colspan="2">群众评分</th><th colspan="4">综合评价票数</th><th colspan="2">群众评分</th>
          </tr>
          <tr>
            <th>好(90分)</th><th>较好(75分)</th><th>一般(60分)</th><th>较差(40分)</th><th>得分</th><th>折算得分(20%)</th>
            <th>好(90分)</th><th>较好(75分)</th><th>一般(60分)</th><th>较差(40分)</th><th>得分</th><th>折算得分(10%)</th>
            <th>得分</th><th>折算得分(60%)</th>
          </tr>
          </thead>
          <tbody id="tbo">
	          
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
<script type="text/javascript">
	$(document).ready(function(){	    
	    $.ajax({
	        url:'../yearscore/loadteach.do',
	        data:{},
	        datatype:'json',
	        type:'post',
	        success:function(data){      
	            console.log(data);
	           if(data.length==0){
	               alert("未获取到评分数据，请稍后重试！");
	           }else{
	               for(var gradeview in data){
	                   var addtr = '<tr><td>'+data[gradeview].viewID+'</td><td>'+data[gradeview].departmentName+'</td><td>'+data[gradeview].leaderScore+'</td><td>'+data[gradeview].leaderScore_rate+'</td><td>'+data[gradeview].departmentInnerVote.good+'</td><td>'+data[gradeview].departmentInnerVote.lessGood+'</td><td>'+data[gradeview].departmentInnerVote.common+'</td><td>'+data[gradeview].departmentInnerVote.bad+'</td><td>'+data[gradeview].departmentInnerVote.sum+'</td><td>'+data[gradeview].departmentInnerScore_rate+'</td><td>'+data[gradeview].schoolVote.good+'</td><td>'+data[gradeview].schoolVote.lessGood+'</td><td>'+data[gradeview].schoolVote.common+'</td><td>'+data[gradeview].schoolVote.bad+'</td><td>'+data[gradeview].schoolVote.sum+'</td><td>'+data[gradeview].schoolVoteScore_rate+'</td><td>'+data[gradeview].quantifyScore+'</td><td>'+data[gradeview].quantifySocre_rate+'</td><td>'+data[gradeview].departmentYearScore+'</td></tr>';	
	                   $("#tbo").append(addtr);
	               }
	           }                                                   
	        }        
	    })     　　
	  });
</script>
</body>
</html>
