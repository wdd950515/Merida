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
    
    <title>My JSP 'cart.jsp' starting page</title>
    
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
	
		.cart{
			width: 800px;
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
a{
text-decoration:none}
.jixu{
color: black;
}			
	</style>
	<script type="text/javascript">
		function  ff(){
			document.getElementById(elementId)
		}
	</script>
  </head>
  
  <body> 
  <jsp:include page="head.jsp"/><br>
 
 <center>
  		<table id="cart" width="100%" border="0" cellpadding="0" cellspacing="0" >
  		<tr align="left" height="30" >
      <td colspan="5" align="left"><a class="jixu" href="<%=application.getContextPath() %>/BikeAction"><font size="2">◁   继续购物</font></a>
	  </td><td colspan="3" align="right"><a class="jixu" href="<%=application.getContextPath() %>/ShopCartAction?action=clear"><font size="2">清空购物车   ▷</font></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
  		<tr align="left" valign="baseline">
      <td colspan="8" valign="middle"><img src="images/p_mycar.gif" width="121" height="21" />
	  </td>
    </tr>
  		<tr ><th width="7" class="t_left">&nbsp;</th><th class="buy_buycar_top">商品图片</th><th class="buy_buycar_top">商品名称</th><th class="buy_buycar_top">商品数量</th><th class="buy_buycar_top">商品单价</th><th class="buy_buycar_top">商品总价</th><th class="buy_buycar_top">操作</th>  <td width="9" class="t_right">&nbsp;</td></tr>
    <% ShopCart cart=(ShopCart)session.getAttribute("cart");
    	Collection<ShopItem> allItem=cart.getAllItem();
    	for(ShopItem item:allItem){%>
    	  		<tr><td></td>
    	  			<th><img src="images/<%=item.getBike().getBikeImage() %>" width="120px" height="90px"></th>
    	  			<th><%=item.getBike().getBikeName() %></th>
    	  			<th>
    	  				<button onclick="javaScript:location.href='<%=application.getContextPath() %>/ShopCartAction?action=update&num=<%=item.getNum()-1%>&bikeid=<%=item.getBike().getBikeid() %>'">-</button>
    	  				<input class="num" size="1" onblur="ff(<%=item.getBike().getBikeid() %>)" value="<%=item.getNum() %>">
    	  				<% String path2 =application.getContextPath(); %>
    	  				
    	  				<script type="text/javascript" src="jquery-1.8.3.js"></script>
    	  				<script type="text/javascript">   	  					
    	  						function ff(bikeid){
    	  							$("input").blur(function(){
    	  								//$(this).val();
    	  							location.href="<%=application.getContextPath() %>/ShopCartAction?action=update&num="+$(this).val()+"&bikeid="+bikeid
    	  							});
    	  						}
    	  				</script>
    	  				<button onclick="javaScript:location.href='<%=application.getContextPath() %>/ShopCartAction?action=update&num=<%=item.getNum()+1%>&bikeid=<%=item.getBike().getBikeid() %>'">+</button>
    	  			</th>
    	  			<th><%=item.getBike().getPrice() %>元</th>
    	  			<th><%=item.getAllPrice() %>元</th>
    	  			<th><button onclick="javaScript:location.href='<%=application.getContextPath() %>/ShopCartAction?action=del&bikeid=<%=item.getBike().getBikeid() %>'">删除</button></th>
    	  		</tr>
    	<%}
     %>
     <tr height="70"><td colspan="6" style="text-align: right; border-top: 1px dashed #BEBEBE">总价（不含邮费）：<font color="red" ><%=cart.getTotal() %>元</font></td><th colspan="2" style=" border-top: 1px dashed #BEBEBE"></th></tr>
     <tr><td colspan="6" align="right"><button onclick="javaScript:location.href='<%=application.getContextPath() %>/OrderAction'" size="15" style="width:200px;height:50px; background-color:#F00078;">提交订单</button></td></tr>
     
     </table>
     <br><br><br><br>  
     
     
         
     
     </center>
     
     
 
     
   <jsp:include page="bottom.jsp"/>
  </body>
</html>
