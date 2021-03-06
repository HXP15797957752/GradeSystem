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
        <title>单位民主测评统计</title>
        <meta name="description" content="这是一个404页面">
        <meta name="keywords" content="404">
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
        <script type="text/javascript">
           function changeCadre(){
               var selectValue = document.getElementById("unit").value;
               if(selectValue == "请选择"){
                   alert("请选择"); 
               }else{
                   $.ajax({
                        url:'${APP_PATH}/schoolgrade/showcadre.do',
                        data:{'ofDepartment':selectValue},
                        datatype:'json',
                        type:'post',
                        success:function(data){      
                            console.log(data);
                           if(data.length==0){
                        	   $("#pluscadre").empty();
                               $("#subcadre").empty();
                               alert("该单位今年没有处级干部需要进行考核,仅对单位进行评分！");                               
                           }else{
                        	   $("#departmentradio1").attr("name",selectValue);
                               $("#departmentradio2").attr("name",selectValue);
                               $("#departmentradio3").attr("name",selectValue);
                               $("#departmentradio4").attr("name",selectValue);
                               $("#pluscadre").empty();
                               $("#subcadre").empty();
                               for(var cadre in data){
                                   var cid = data[cadre].cadreID;
                                   var addtr = '<tr><td>'+data[cadre].cadreName+'</td><td>'+data[cadre].position+'</td><td><input type="radio" name="'+cid+'" value="good"/></td><td><input type="radio" name="'+cid+'" value="lessGood"/></td><td><input type="radio" name="'+cid+'" value="common"/></td><td><input type="radio" name="'+cid+'" value="bad"/></td></tr>';                                  
                                   if (data[cadre].rank ==0){
                                	   $("#pluscadre").append(addtr);
                                   }else{
                                	   $("#subcadre").append(addtr);
                                   }                                   
                               }
                           }                                                   
                        }        
                    })
               }
           };
           
          
           
        </script>
    </head>
<body>


    <header class="am-topbar admin-header">
        <div class="am-topbar-brand">
            <strong>江西农业大学年度考核评分系统</strong> <small></small>
        </div>

        <button
            class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
            data-am-collapse="{target: '#topbar-collapse'}">
            <span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
        </button>

        <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

            <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
         <li class="am-dropdown" data-am-dropdown>       
        
		<a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;"> <span class="am-icon-users"></span> 用户 </a>   
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
		      <li><a href="<c:url value='/user/usermessage.jsp'/>"><span class="am-icon-check"></span> 个人资料</a></li>
		      <li><a href="${APP_PATH}/user/unit-grade.jsp"><span class="am-icon-map-marker"></span> 单位民主测评统计</a></li>
		      <li><a href="${APP_PATH}/user/school-grade.jsp"><span class="am-icon-map-marker"></span> 学校民主测评统计</a></li>
		    </ul>

            <div class="am-panel am-panel-default admin-sidebar-panel">
                <div class="am-panel-bd">
                    <p>
                        <span class="am-icon-bookmark"></span> 公告
                    </p>
                    <p>年度考核过程中相关人员务必公平公正对待。—— 组织部</p>
                </div>
            </div>

            <!-- <div class="am-panel am-panel-default admin-sidebar-panel">
                <div class="am-panel-bd">
                    <p>
                        <span class="am-icon-tag"></span> wiki
                    </p>
                    <p>Welcome to the Amaze UI wiki!</p>
                </div>
            </div> -->
        </div>
        <!-- sidebar end -->

        <!-- content start -->
        <div class="admin-content">

            <div class="am-cf am-padding">
                <div class="am-fl am-cf">
                    <strong class="am-text-primary am-text-lg">单位民主测评</strong> / <small>处级领导班子和领导干部2017年度考核暨第三轮聘（任）期考核民主测评表</small>

                </div>
            </div>
                <div class="am-u-sm-12">
                    <table class="am-table am-table-bordered am-table-centered am-table-radius am-table-striped" style="table-layout:fixed;">
                        <tbody id="department">
                            <tr>
                                <td colspan="6" class="am-text-center"> 民主测评表</td>
                            </tr>                            
                            <tr>
                                <td colspan="2" rowspan="2" class="am-text-middle am-text-center">测评对象</td>
                                <td colspan="4" class="am-text-center">综合评价</td>                               
                            </tr>
                            <tr>
                            	<td>好（90分）</td>
                                <td>较好（75分）</td>
                                <td>一般（60分）</td>
                                <td>较差（40分）</td>
                            </tr>
                            <tr>
                                <td colspan="2" class="am-text-center">
                                    <select id="unit"  onchange="changeCadre()" style=3>
                                        <option value="请选择">请选择</option>                                                                           
                                    </select>
                                </td>                               
                                <td><input type="radio" id="departmentradio1" name="grade" value="good"/></td>
                                <td><input type="radio" id="departmentradio2" name="grade" value="lessGood"/></td>
                                <td><input type="radio" id="departmentradio3" name="grade" value="common"/></td>
                                <td><input type="radio" id="departmentradio4" name="grade" value="bad"/></td>
                            </tr>                                                       
                        </tbody>
                        
                        <tbody>                           
                            <tr>
                                <td rowspan="2" class="am-text-middle am-text-center">姓名</td>
                                <td rowspan="2" class="am-text-middle am-text-center">职务</td>
                                <td colspan="4" class="am-text-center">综合评价</td>
                            </tr>     
                            <tr>
                            	<td>好（90分）</td>
                                <td>较好（75分）</td>
                                <td>一般（60分）</td>
                                <td>较差（40分）</td>
                            </tr>                      
                         </tbody>
                         <tbody id="pluscadre">
                           
                         </tbody>
                         <tbody id="subcadre">
                           
                         </tbody>                      
                   </table>
                   <div class="am-margin">
	                    <button type="submit" class="am-btn am-btn-primary am-btn-xs" onclick="commitA()">A票提交</button>
	                    <button type="submit" class="am-btn am-btn-primary am-btn-xs" onclick="commitB()">B票提交</button> 
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
    <script src="/GradeSystem/js/jquery.min.js"></script>
    <script src="/GradeSystem/js/amazeui.min.js"></script>
    <!--<![endif]-->
    <script src="/GradeSystem/js/app.js"></script>
    <script type="text/javascript">
     $(document).ready(function(){         
         $.ajax({
             url:'${APP_PATH}/schoolgrade/showdepartmentbyname.do',
             data:{},
             datatype:'json', 
             type:'post',
             success:function(data){       
                 console.log(data);
                if(data.length==0){
                    alert("未获取到单位参数，请稍后重试！");
                }else{
                   // $("#unit").empty();
                    for(var department in data){
                        var addoption = '<option value="'+data[department].departmentId+'">'+data[department].departmentName+'</option>';
                        $("#unit").append(addoption);
                    }
                }                                                    
             }        
         })  　　
       });
     
     function commitA(){		
		 var departmentMap = {};
		 var pluscadreMap = {};
		 var subcadreMap = {};
		 var nameKey = "";
		 		 
		 $('#department input[type="radio"]').each(function(i,obj){// 遍历所有的radio i是顺序 obj是本身
            if($(obj)[0].checked){ // 判断此radio是不是选中状态 如果是 执行
                 nameKey = obj.name;
                 departmentMap[nameKey]  = obj.value;                
            }
         });
		 $('#pluscadre input[type="radio"]').each(function(i,obj){// 遍历所有的radio i是顺序 obj是本身
	            if($(obj)[0].checked){ // 判断此radio是不是选中状态 如果是 执行
	                 nameKey = obj.name;
	                 pluscadreMap[nameKey]  = obj.value;                
	            }
	         });
		 $('#subcadre input[type="radio"]').each(function(i,obj){// 遍历所有的radio i是顺序 obj是本身
	            if($(obj)[0].checked){ // 判断此radio是不是选中状态 如果是 执行
	                 nameKey = obj.name;
	                 subcadreMap[nameKey]  = obj.value;                
	            }
	         });
		 
         departmentJson = JSON.stringify(departmentMap);
         
         $.ajax({
             url:'${APP_PATH}/schoolgrade/votedepartment.do',
             data:{"dataMap":departmentJson,"type":1},
             datatype:'json',
             type:'post',
             success:function(data){      
          	   alert("单位记录保存成功！");                                                          
             },
             error:function(err){
             	 alert("单位记录提交失败！");
             }
         });
         
         pluscadreJson = JSON.stringify(pluscadreMap);
         
         $.ajax({
             url:'${APP_PATH}/schoolgrade/votecadre.do',
             data:{"dataMap":pluscadreJson,"type":2},
             datatype:'json',
             type:'post',
             success:function(data){      
          	   alert("正职记录保存成功！");                                                          
             },
             error:function(err){
             	 alert("正职记录提交失败！");
             }
         });
         
         subcadreJson = JSON.stringify(subcadreMap);
         
         $.ajax({
             url:'${APP_PATH}/schoolgrade/votecadre.do',
             data:{"dataMap":subcadreJson,"type":3},
             datatype:'json',
             type:'post',
             success:function(data){      
          	   alert("副职记录保存成功！");                                                          
             },
             error:function(err){
             	 alert("副职记录提交失败！");
             }
         });
          
    };
    
    function commitB(){		
		 var departmentMap = {};
		 var pluscadreMap = {};
		 var subcadreMap = {};
		 var nameKey = "";
		 		 
		 $('#department input[type="radio"]').each(function(i,obj){// 遍历所有的radio i是顺序 obj是本身
	           if($(obj)[0].checked){ // 判断此radio是不是选中状态 如果是 执行
	                nameKey = obj.name;
	                departmentMap[nameKey]  = obj.value;                
	           }
        });
		 $('#pluscadre input[type="radio"]').each(function(i,obj){// 遍历所有的radio i是顺序 obj是本身
	            if($(obj)[0].checked){ // 判断此radio是不是选中状态 如果是 执行
	                 nameKey = obj.name;
	                 pluscadreMap[nameKey]  = obj.value;                
	            }
	         });
		 $('#subcadre input[type="radio"]').each(function(i,obj){// 遍历所有的radio i是顺序 obj是本身
	            if($(obj)[0].checked){ // 判断此radio是不是选中状态 如果是 执行
	                 nameKey = obj.name;
	                 subcadreMap[nameKey]  = obj.value;                
	            }
	         });
		 
        departmentJson = JSON.stringify(departmentMap);
        
        $.ajax({
            url:'${APP_PATH}/schoolgrade/votedepartment.do',
            data:{"dataMap":departmentJson,"type":1},
            datatype:'json',
            type:'post',
            success:function(data){      
         	   alert("单位记录保存成功！");                                                          
            },
            error:function(err){
            	 alert("单位记录提交失败！");
            }
        });
        
        pluscadreJson = JSON.stringify(pluscadreMap);
        
        $.ajax({
            url:'${APP_PATH}/schoolgrade/votecadre.do',
            data:{"dataMap":pluscadreJson,"type":2},
            datatype:'json',
            type:'post',
            success:function(data){      
         	   alert("正职记录保存成功！");                                                          
            },
            error:function(err){
            	 alert("正职记录提交失败！");
            }
        });
        
        subcadreJson = JSON.stringify(subcadreMap);
        
        $.ajax({
            url:'${APP_PATH}/schoolgrade/votecadre.do',
            data:{"dataMap":subcadreJson,"type":4},
            datatype:'json',
            type:'post',
            success:function(data){      
         	   alert("副职记录保存成功！");                                                          
            },
            error:function(err){
            	 alert("副职记录提交失败！");
            }
        });
         
   };
    </script>
    
</body>
</html>
