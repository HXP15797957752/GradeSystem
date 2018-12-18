<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
      pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>学校民主测评</title>
<meta name="description" content="这是一个form页面">
<meta name="keywords" content="form">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="${APP_PATH}/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="${APP_PATH}/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="${APP_PATH}/css/amazeui.min.css" />
<link rel="stylesheet" href="${APP_PATH}/css/admin.css">
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
      <li><a href="${APP_PATH }/user/index.jsp"><span class="am-icon-home"></span> 首页</a></li>
      <li><a href="<c:url value='/user/usermessage.jsp'/>"><span class="am-icon-check"></span> 个人资料</a></li>
      <li><a href="${APP_PATH}/user/unit-grade.jsp"><span class="am-icon-map-marker"></span> 单位民主测评统计</a></li>
      <li><a href="${APP_PATH}/user/school-grade.jsp"><span class="am-icon-map-marker"></span> 学校民主测评统计</a></li>
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

 <!--  <div class="am-cf am-padding">
		<div class="am-fl am-cf">
			<strong class="am-text-primary am-text-lg">学校民主测评</strong>  <small></small>
		</div>
	</div> -->

  <div class="am-tabs am-margin" data-am-tabs>
    <ul class="am-tabs-nav am-nav am-nav-tabs">
      <li class="am-active"><a href="#tab1">教学科研单位</a></li>
      <li><a href="#tab2">教学科研单位正职</a></li>
      <li><a href="#tab3">管理服务单位</a></li>
      <li><a href="#tab4">管理服务单位正职</a></li>
    </ul>

    <div class="am-tabs-bd">
    	<!--教学科研start-->
      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
		<div class="am-g am-margin-top">
			<div class="am-u-sm-12">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		            <tbody id="tbo1">							
							<tr>
								<td>序号</td>

								<td colspan="2">考核单位</td>
								</td>							    
								<td>好（90分）</td>
								<td>较好（75分）</td>
								<td>一般（60分）</td>
								<td>较差（40分）</td>
							</tr>							
					</tbody>
		        </table>		        
		        <button type="button" class="am-btn am-btn-primary am-btn-xs" onclick='commitdepartment1()'>提交保存</button>
		      </div>
			</div>
      </div>
<!--      教学科研end-->
<!--    教学科研正职start-->
      <div class="am-tab-panel am-fade" id="tab2">                         
          <div class="am-u-sm-12">
            	<div class="am-g am-margin-top">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">
		          <tbody id="tbo2">							
							<tr>
								<td>序号</td>

								<td colspan="2">正职干部</td>
								</td>							    
								<td>好（90分）</td>
								<td>较好（75分）</td>
								<td>一般（60分）</td>
								<td>较差（40分）</td>
							</tr>							
						</tbody>
		        </table>
		        <button type="button" class="am-btn am-btn-primary am-btn-xs" onclick='commitcadre1()'>提交保存</button>
		      </div>
          </div> 
      </div>
<!--   管理服务start-->
      <div class="am-tab-panel am-fade" id="tab3">                         
          <div class="am-u-sm-12">
            	<div class="am-g am-margin-top">
				        <table class="am-table am-table-bordered am-table-radius am-table-striped">
				          <tbody id="tbo3">							
									<tr>
										<td>序号</td>
		
										<td colspan="2">考核单位</td>
										</td>							    
										<td>好（90分）</td>
										<td>较好（75分）</td>
										<td>一般（60分）</td>
										<td>较差（40分）</td>
									</tr>							
							</tbody>
				        </table>
		       		<button type="button" class="am-btn am-btn-primary am-btn-xs" onclick='commitdepartment2()'>提交保存</button>
		      </div>
          </div>  
      </div>
      <!--   管理服务正职 start-->
      <div class="am-tab-panel am-fade" id="tab4">                         
          <div class="am-u-sm-12">
            	<div class="am-g am-margin-top">
		        <table class="am-table am-table-bordered am-table-radius am-table-striped">		          
		          <tbody id="tbo4">							
							<tr>
								<td>序号</td>

								<td colspan="2">正职干部</td>
								</td>							    
								<td>好（90分）</td>
								<td>较好（75分）</td>
								<td>一般（60分）</td>
								<td>较差（40分）</td>
							</tr>							
						</tbody>
		        </table>
					<button type="button" class="am-btn am-btn-primary am-btn-xs" onclick='commitcadre2()'>提交保存</button>
		      </div>
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

	<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="/GradeSystem/js/polyfill/rem.min.js"></script>
<script src="/GradeSystem/js/polyfill/respond.min.js"></script>
<script src="/GradeSystem/js/amazeui.legacy.js"></script>
<![endif]-->

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="${APP_PATH}/js/jquery.min.js"></script>
	<script src="${APP_PATH}/js/amazeui.min.js"></script>
	<!--<![endif]-->
	<script src="${APP_PATH}/js/app.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
        
        $.ajax({
            url:'${APP_PATH}/schoolgrade/showdepartmentbytype.do',
            data:{"type":1},
            datatype:'json',
            type:'post',
            success:function(data){      
                console.log(data);
               if(data.length==0){
                   alert("未获取到单位参数，请稍后重试！");
               }else{
                   for(var department in data){
                	   var did = data[department].departmentId;
                       var addtr = '<tr><td>'+did+'</td><td colspan="2">'+data[department].departmentName+'</td><td><input type="radio" name="'+did+'" value="good"/></td><td><input type="radio" name="'+did+'" value="lessGood"/></td><td><input type="radio" name="'+did+'" value="common"/></td><td><input type="radio" name="'+did+'" value="bad"/></td></tr>'

                       $("#tbo1").append(addtr);
                   }
               }                                                   
            }        
        })     
        
        $.ajax({
            url:'${APP_PATH}/schoolgrade/showdepartmentbytype.do',
            data:{"type":2},
            datatype:'json',
            type:'post',
            success:function(data){      
                console.log(data);
               if(data.length==0){
                   alert("未获取到单位参数，请稍后重试！");
               }else{
                   for(var department in data){
                	   var did = data[department].departmentId;
                       var addtr = '<tr><td>'+did+'</td><td colspan="2">'+data[department].departmentName+'</td><td><input type="radio" name="'+did+'" value="good"/></td><td><input type="radio" name="'+did+'" value="lessGood"/></td><td><input type="radio" name="'+did+'" value="common"/></td><td><input type="radio" name="'+did+'" value="bad"/></td></tr>'

                       $("#tbo3").append(addtr);
                   }
               }                                                   
            }        
        });     
        
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
                       var addtr = '<tr><td>'+cid+'</td><td colspan="2">'+data[cadre].cadreName+'</td><td><input type="radio" name="'+cid+'" value="good"/></td><td><input type="radio" name="'+cid+'" value="lessGood"/></td><td><input type="radio" name="'+cid+'" value="common"/></td><td><input type="radio" name="'+cid+'" value="bad"/></td></tr>'
						if (data[cadre].ofDepartment.gradingUnitId==1){
							$("#tbo2").append(addtr);
						}else{
							$("#tbo4").append(addtr);
						}
                       
                   }
               }                                                   
            }        
        })       　
      });
	
	
	function commitdepartment1(){		
		 var dataMap = {};
		 var nameKey = "";
		 		 
		 $('#tbo1 input[type="radio"]').each(function(i,obj){// 遍历所有的radio i是顺序 obj是本身
            if($(obj)[0].checked){ // 判断此radio是不是选中状态 如果是 执行
                 nameKey = obj.name;
                 dataMap[nameKey]  = obj.value;                
            }
        });
        dataJson = JSON.stringify(dataMap);        
          $.ajax({
               url:'${APP_PATH}/schoolgrade/votedepartment.do',
               data:{"dataMap":dataJson,"type":5},
               datatype:'json',
               type:'post',
               success:function(data){      
            	   alert("本次单位投票记录保存成功！");                                                          
               },
               error:function(err){
               	 alert("本次单位投票记录提交失败！");
               }
           });
    };
    
    function commitdepartment2(){		
		 var dataMap = {};
		 var nameKey = "";		 		 
		 $('#tbo3 input[type="radio"]').each(function(i,obj){// 遍历所有的radio i是顺序 obj是本身
           if($(obj)[0].checked){ // 判断此radio是不是选中状态 如果是 执行
                 nameKey = obj.name;
                 dataMap[nameKey]  = obj.value;               
           }
       });
       dataJson = JSON.stringify(dataMap);      
         $.ajax({
              url:'${APP_PATH}/schoolgrade/votedepartment.do',
              data:{"dataMap":dataJson,"type":5},
              datatype:'json',
              type:'post',
              success:function(data){      
           	   alert("本次单位投票记录保存成功！");                                                          
              },
              error:function(err){
              	 alert("本次单位投票记录提交失败！");
              }
          });
   };
   
    function commitcadre1(){		
		 var dataMap = {};
		 var nameKey = "";
		 		 
		 $('#tbo2 input[type="radio"]').each(function(i,obj){// 遍历所有的radio i是顺序 obj是本身
           if($(obj)[0].checked){ // 判断此radio是不是选中状态 如果是 执行
                 nameKey = obj.name;
                 dataMap[nameKey]  = obj.value;              
           }
       });
       dataJson = JSON.stringify(dataMap);      
         $.ajax({
              url:'${APP_PATH}/schoolgrade/votecadre.do',
              data:{"dataMap":dataJson,"type":6},
              datatype:'json',
              type:'post',
              success:function(data){      
           	   alert("本次干部投票记录保存成功！");                                                          
              },
              error:function(err){
              	 alert("本次干部投票记录提交失败！");
              }
          });
   };
   
   function commitcadre2(){		
		 var dataMap = {};
		 var nameKey = "";
		 		 
		 $('#tbo4 input[type="radio"]').each(function(i,obj){// 遍历所有的radio i是顺序 obj是本身
         if($(obj)[0].checked){ // 判断此radio是不是选中状态 如果是 执行
	                 nameKey = obj.name;
	                 dataMap[nameKey]  = obj.value;            
         }
     });
     dataJson = JSON.stringify(dataMap);    
       $.ajax({
            url:'${APP_PATH}/schoolgrade/votecadre.do',
            data:{"dataMap":dataJson,"type":6},
            datatype:'json',
            type:'post',
            success:function(data){      
         	   alert("本次干部投票记录保存成功！");                                                          
            },
            error:function(err){
            	 alert("本次干部投票记录提交失败！");
            }
        });
 };
	</script>
</body>
</html>