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
    
    <title>My JSP 'regist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="My97DatePicker/jb51.net/My97DatePicker/WdatePicker.js"></script>
 <script type="text/javascript">
    function checkPasswords() {
        var pass1 = document.getElementById("password");
        var pass2 = document.getElementById("password2");
        if (pass1.value != pass2.value)
            pass1.setCustomValidity("两次输入的密码不一致");
        else
            pass1.setCustomValidity("");
    }
    
      
 </script>
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
 	<a href="#"><img src="images/oo2.png"></a>
 </div>
    <form action="UserAction?action=regist" method="post">
    <div class="box_right">
   <div class="box_right1">
						<span id="message"></span>
						<input id="username" name="username" type="text"  size="30" required="required" pattern="^[A-Za-z0-9]{6,18}$" placeholder="用户名必须是6-18位的数字或字母的组合" title="请认真输入内容">
						<p>用户姓名</p>
				</div>
				<div class="box_right1">
						<span id="pass"></span>
						<input type="password" size="30" id="password" name="password" onchange="checkPasswords()" required   pattern="[A-Za-z].*[0-9]|[0-9].*[A-Za-z]" placeholder="密码必须是字母和数字的组合">
						<p>用户口令</p>
				</div>
				<div class="box_right1">
						<span id="pass"></span>
						<input type="password" size="30" id="password2" name="password2" onchange="checkPasswords()" required   pattern="[A-Za-z].*[0-9]|[0-9].*[A-Za-z]" placeholder="确认密码必须是字母和数字的组合">
						<p>确认密码</p>
				</div>
    <div class="box_right1">
						<span id="rel"></span>
						 <input id="relname"name="relname"onblur="checkRelName()" placeholder="请如实填写">
						<p>真实姓名</p>
				</div>
    <div class="box_right1">
						<span></span>
						 <input name="sex" placeholder="请如实填写">
						<p>用户性别</p>
				</div>
	 <div class="box_right1">
						<span id="t"></span>
						<input id="tel" name="tel" onblur="checkTel()" pattern="^[0-9]{11}$" placeholder="请如实填写11位手机号码" >
						<p>联系电话</p>
				</div>			
   <div class="box_right1">
						<span></span>
						<input name="address" placeholder="地址格式为，例如：陕西省西安市长安区子午街办">
						<p>用户地址</p>
				</div>	
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="注册" size="15" style="width:300px;height:50px; background-color:#F00078;">&nbsp;&nbsp;&nbsp;&nbsp;
     
    </div></form></div><br>
  <jsp:include page="bottom.jsp"/>
  </body>
</html>
