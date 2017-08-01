<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
 body,html
			{
			margin: 0;
			padding: 0;
			}
			.box{
				width:1348px;
				height:625px;
				
				}
			.box_left{
				width:400px;
				height:545px;
				margin:21px 0 0 76px;
				float:left;
				border-right:1px solid #000000;
				}
			.box_right{
				width:459px;
				height:543px;
				
				float:left;
				margin:75px 0 0 119px;
					}
			.box_right1{
					width:453px;
					height:44px;
					margin-bottom:24px;
					float:left;
					background:#fff;
					}
			.box_right span{
					display:block;
					float:right;
					color:#755361;
					margin-top:14px;
					}
			.box_right1 input{
					width:330px;
					height:44px;
					border:1px solid #d0d0d0;
					float:right;
					margin-right:8px;
					}
					
			.box_right p{
					display:block;
					font-size:15px;
					color:#030500;
					margin-right:30px;
					float:right;
					}
</style>
  </head>
  
  <body>
  <jsp:include page="head.jsp"/><br>
 <div class="box">
<div class="box_left">
				<a href="#"><img src="images/1.png"></a>
			</div>
  
 
   <form action="UserAction" method="post">
   <div class="box_right">
   <div class="box_right1">
						<span>*</span>
						<input  name="username">
						<p>用户名</p>
				</div>
				<div class="box_right1">
					
						<span>*</span>
						<input type="password" name="password">
						<p>密码</p>
				</div>
				
					
						
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="miandenglu">记住用户名<br><br>
					
				
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="登录" size="15" style="width:300px;height:50px; background-color:#F00078;">&nbsp;&nbsp;&nbsp;&nbsp;
   
  </div>
   </form>
  </div>
  <br>
  <jsp:include page="bottom.jsp"/>
  </body>
</html>


