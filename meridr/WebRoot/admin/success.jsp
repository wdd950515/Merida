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
    
    <title>订单</title>
    
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
		.success{
			width: 1000px;
		}
		.buy_buycar_top {
background:transparent url(images/choice_t_center.gif) repeat-x scroll 0%;
height:27px;
font-size:14px;
color:#414141;
}
.t_left{
background:transparent url(images/choice_t_left.gif) no-repeat scroll 0%;
height:27px;
}
.t_right {
background:transparent url(images/choice_t_right.gif) no-repeat scroll 0%;
height:27px;
width:7px;
}
	</style>
  </head>
  
  <body>
    <jsp:include page="head.jsp"/><br>
   
    <% String orderId=(String)request.getAttribute("orderId"); %>
	
	<center>
  		 订单编号<br>
  		 <img alt="" src="images/2.png"><br>
  		 <p style="font-size: 20px;color:red;text-align: center"><%=request.getAttribute("orderId") %></p>	
  		<table id="success" width="100%" border="0" cellpadding="0" cellspacing="0">
  		
  		 
  		<tr ><th  width="7" class="t_left"></th><th class="buy_buycar_top">商品名称</th><th class="buy_buycar_top">商品图片</th><th class="buy_buycar_top">商品数量</th><th class="buy_buycar_top">商品单价</th><th class="buy_buycar_top">商品总价</th>  <td width="9" class="t_right">&nbsp;</td></tr>

    <% ShopCart cart=(ShopCart)session.getAttribute("cart");
    	Collection<ShopItem> allItem=cart.getAllItem();
    	for(ShopItem item:allItem){%>
    	  		<tr><th></th>
    	  			<th><%=item.getBike().getBikeName() %></th>
    	  			<th><img src="images/<%=item.getBike().getBikeImage() %>" width="120px" height="90px"></th>
    	  			<th><%=item.getNum() %></th>
    	  			<th><%=item.getBike().getPrice() %>元</th>
    	  			<th><%=item.getAllPrice() %>元</th>
    	  		</tr>
    	<%}
     %>
     <tr><td colspan="8"><hr/></td></tr>
     <tr><td colspan="5" style="text-align: right;">总计：</td><th><font color="red" size="5px"><%=cart.getTotal() %>元</font></th></tr>
     </table>       
     </center>
     <jsp:include page="bottom.jsp"/>
	
	
  </body>
</html>
