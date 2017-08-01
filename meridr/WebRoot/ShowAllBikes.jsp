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
    
    <title>My JSP 'showAllBikes.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="jquery-1.8.3.js"></script>
	<script type="text/javascript">
		$(function(){
			$(".book").mouseover(function(){
				$(this).css("border","1px solid red");
			}).mouseout(function(){
				$(this).css("border","0px solid red");
			});			
		});
		
		 function detail(bikeid){
			 location.href="BikeAction?action=one&bikeid="+bikeid
		 }
		 function changeColor(obj,id){
            document.getElementById();
            
            var quanbu=document.getElementById("quanbu");
            var shandiche=document.getElementById("shandiche");
            var dianxin=document.getElementById("gongluche");
             var buxian=document.getElementById("buxian");
              var di=document.getElementById("di");
               var gao=document.getElementById("gao");
            if(id=="quanbu"){
                quanbu.style.display="block";
                shandiche.style.display="none";
                gongluche.style.display="none";
                buxian.style.display="none";
                 di.style.display="none";
                 gao.style.display="none";
            }
            if(id=="shandiche"){
                quanbu.style.display="none";
                shandiche.style.display="block";
                gongluche.style.display="none";
                 buxian.style.display="none";
                 di.style.display="none";
                 gao.style.display="none";
            }
            if(id=="gongluche"){
                quanbu.style.display="none";
                shandiche.style.display="none";
                gongluche.style.display="block";
                 buxian.style.display="none";
                 di.style.display="none";
                 gao.style.display="none";
            }
             if(id=="buxian"){
                quanbu.style.display="none";
                shandiche.style.display="none";
                gongluche.style.display="none";
                 buxian.style.display="block";
                 di.style.display="none";
                 gao.style.display="none";
            }
             if(id=="di"){
                quanbu.style.display="none";
                shandiche.style.display="none";
                gongluche.style.display="none";
                 buxian.style.display="none";
                 di.style.display="block";
                 gao.style.display="none";
            }
            if(id=="gao"){
                quanbu.style.display="none";
                shandiche.style.display="none";
                gongluche.style.display="none";
                 buxian.style.display="none";
                 di.style.display="none";
                 gao.style.display="block";
            }
        }
        function recover(obj){
            
        }
        function chuXian(obj){
            var quanbu=document.getElementById("quanbu");
            var shandiche=document.getElementById("shandiche");
            var gongluche=document.getElementById("gongluche");
             var buxian=document.getElementById("buxian");
              var di=document.getElementById("di");
                var gao=document.getElementById("gao");
            if(obj=="quanbu"){
                quanbu.style.display="block";
                shandiche.style.display="none";
                gongluche.style.display="none";
                buxian.style.display="none";
                di.style.display="none";
                gao.style.display="none";
            }
            if(obj=="shandiche"){
                quanbu.style.display="none";
                shandiche.style.display="block";
                gongluche.style.display="none";
                buxian.style.display="none";
                di.style.display="none";
                gao.style.display="none";
            }
            if(obj=="gongluche"){
                quanbu.style.display="none";
                shandiche.style.display="none";
                gongluche.style.display="block";
                buxian.style.display="none";
                di.style.display="none";
                gao.style.display="none";
            }
             if(obj=="buxian"){
                quanbu.style.display="none";
                shandiche.style.display="none";
                gongluche.style.display="none";
                 buxian.style.display="block";
                 di.style.display="none";
                 gao.style.display="none";
            }
             if(obj=="di"){
                quanbu.style.display="none";
                shandiche.style.display="none";
                gongluche.style.display="none";
                 buxian.style.display="none";
                 di.style.display="block";
                 gao.style.display="none";
            }
            if(obj=="gao"){
                quanbu.style.display="none";
                shandiche.style.display="none";
                gongluche.style.display="none";
                 buxian.style.display="none";
                 di.style.display="none";
                 gao.style.display="block";
            }
        }
	</script>
	<style type="text/css">
	body,html
			{
			margin: 0;
			padding: 0;
			}
		#bike{
			width: 250px;
			height: 150px;
		}
		table,tr,th,td{
			border: 0px solid red;
			border-collapse: collapse; 
		}
		s{
			color: red;
			font-size: 30px;
		}
		.bg{
		width: 50px;
		height: 10px;
		background-color: white;
		}
		.bg:HOVER {
	background-color: #28FF28;
}
.tc {
	text-align: center;
	margin: 0px; padding: 0px;
	font-size:20;
}

.tc a {
	text-decoration: none;
}
.tc a:hover {
	text-decoration: underline;
}

.tuhuo{
display: block;
float: center;
font-family: arial;
font-size: 12px;
font-style: normal;
font-variant: normal;
font-weight: normal;
height: 400px;
line-height: 18px;
overflow-x: hidden;
overflow-y: hidden;
position: relative;
width: 700px;
zoom: 1;
}

.fouce{
background-attachment: scroll;
background-clip: border-box;
background-color: rgb(255, 204, 0);
background-image: none;
background-origin: padding-box;
background-size: auto;
border-bottom-color: rgb(255, 0, 0);
border-bottom-style: solid;
border-bottom-width: 1px;
border-image-outset: 0px;
border-image-repeat: stretch;
border-image-slice: 100%;
border-image-source: none;
border-image-width: 1;
border-left-color: rgb(255, 0, 0);
border-left-style: solid;
border-left-width: 1px;
border-right-color: rgb(255, 0, 0);
border-right-style: solid;
border-right-width: 1px;
border-top-color: rgb(255, 0, 0);
border-top-style: solid;
border-top-width: 1px;
color: rgb(255, 0, 0);
display: list-item;
float: right;
font-family: tahoma, arial, ����;
font-size: 12px;
font-style: normal;
font-variant: normal;
font-weight: normal;
height: 18px;
line-height: 18px;
list-style-image: none;
list-style-position: outside;
list-style-type: none;
margin-bottom: 0px;
margin-left: 2px;
margin-right: 0px;
margin-top: 0px;
padding-bottom: 1px;
padding-left: 4px;
padding-right: 4px;
padding-top: 1px;
text-align: left;
width: 7px;
zoom: 1;
}



.tuhuo ul {
    bottom: 30px;
    position: absolute;
    right: 10px;
	margin:0px 0px 0px 0px;
	padding:0px;
	list-style: none;
}
.tuhuo ul li {
    background: none repeat scroll 0 0 #EFEFEF;
    border: 1px solid #CCCCCC;
    float: left;
    padding: 1px 4px;
	margin:0px 0px 0px 2px;
}
.tuhuo ul li.fouce {
    background: none repeat scroll 0 0 #FFCC00;
    border: 1px solid #FF0000;
    color: #FF0000;
}



	</style>
  </head>
  
  <body>
  <jsp:include page="head.jsp"/><br>
    <% List<Bikes> bikeList=(List<Bikes>)request.getAttribute("bikeList"); %>
  <center>
  <font size="6">热卖推荐</font><br>
   <img alt="" src="images/2.png"><br><br><br>
   <DIV style="width: 800px; height: 450px;" class="tuhuo"><A onclick="detail(<%=bikeList.get(0).getBikeid()%>)" 
target="_blank"><IMG style="width: 700px; height: 400px;" id="fou_img" src="B61B8BE4521B4FDBB0B78336FF8F5853_files/zgrd.htm"></A><A 
onclick="detail(<%=bikeList.get(0).getBikeid()%>)"> 
<IMG style="display: none;" class="tu_img" src="images/<%=bikeList.get(0).getBikeImage() %>" 
width="700" height="400"></A><A onclick="detail(<%=bikeList.get(3).getBikeid()%>)"> 
<IMG style="display: none;" class="tu_img" src="images/<%=bikeList.get(3).getBikeImage() %>" 
width="700" height="400"></A><A onclick="detail(<%=bikeList.get(5).getBikeid()%>)"> 
<IMG style="display: none;" class="tu_img" src="images/<%=bikeList.get(5).getBikeImage() %>" 
width="700" height="400"></A><A onclick="detail(<%=bikeList.get(7).getBikeid()%>)"> 
<IMG style="display: none;" class="tu_img" src="images/<%=bikeList.get(7).getBikeImage() %>" 
width="700" height="400"></A><A onclick="detail(<%=bikeList.get(9).getBikeid()%>)"> 
<IMG style="display: none;" class="tu_img" src="images/<%=bikeList.get(9).getBikeImage() %>" 
width="700" height="400"></A>
<P style="height: 40px;" class="tc"><A onclick="detail(<%=bikeList.get(0).getBikeid()%>)" 
target="_blank"><%=bikeList.get(0).getBikeName() %></A></P>
<P style="height: 40px;" class="tc"><A onclick="detail(<%=bikeList.get(3).getBikeid()%>)" 
target="_blank"><%=bikeList.get(3).getBikeName() %></A></P>
<P style="height: 40px;" class="tc"><A onclick="detail(<%=bikeList.get(5).getBikeid()%>)" 
target="_blank"><%=bikeList.get(5).getBikeName() %></A></P>
<P style="height: 40px;" class="tc"><A onclick="detail(<%=bikeList.get(7).getBikeid()%>)" 
target="_blank"><%=bikeList.get(7).getBikeName() %></A></P>
<P style="height: 40px;" class="tc"><A onclick="detail(<%=bikeList.get(9).getBikeid()%>)" 
target="_blank"><%=bikeList.get(9).getBikeName() %></A></P>
<br>
<UL>
  <LI class="fouce">1</LI>
  <LI>2</LI>
  <LI>3</LI>
  <LI>4</LI>
  <LI>5</LI></UL></DIV>

<SCRIPT>
var auto;
var index=0;
$('.tuhuo ul li').hover(function(){
	clearTimeout(auto);
	index=$(this).index()
	
	move(index);
	},function(){
		auto=setTimeout('autogo('+index+')',3000)
		});
		
	function autogo(){
		
		
		if(index<5)
		{
				move(index);
				
				index++;
				
			}
			else{
				
				index=0;	
				move(index);
				
				index++;
				
				}
			
		}
		function move(l)
		{
			
		
			var src=$('.tu_img').eq(index).attr('src');
			
			$("#fou_img").css({  "opacity": "0"  });
			
			$('#fou_img').attr('src',src);
			
			$('#fou_img').stop(true).animate({ opacity: '1'},1000);
			$('.tuhuo ul li').removeClass('fouce');
			$('.tuhuo ul li').eq(index).addClass('fouce');
			$('.tuhuo p').hide();
			$('.tuhuo p').eq(index).show();
			var ao=$('.tuhuo p').eq(index).children('a').attr('href');
			$('#fou_img').parent('a').attr("href",ao);
			}
			autogo();
			setInterval('autogo()',3000);
</SCRIPT>
  </center><br><br><br>
<div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>系列：</span>&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="bg" onmouseover="changeColor(this,'quanbu')" onmouseout="recover(this)" onclick="chuXian('quanbu')">全部</span>&nbsp;&nbsp;&nbsp;&nbsp;
   <span class="bg" onmouseover="changeColor(this,'shandiche')" onmouseout="recover(this)" onclick="chuXian('shandiche')">山地车</span>&nbsp;&nbsp;&nbsp;&nbsp;
   <span class="bg" onmouseover="changeColor(this,'gongluche')" onmouseout="recover(this)" onclick="chuXian('gongluche')">公路车</span>&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>价格：</span>&nbsp;&nbsp;&nbsp;&nbsp;
 <span class="bg" onmouseover="changeColor(this,'buxian')" onmouseout="recover(this)" onclick="chuXian('buxian')">不限</span>&nbsp;&nbsp;&nbsp;&nbsp;
 <span class="bg" onmouseover="changeColor(this,'di')" onmouseout="recover(this)" onclick="chuXian('di')">899-3999</span>&nbsp;&nbsp;&nbsp;&nbsp;
 <span class="bg" onmouseover="changeColor(this,'gao')" onmouseout="recover(this)" onclick="chuXian('gao')">4000-10000</span>&nbsp;&nbsp;&nbsp;&nbsp;<br><br><br><br></div>
   <center>
   <div id="quanbu">
    <table>
    	<% 
    	for(int i=0;i<bikeList.size();i++){
    	  //double price =bookList.get(i).getPrice();   	  
    		
    		if((i+1)%4==1){%> 
    			<tr>
    		<% }%>
    	     	<th>
    	<table >
    	     
    			<tr><th class="book" onclick="detail(<%=bikeList.get(i).getBikeid()%>)"><img src="images/<%=bikeList.get(i).getBikeImage() %>" id="bike"></th></tr>
    			
    
    			<tr><th><%=bikeList.get(i).getBikeName() %></th></tr>  
    			<tr><th>￥:<%=bikeList.get(i).getPrice()*1%>元</th></tr>
    				<tr><th ><hr/ style=" color:grey"></th></tr> 
    			<tr><th ><button size="15" style="width:150px;height:35px; background-color:#F00078; "  onclick="detail(<%=bikeList.get(i).getBikeid()%>)">立即购买</button>                      <button  size="15" style="width:150px;height:35px; "   onclick="javaScript:location.href='ShopCartAction?bikeid=<%=bikeList.get(i).getBikeid() %>'">加入购物车</button></th></tr>
    			 	
    	</table><br><br><br><br>
    	</th>
    	<% if((i+1)%4==0){%>
    		</tr>   	
    		<%}
    		}
    	%>
   </table> 
    </div></center>
   <center>
    <div id="shandiche" style="display: none" >
    <table>
    	<%int temp=0; 
    	for(int i=0;i<bikeList.size();i++){
    	  //double price =bookList.get(i).getPrice();   	  
    		if(bikeList.get(i).getCatalogid()==1){
    		if((temp+1)%4==1){%> 
    			<tr>
    		<% }%>
    	     	<th>
    	<table>
    	     	
    			
    			<tr><th class="book" onclick="detail(<%=bikeList.get(i).getBikeid()%>)"><img src="images/<%=bikeList.get(i).getBikeImage() %>" id="bike"></th></tr>
    			
    			
    			<tr><th ><%=bikeList.get(i).getBikeName() %></th></tr>    	
    			<tr><th >￥:<%=bikeList.get(i).getPrice()*1%>元</th></tr>
    			<tr><th ><hr/ style=" color:grey"></th></tr>
    			<tr><th ><button size="15" style="width:150px;height:35px; background-color:#F00078;"  onclick="detail(<%=bikeList.get(i).getBikeid()%>)">立即购买</button>                      <button size="15" style="width:150px;height:35px;  " onclick="javaScript:location.href='ShopCartAction?bikeid=<%=bikeList.get(i).getBikeid() %>'">加入购物车</button></th></tr>
    			
    	</table><br><br><br><br>
    	</th>
    	<% if((temp+1)%4==0){%>
    		</tr> 	
    		<%}
    		temp++;}
    	} %>
   </table> </div></center>
    <center>
    
  <div id="gongluche" style="display: none">
    <table>
    	<%int num=0; 
    	for(int i=0;i<bikeList.size();i++){
    	  //double price =bookList.get(i).getPrice();   	  
    		if(bikeList.get(i).getCatalogid()==2){
    		if((num+1)%4==1){%> 
    			<tr>
    		<% }%>
    	     	<th>
    	<table >
    	     
    			<tr><th class="book" onclick="detail(<%=bikeList.get(i).getBikeid()%>)"><img src="images/<%=bikeList.get(i).getBikeImage() %>" id="bike"></th></tr>
    			
    
    			<tr><th><%=bikeList.get(i).getBikeName() %></th></tr>  
    			<tr><th>￥:<%=bikeList.get(i).getPrice()*1%>元</th></tr>
    				<tr><th ><hr/ style=" color:grey"></th></tr> 
    			<tr><th ><button size="15" style="width:150px;height:35px; background-color:#F00078;" onclick="detail(<%=bikeList.get(i).getBikeid()%>)">立即购买</button>                      <button  size="15" style="width:150px;height:35px; "   onclick="javaScript:location.href='ShopCartAction?bikeid=<%=bikeList.get(i).getBikeid() %>'">加入购物车</button></th></tr>
    			 	
    	</table><br>
    	</th>
    	<% if((num+1)%4==0){%>
    		</tr>   	
    		<%}
    		num++;}
    	} %>
   </table> </div></center>
   <center>
  
   <div id="buxian" style="display: none">
    <table>
    	<%
    	for(int i=0;i<bikeList.size();i++){
    	  //double price =bookList.get(i).getPrice();   	  
    		
    		if((i+1)%4==1){%> 
    			<tr>
    		<% }%>
    	     	<th>
    	<table >
    	     
    			<tr><th class="book" onclick="detail(<%=bikeList.get(i).getBikeid()%>)"><img src="images/<%=bikeList.get(i).getBikeImage() %>" id="bike"></th></tr>
    			
    
    			<tr><th><%=bikeList.get(i).getBikeName() %></th></tr>  
    			<tr><th>￥:<%=bikeList.get(i).getPrice()*1%>元</th></tr>
    				<tr><th ><hr/ style=" color:grey"></th></tr> 
    			<tr><th ><button size="15" style="width:150px;height:35px; background-color:#F00078; "  onclick="detail(<%=bikeList.get(i).getBikeid()%>)">立即购买</button>                      <button  size="15" style="width:150px;height:35px; "   onclick="javaScript:location.href='ShopCartAction?bikeid=<%=bikeList.get(i).getBikeid() %>'">加入购物车</button></th></tr>
    			 	
    	</table><br><br><br><br>
    	</th>
    	<% if((i+1)%4==0){%>
    		</tr>   	
    		<%}
    		}
    	%>
   </table> 
    </div></center>
    <center>
    <div id="di" style="display: none">
    <table>
    	<%int m=0; 
    	for(int i=0;i<bikeList.size();i++){
    	  //double price =bookList.get(i).getPrice();   	  
    		if(bikeList.get(i).getPrice()<4000){
    		if((m+1)%4==1){%> 
    			<tr>
    		<% }%>
    	     	<th>
    	<table >
    	     
    			<tr><th class="book" onclick="detail(<%=bikeList.get(i).getBikeid()%>)"><img src="images/<%=bikeList.get(i).getBikeImage() %>" id="bike"></th></tr>
    			
    
    			<tr><th><%=bikeList.get(i).getBikeName() %></th></tr>  
    			<tr><th>￥:<%=bikeList.get(i).getPrice()*1%>元</th></tr>
    				<tr><th ><hr/ style=" color:grey"></th></tr> 
    			<tr><th ><button size="15" style="width:150px;height:35px; background-color:#F00078;" onclick="detail(<%=bikeList.get(i).getBikeid()%>)">立即购买</button>                      <button  size="15" style="width:150px;height:35px; "   onclick="javaScript:location.href='ShopCartAction?bikeid=<%=bikeList.get(i).getBikeid() %>'">加入购物车</button></th></tr>
    			 	
    	</table><br>
    	</th>
    	<% if((m+1)%4==0){%>
    		</tr>   	
    		<%}
    		m++;}
    	} %>
   </table> </div></center>
   <center>
    <div id="gao" style="display: none">
    <table>
    	<%int t=0; 
    	for(int i=0;i<bikeList.size();i++){
    	  //double price =bookList.get(i).getPrice();   	  
    		if(bikeList.get(i).getPrice()>4000){
    		if((t+1)%4==1){%> 
    			<tr>
    		<% }%>
    	     	<th>
    	<table >
    	     
    			<tr><th class="book" onclick="detail(<%=bikeList.get(i).getBikeid()%>)"><img src="images/<%=bikeList.get(i).getBikeImage() %>" id="bike"></th></tr>
    			
    
    			<tr><th><%=bikeList.get(i).getBikeName() %></th></tr>  
    			<tr><th>￥:<%=bikeList.get(i).getPrice()*1%>元</th></tr>
    				<tr><th ><hr/ style=" color:grey"></th></tr> 
    			<tr><th ><button size="15" style="width:150px;height:35px; background-color:#F00078;" onclick="detail(<%=bikeList.get(i).getBikeid()%>)">立即购买</button>                      <button  size="15" style="width:150px;height:35px; "   onclick="javaScript:location.href='ShopCartAction?bikeid=<%=bikeList.get(i).getBikeid() %>'">加入购物车</button></th></tr>
    			 	
    	</table><br>
    	</th>
    	<% if((t+1)%4==0){%>
    		</tr>   	
    		<%}
    		t++;}
    	} %>
   </table> </div></center>
   
   <br>
  <jsp:include page="bottom.jsp"/>
  </body>
</html>
