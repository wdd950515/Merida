<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="com.wdd.entity.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'head.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
.head3{
width: 1420px;
height: 50px;
display: block;
margin: 0 auto;
background:#F00078;
}
.head3 li{
width: 100px;
height: 50px;
display: block;
color:#FFF;
line-height: 50px;
text-align: center;
list-style-type: none;
float: left;

}
.head3 li:HOVER{
background-color:#FF0080;}
.head3 li a{
color: white;
}


.bg{
		width: 50px;
		height: 10px;
		background-color: white;
		}
		.bg:HOVER {
	background-color: #28FF28;}
#head1 a{
color:black;
}
a{
text-decoration:none}	
	
</style>
  </head>
  
  <body>
 <table id="head1"width="1430" height="50" cellpadding="0" cellspacing="0"  border="0" background="images/background.png" style="vertical-align:top">
  <tr>
 
  <td align="right">
 
    <%Users user=(Users)session.getAttribute("user"); 
    
    if(user!=null){
    	String username=user.getUsername();
    	String sex=user.getSex();
    	
    	%>
    	<a>亲爱的</a><%=username%>&nbsp;&nbsp;<a>欢迎您！</a>
    	<button onclick="javaScript:location.href='UserAction?action=exit'">退出</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	    <hr/>
       
    <% }else{ 
    %> <a  href="login.jsp">登录</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<span>|</span>&nbsp;&nbsp;&nbsp;&nbsp;
		<a = href="regist.jsp" >免费注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    <hr style="height:1px;border:none;border-top:1px solid #555555;" />
    <% }%></td></tr>
	 </table >
	<table id="head2;"width="1430" height="55" cellpadding="0" cellspacing="0"  border="0" background="images/background.png" style="vertical-align:top">
  <tr><td><img  src="images/biaozhi2.png"></td><td> <form action="BikeAction?action=two" method="post"> <input size="40" style="height: 30px; width:400px;" placeholder="搜索关键字" name="bikeName">     <input type="submit" value="搜索" style="height: 30px;"></form></td><td>购物车<a href="admin/cart.jsp"><img src="images/gouwuche1.png" style="width:50; height:50; ">              </a></td></tr>
  </table >
       <div id="center"align="center">
 <ul class="head3">
  <li><a href="index.jsp">首页</a></li>&nbsp;&nbsp;
  <li><a href="BikeAction">全车系</a></li>&nbsp;&nbsp;
  <li><a href="?p=2">车身商品</a></li>&nbsp;&nbsp;
  <li><a href="?p=2">人身商品</a></li>&nbsp;&nbsp;
  <li><a href="?p=2">其他分类</a></li>&nbsp;&nbsp;
  <li><a href="?p=2">服务门店</a></li>&nbsp;&nbsp;
  <li><a href="?p=2">更多商品</a></li>&nbsp;&nbsp;
  <li><a href="?p=2">品牌故事</a></li>&nbsp;&nbsp;
  <li><a href="?p=2">购物须知</a></li>&nbsp;&nbsp;
  <li><a href="?p=2">常见问题</a></li>&nbsp;&nbsp;
  </ul>
  <br><br></div>
  </body>
</html>
