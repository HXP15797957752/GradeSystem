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
  <title>处级干部信息管理</title>
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

    <!-- <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-tag"></span> jxau</p>
        <p>Welcome to the JXAU!</p>
      </div>
    </div> -->
  </div>
  <!-- sidebar end -->
     
     <div  class="am-modal  am-modal-alert"  tabindex="-1" id="unitUpdateModal" >
             <div  class="am-modal-dialog">
          <div class="am-modal-hd" style="border-bottom:1px solid solid;">
              用户信息修改
          </div>
          <div class="am-modal-bd">
              <form class="am-form">
                  <div class="am-g am-margin-top">
                      <div class="am-u-sm-4 am-u-md-4 am-text-right">
                        单位名称:
                      </div>
                      <div class="am-u-sm-8 am-u-md-8 am-u-end col-end">
                          <input name="unitName" class="am-input-sm" type="text" id="unitNameUpdate">
                      </div>
                  </div>
                  <div class="am-g am-margin-top">
                      <div class="am-u-sm-4 am-u-md-4 am-text-right">
                          类别:
                      </div>
                      <div class="am-u-sm-8 am-u-md-8 am-u-end col-end">
                          <input name="unitKind"  class="am-input-sm" type="text" id="unitKindUpdate">
                      </div>
                  </div>
               <div class="am-modal-footer">
                    <span class="am-modal-btn " id="unit_update_btn">确定</span>
                    <span class="am-modal-btn" data-am-modal-cancel>关闭</span>     
                </div>
              </form>
          </div>
      </div>

        </div>      
  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">处级干部信息管理</strong> <small></small></div>
    </div>

    <div class="am-g">
    <!-- <form action="" enctype="multipart/form-data"> -->
	      <div class="am-u-md-3">
			  <!-- <button type="submit" class="am-btn am-btn-primary am-btn-xs" onclick="exportUnit()">导出处级干部信息模板</button> -->
			  <button type="button" class="am-btn am-btn-primary am-btn-xs" id="doc-prompt-toggle">  导入处级干部信息</button>
		  </div>
		  <div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompt">
			  <div class="am-modal-dialog">
			  <form id="uploadForm" action="${APP_PATH}/importexcel.do" method="post" enctype="multipart/form-data" >
				    <div class="am-modal-bd">				    	  
				     	   请上传正确的Excel表格文件
				      		<input type="file" name="file" class="am-modal-prompt-input">				      	
				    </div>
				    <div class="am-modal-footer">
				      <!-- <span class="am-modal-btn" data-am-modal-cancel>取消</span>
				      <span class="am-modal-btn" id="submitfile" data-am-modal-confirm onclick="submitfile()">上传</span> -->
				      <button type="button" style="margin-left: 10px" class="am-modal-btn" data-am-modal-cancel class="am-btn am-btn-primary am-btn-xs">取消</button>
				      <button type="submit" class="am-btn am-btn-primary am-btn-xs">导入</button>
				    </div>
			  </form>
			  </div>
			</div>
		  <div class="am-u-md-3">
			  <button class="am-btn am-btn-primary am-btn-xs" onclick="downloadfile()">下载导入模板</button>
		   </div>
	<!-- </form> -->
      <div class="am-u-sm-12">
      	<hr/>
        <table id="table" class="am-table am-table-bordered am-table-radius am-table-striped" style="table-layout:fixed;">
          <thead>
          <tr>
            <th>ID</th><th>工资编号</th><th>姓名</th><th>职位</th><th>级别</th><th>所在部门</th><th>操作</th>
          </tr>
          </thead>
          <tbody id="pluscadre">
	  
          </tbody>
          <tbody id="subcadre">
          
          </tbody>
        </table>
      </div>
    </div>
			<div class="am-modal am-modal-confirm" tabindex="-1" id="update">
			  <div class="am-modal-dialog">
			    <div class="am-modal-hd">修改处级干部信息</div>
			    <div class="am-modal-bd" id="cadreform">
					  ID：<input type="text" id="cadreID" value="11" disabled="disabled"/><br>
			工资编号：<input type="text" id="salaryID" value="12345678" disabled="disabled"/><br>
					 姓    名：<input type="text" id="cadreName" value="书记" disabled="disabled"/><br>
			    	职     位：<input type="text" id="position" value="书记"/><br>
			    	级     别：<input type="text" id="rank"/><br>
			    	部     门：<input type="text" id="ofDepartment"/><br>
			    </div>
			    <div class="am-modal-footer">
			      <span class="am-modal-btn" data-am-modal-cancel>取消</span>
			      <span class="am-modal-btn" data-am-modal-confirm>修改</span>
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
		<script src="${APP_PATH }/js/jquery.min.js"></script>
		<script src="${APP_PATH }/js/amazeui.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    i = 0;
    $.ajax({
        url:'${APP_PATH}/schoolgrade/showpluscadre.do',
        data:{"rank":0},
        datatype:'json',
        type:'post',
        success:function(data){      
            console.log(data);
           if(data.length==0){
               alert("未获取到正职参数，请稍后重试！");
           }else{
               for(var cadre in data){
            	   var cid = data[cadre].cadreID;
            	   var rank  = data[cadre].rank==0?"正处级":"副处级";
					++i;
                   var addtr = '<tr><td>'+i+'</td><td style="display:none">'+cid+'</td><td>'+data[cadre].salaryID+'</td><td>'+data[cadre].cadreName+'</td><td>'+data[cadre].position+'</td><td>'+rank+'</td><td>'+data[cadre].ofDepartment.departmentName+'</td><td><div class="am-fr"><button onclick="deleteRow(this,'+cid+')" type="button" class="am-btn am-btn-default am-btn-xs">删除</button></div></td></tr>';
                   /* <button onclick="updateCadre('+cid+')" type="submit" class="am-btn am-btn-primary am-btn-xs">修改</button> */
                   $("#pluscadre").append(addtr);
               }
           }                                                   
        }        
    }) 
    
    $.ajax({
        url:'${APP_PATH}/schoolgrade/showpluscadre.do',
        data:{"rank":1},
        datatype:'json',
        type:'post',
        success:function(data){      
            console.log(data);
           if(data.length==0){
               alert("未获取到副职参数，请稍后重试！");
           }else{
               for(var cadre in data){
            	   i++;
            	   var cid = data[cadre].cadreID;
            	   var rank  = data[cadre].rank==0?"正处级":"副处级";
                   var addtr = '<tr><td>'+i+'</td><td style="display:none">'+cid+'</td><td>'+data[cadre].salaryID+'</td><td>'+data[cadre].cadreName+'</td><td>'+data[cadre].position+'</td><td>'+rank+'</td><td>'+data[cadre].ofDepartment.departmentName+'</td><td><div class="am-fr"><button onclick="deleteRow(this,'+cid+')" type="button" class="am-btn am-btn-default am-btn-xs">删除</button></div></td></tr>'
                   /* <button onclick="updateCadre('+cadre+')" type="button" class="am-btn am-btn-primary am-btn-xs">修改</button> */
                   $("#subcadre").append(addtr);
               }
           }                                                   
        }        
    })     
  });
  
$(function() {
	  $('#doc-prompt-toggle').on('click', function() {
	    $('#my-prompt').modal({
	      relatedTarget: this,
	      onConfirm: function(e) {
	        alert('你输入的是：' + e.data || '')
	      },
	      onCancel: function(e) {
	        /* alert('不想说!');  */
	      }
	    });
	  });
	});
	
function downloadfile(){
	window.location.href="${APP_PATH}/downloadexcel.do"
}
	
	function deleteRow(r,id){
		var i = r.parentNode.parentNode.rowIndex;
		document.getElementById("table").deleteRow(i);
		$.ajax({
	        url:'${APP_PATH}/schoolgrade/deletecadrebyid.do',
	        data:{"cadreID":id},
	        datatype:'json',
	        type:'post',
	        success:function(data){      
	            alert("刪除成功！");                                                 
	        }        
	    })  
	}
	
	function updateCadre(cadreID){
		$.ajax({
	        url:'${APP_PATH}/schoolgrade/getcadrebyid.do',	    
	        data:{"cadreID":cadreID},
	        datatype:'json',
	        type:'post',
	        success:function(data){  
	        	
	        	
	        	var rank  = data.rank==0?"正处级":"副处级";
	        	$("#cadreform").html('ID：<input type="text" id="cadreID" value="'+data.cadreID+'" disabled="disabled"/><br>工资编号：<input type="text" id="salaryID" value="'+data.salaryID+'" disabled="disabled"/><br> 姓    名：<input type="text" id="cadreName" value="'+data.cadreName+'" disabled="disabled"/><br>	职     位：<input type="text" id="position" value="'+data.position+'"/><br>级     别：<input type="text" id="rank" value="'+rank+'"/><br>部     门：<input type="text" id="ofDepartment" value="'+data.ofDepartment.departmentName+'"/><br>');
	        	
	        	
	        	$('#update').modal({
	                relatedTarget: this,
	                onConfirm: function(options) {
	                	var rank  = $("#rank").val()=="正处级"?0:1;
	                	$.ajax({
	            	        url:'${APP_PATH}/schoolgrade/updatecadre.do',
	            	        data:{"cadreID":$("#cadreID").val(),"salaryID":$("#salaryID").val(),"cadreName":$("#cadreName").val(),
	            	        	"position":$("#position").val(),"rank":rank, "departmentName":$("#ofDepartment").val()
	            	        	},
	            	        datatype:'json',
	            	        type:'post',
	            	        success:function(data){      
	            	            alert("修改成功！");                                                 
	            	        }        
	            	    }) 
	                    var cadreName = $("#cadreName").val();
	                    alert($("#position").val());
	                    alert(cadreName+'确定了，但不知道要整哪样');
	                },
	                // closeOnConfirm: false,
	                onCancel: function() {
	                  //alert('算求，不弄了');
	                }
	              });                                              
	        }        
	    })  
	}
</script>


</body>
</html>