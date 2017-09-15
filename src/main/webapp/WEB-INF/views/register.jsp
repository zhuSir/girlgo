<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="<%=request.getContextPath()%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${ctx}/resources/js/jquery-1.7.1.min.js" ></script>
<title>register</title>
<script type="text/javascript">
	$(function(){
		var userinfo = '${user}';
		if(userinfo != undefined && userinfo != ''){
			window.location.href="${ctx}/index";
		}
	})
	
	function toLogin(){
		window.location.href="${ctx}/user/to/login";
	}
</script>
<style type="text/css">
	body{
		background-color: #F7F7F7; 
	}
	#hbody{
		margin:20% auto;
	}
	.hip{
   		margin:5% auto;   
		width:85%;
		height:150px;
		padding:20px;
	}
	.hip input{
		padding-left:50px;
		border-style: solid; 
		border-color: #e8e8e8;
 		padding:0xp; 
 		font-size:70px; 
		height:100%;
		width:100%;
	}
	.hip button{
 		float:right; 
 		font-size:60px; 
		height:100%;
		width:40%;
		padding:20px;
		background-color:#24a1a1;
		color:#ffffff;
	}
	.tidiv{
		margin-left:10%;
		font-size:60px; 
		float:left;
		width:300px;
		height:100%;
		line-height:100%;
 		padding:30px; 
 		cursor: pointer;
	}
	#footTag{
		font-size:25px;
		position: fixed;
		top: 95%;
		left:15%;
		width:100%;
	}
</style>
</head>
<body>
	<div id="hbody">
		<form action="register" >
		  <div class="hip">
		      <input type="text" name="mail" placeholder="enter email" >
		  </div>
		  <div class="hip">
		      <input type="text" name="username" placeholder="enter account" >
		  </div>
		  <div class="hip">
		      <input type="password" name="password" placeholder="enter password" >
		  </div>
		  <div class="hip">
		      <button >REGISTER</button>
		  </div>
		</form>
        <div class="tidiv" onclick="toLogin()" >TOLOGIN</div>
		<p id="footTag">&copy; Copyright grilgo blog gilgo. All Rights Reserved.</p>
	</div>
</body>
</html>