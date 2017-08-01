<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bottom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <div id="photo1" align="center">
   <P>美利达自行车(中国)有限公司&nbsp;&nbsp;客服专线:0534-5018398-8212&nbsp;&nbsp;客服信箱:merida@merida.cn</P>
   <P>CopyRight ©　　2013-2014　　<a href="http://www.merida.cn/" target="_blank">WWW.MERIDA.CN</a>     　<a href="http://www.merida.com.cn/" target="_blank">WWW.MERIDA.COM.CN</a>      中文域名： <a href="http://www.merida.com.cn/" target="_blank">美利达.com.cn</a></P>
   
   <A href="#">使用说明书</A>&nbsp;&nbsp;
  <A href="#">终身保固政策</A>&nbsp;&nbsp;
  <A href="#">sitemap网页地图</A>&nbsp;&nbsp;
  <A href="#">隐私政策</A>
  
   </div>
  </body>
</html>
