<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java"  import="com.wdd.entity.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	

  	 <style type="text/css">
        body,html
			{
			margin: 0;
			padding: 0;
			}
        #photo{
            border: 1px solid black;
            width: 1100px;
            height: 500px;
            overflow: hidden;
        }


      
    </style>
    <script>
        var num=0;
        var p1;
        function gunDong(){
            var photo=document.getElementById("photo")
            photo.scrollTop=num;
            num++;
            if(num==3000){
                num=0;
            }
             p1=setTimeout(gunDong,30)
        }
        function pause(){
            clearTimeout(p1)
        }
        function restart(){
            gunDong();
        }
    </script>
  </head>
  <body>
 <jsp:include page="head.jsp"/>
    <div id="center" align="center">
 <div id="photo"   onload="gunDong()">
    <img  src="images/ii2.png" width="1100px" height="500px"onmouseover="pause()" onmouseout="restart()">
   	<img  src="images/head6.png" width="1100px" height="500px"onmouseover="pause()" onmouseout="restart()">
   	<img  src="images/ii3.png" width="1100px" height="500px"onmouseover="pause()" onmouseout="restart()">
   	<img  src="images/ii4.png" width="1100px" height="500px"onmouseover="pause()" onmouseout="restart()">
   	<img  src="images/ii5.png" width="1100px" height="500px"onmouseover="pause()" onmouseout="restart()">
   	<img  src="images/h7.png" width="1100px" height="500px"onmouseover="pause()" onmouseout="restart()">
   	<img  src="images/h8.png" width="1100px" height="500px"onmouseover="pause()" onmouseout="restart()">
   </div>
   </div><br>
   <jsp:include page="bottom.jsp"/>
 

  </body>
</html>
