<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="com.wdd.entity.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ShowOneBike.jsp' starting page</title>
    
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
			padding: 0;}
p{
color: white;
}
.jixu{
color: black;}		
</style>
  </head>
  
  
  <body>
  <jsp:include page="head.jsp"/>
  		
    	<% Bikes bike=(Bikes)request.getAttribute("bike"); %>
  		<a class="jixu" href="BikeAction"><font size="2">◁   再看看</font></a>
  			<table>
 				<tr><th><img src="images/<%=bike.getBikeImage() %>"></th>
 				<th>
 				<table  width="400" height="500" cellpadding="0" cellspacing="0"  border="0" background="images/hb4.jpg" style="vertical-align:top">
 				<tr><th align="left" height="40"><p><font size="6">MERIDA<%=bike.getBikeName() %></font></p></th></tr>
 				<tr><th  height="40"><hr/></th></tr>
 				<tr><th align="left" height="40"><p><font size="5">￥<%=bike.getPrice()%></font></p></th></tr>
 					<tr><th align="left" height="40"><p>剩余：35 </p></th></tr>
 					                                                     
 					<tr><th align="left" height="40"><p> 赠送积分：75</p></th></tr>
 				<tr><th align="left" height="40"><p>配送方式：自提</p></th></tr>
 				<tr><th align="left" height="40"></th></tr>
 				<tr><th align="left" height="40"></th></tr>
 				<tr><th ><button onclick="javaScript:location.href='ShopCartAction?bikeid=<%=bike.getBikeid() %>'" size="15" style="width:300px;height:50px; background-color:#F00078;">加入购物车</button>
     </th></tr>	
 				</table>
 				</th></tr> 			
  				
  			</table>
  			<br><br>			
  			
  		
  		
  		
  <br>
  		<jsp:include page="bottom.jsp"/>
  </body>
</html>
