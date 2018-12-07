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
  <title>首页</title>
  <meta name="description" content="这是一个 index 页面">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="${APP_PATH}/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="${APP_PATH}/i/app-icon72x72@2x.png">
  <link rel="stylesheet" href="${APP_PATH}/css/amazeui.min.css"/>
  <link rel="stylesheet" href="${APP_PATH}/css/admin.css">
  <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
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
      <li><a href="${APP_PATH }/admin/index.jsp"><span class="am-icon-home"></span> 首页</a></li>
      <li><a href="${APP_PATH }/admin/adminmessage.jsp"><span class="am-icon-check"></span> 个人资料</a></li>
      <li><a href="${APP_PATH }/admin/user-manage.jsp"><span class="am-icon-map-marker"></span> 用户管理</a></li>
      <li><a href="${APP_PATH }/admin/unit-manage.jsp"><span class="am-icon-map-marker"></span> 单位管理</a></li>
      <li><a href="grade-table.html"><span class="am-icon-map-marker"></span> 校领导打分统计</a></li>
      <li><a href="unit-score-statistics.html"><span class="am-icon-map-marker"></span> 领导班级子评分统计</a></li>
      <li><a href="chief-score-statistics.html"><span class="am-icon-map-marker"></span> 正职评分统计</a></li>
      <li><a href="subchief-score-statistics.html"><span class="am-icon-map-marker"></span> 副职评分统计</a></li>
      <li><a href="/GradeSystem/quantify/quantifyIndex.do"><span class="am-icon-map-marker"></span> 评分比例设置</a></li>
      <li><a href="/GradeSystem/quantify/quantifyUpdate.do"><span class="am-icon-map-marker"></span> 评分更新设置</a></li>
      <li><a href="${APP_PATH }/admin/set-assessment-group.jsp"><span class="am-icon-table"></span> 考核分组设置</a></li>
      <li><a href="/GradeSystem/quantify/teacherUintGrade.do"><span class="am-icon-table"></span> 教学科研单位评分</a></li>
      <li><a href="/GradeSystem/quantify/managerUintGrade.do"><span class="am-icon-table"></span> 管理服务单位评分</a></li>
      <li><a href="/GradeSystem/quantify/teacherUnitProportion.do"><span class="am-icon-table"></span> 教学科研单位评分比例设置</a></li>
      <li><a href="/GradeSystem/quantify/managerUnitProportion.do"><span class="am-icon-table"></span> 管理服务单位评分比例设置</a></li>
      <li><a href="/GradeSystem/quantify/teacherUnit.do"><span class="am-icon-table"></span> 教学科研单位信息</a></li>
      <li><a href="/GradeSystem/quantify/managerUnit.do"><span class="am-icon-table"></span> 管理服务单位信息</a></li>
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

  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>一些常用模块</small></div>
    </div>

    <ul class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list ">
      <li><a href="set-score-scale.html" class="am-text-success"><span class="am-icon-btn am-icon-file-text"></span><br/>评分比例设置<br/></a></li>
      <li><a href="set-assessment-group.html" class="am-text-warning"><span class="am-icon-btn am-icon-briefcase"></span><br/>考核分组设置<br/></a></li>
      <li><a href="scan-teach-unit.html" class="am-text-danger"><span class="am-icon-btn am-icon-recycle"></span><br/>教学科研单位评分<br/></a></li>
      <li><a href="scan-manage-unit.html" class="am-text-secondary"><span class="am-icon-btn am-icon-user-md"></span><br/>管理服务单位评分<br/></a></li>
    </ul>

    <div class="am-g">
      <div class="am-u-sm-12">
        <table class="am-table am-table-bd am-table-striped admin-content-table">
          <thead>
          <tr>
            <th>序号</th><th>文件名</th><th>最后下载时间</th><th>下载次数</th><th>操作</th>
          </tr>
          </thead>
          <tbody>
          <tr><td>1</td><td>民主测评表</td><td><a href="#">2018-11-19</a></td> <td><span class="am-badge am-badge-success">+20</span></td>
            <td>
              <div class="am-dropdown" data-am-dropdown>
                <button class="am-btn am-btn-default am-btn-xs am-dropdown-toggle" data-am-dropdown-toggle><span class="am-icon-cog"></span> <span class="am-icon-caret-down"></span></button>
                <ul class="am-dropdown-content">
                  <li><a href="#">1. 编辑</a></li>
                  <li><a href="#">2. 下载</a></li>
                  <li><a href="#">3. 删除</a></li>
                </ul>
              </div>
            </td>
          </tr>
          <tr><td>2</td><td>管理服务定量评分统计表</td><td><a href="#">2018-11-06</a> </td><td><span class="am-badge am-badge-danger">+2</span></td>
            <td>
              <div class="am-dropdown" data-am-dropdown>
                <button class="am-btn am-btn-default am-btn-xs am-dropdown-toggle" data-am-dropdown-toggle><span class="am-icon-cog"></span> <span class="am-icon-caret-down"></span></button>
                <ul class="am-dropdown-content">
                  <li><a href="#">1. 更新</a></li>
                  <li><a href="#">2. 下载</a></li>
                  <li><a href="#">3. 删除</a></li>
                </ul>
              </div>
            </td>
          </tr>
          <tr><td>3</td><td>教学服务单位定量评分统计表</td><td><a href="#">2018-08-24</a></td><td><span class="am-badge am-badge-warning">+10</span></td>
            <td>
              <div class="am-dropdown" data-am-dropdown>
                <button class="am-btn am-btn-default am-btn-xs am-dropdown-toggle" data-am-dropdown-toggle><span class="am-icon-cog"></span> <span class="am-icon-caret-down"></span></button>
                <ul class="am-dropdown-content">
                  <li><a href="#">1. 编辑</a></li>
                  <li><a href="#">2. 下载</a></li>
                  <li><a href="#">3. 删除</a></li>
                </ul>
              </div>
            </td>
          </tr>
          <tr><td>4</td><td>处级干部考核名单</td><td><a href="#">2017-12-15</a></td><td><span class="am-badge am-badge-secondary">+50</span></td>
            <td>
              <div class="am-dropdown" data-am-dropdown>
                <button class="am-btn am-btn-default am-btn-xs am-dropdown-toggle" data-am-dropdown-toggle><span class="am-icon-cog"></span> <span class="am-icon-caret-down"></span></button>
                <ul class="am-dropdown-content">
                  <li><a href="#">1. 编辑</a></li>
                  <li><a href="#">2. 下载</a></li>
                  <li><a href="#">3. 删除</a></li>
                </ul>
              </div>
            </td>
          </tr>

          <tr>
            <td>5</td><td>人才工作满意度测评表</td>
            <td><a href="#">2017-11-09</a></td>
            <td><span class="am-badge">+22</span></td>
            <td>
              <div class="am-dropdown" data-am-dropdown>
                <button class="am-btn am-btn-default am-btn-xs am-dropdown-toggle" data-am-dropdown-toggle><span class="am-icon-cog"></span> <span class="am-icon-caret-down"></span></button>
                <ul class="am-dropdown-content">
                  <li><a href="#">1. 编辑</a></li>
                  <li><a href="#">2. 下载</a></li>
                  <li><a href="#">3. 删除</a></li>
                </ul>
              </div>
            </td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="am-g">
      <div class="am-u-md-6">
        <div class="am-panel am-panel-default">
          <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-4'}">考核进度要求<span class="am-icon-chevron-down am-fr" ></span></div>
          <div id="collapse-panel-4" class="am-panel-bd am-collapse am-in">
            <ul class="am-list admin-content-task">
              <li>
                <div class="admin-task-meta"> Posted on 25/1/2120 by John Clark</div>
                <div class="admin-task-bd">
                  所有工作必须在2019-1-10日之前完成，11日（星期一）将对各单位开展评先评优，及时把考核评分统计表发还给各考核小组，由个小组负责人签字后上交纸质档。
                </div>
                <div class="am-cf">
                  <div class="am-btn-toolbar am-fl">
                    <div class="am-btn-group am-btn-group-xs">
                      <button type="button" class="am-btn am-btn-default"><span class="am-icon-check"></span></button>
                      <button type="button" class="am-btn am-btn-default"><span class="am-icon-pencil"></span></button>
                      <button type="button" class="am-btn am-btn-default"><span class="am-icon-times"></span></button>
                    </div>
                  </div>
                  <div class="am-fr">
                    <button type="button" class="am-btn am-btn-default am-btn-xs">发布</button>
                  </div>
                </div>
              </li>
              <li>
                <div class="admin-task-meta"> Posted on 25/1/2120 by 呵呵呵</div>
                <div class="admin-task-bd">
                  单位民主测评必须于2018-12-22之前完成，请相关人员督促到位。
                </div>
                <div class="am-cf">
                  <div class="am-btn-toolbar am-fl">
                    <div class="am-btn-group am-btn-group-xs">
                      <button type="button" class="am-btn am-btn-default"><span class="am-icon-check"></span></button>
                      <button type="button" class="am-btn am-btn-default"><span class="am-icon-pencil"></span></button>
                      <button type="button" class="am-btn am-btn-default"><span class="am-icon-times"></span></button>
                    </div>
                  </div>
                  <div class="am-fr">
                    <button type="button" class="am-btn am-btn-default am-btn-xs">发布</button>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="am-u-md-6">
        <div class="am-panel am-panel-default">
          <div class="am-panel-hd am-cf" data-am-collapse="{target: '#collapse-panel-3'}">最近反馈<span class="am-icon-chevron-down am-fr" ></span></div>
          <div class="am-panel-bd am-collapse am-in am-cf" id="collapse-panel-3">
            <ul class="am-comments-list admin-content-comment">
              <li class="am-comment">
                <div class="am-comment-main">
                  <header class="am-comment-hd">
                    <div class="am-comment-meta"><a href="#" class="am-comment-author">某人</a> 反馈于 <time>2014-7-12 15:30</time></div>
                  </header>
                  <div class="am-comment-bd"><p>第一考核组统计表尚未交，统计工作将于21号之前才能完成。XXX学院由于出现XXX事故，综治得分为零分，取消评先评优资格。</p>
                  </div>
                </div>
              </li>

              <li class="am-comment">
                <div class="am-comment-main">
                  <header class="am-comment-hd">
                    <div class="am-comment-meta"><a href="#" class="am-comment-author">某人</a> 反馈于 <time>2014-7-12 15:30</time></div>
                  </header>
                  <div class="am-comment-bd"><p>系统出现无法提交民主测评表统计信息，请及时解决！</p>
                  </div>
                </div>
              </li>

            </ul>
            <ul class="am-pagination am-fr admin-content-pagination">
              <li class="am-disabled"><a href="#">&laquo;</a></li>
              <li class="am-active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li><a href="#">&raquo;</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- content end -->

</div>

<footer>
  <hr>
  <p class="am-padding-left">© 2018 江西农业大学.蓝点工作室</p>
</footer>
</body>
</html>