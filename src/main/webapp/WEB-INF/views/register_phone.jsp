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
		window.location.href="${ctx}/user/to_login";
	}
</script>
<style type="text/css">
	body{
		background-color: #F7F7F7; 
	}
	#hbody{
		margin:40% auto;
	}
	.hip{
		margin:2% auto;
		width:70%;
		height:80px;
		padding:10px;
	}
	.hip input{
		padding-left:20px;
		border-style: solid; 
		border-color: #e8e8e8;
		margin:0px;
		padding:0xp;
		font-size:30px;
		height:100%;
		width:100%;
	}
	.hip button{
		float:right;
		font-size:30px;
		height:100%;
		width:25%;
		margin-right:10%;
		background-color:#24a1a1;
		color:#ffffff;
		border:none;
	}
	.tidiv{
		float:left;
		font-size:30px;
		width:200px;
		height:100%;
		line-height:100%;
		padding:5% 0 0 5%;
 		//border:1px solid red;
 		cursor: pointer;
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
		      <div class="tidiv" onclick="toLogin()" >to login</div>
		  </div>
		</form>
	</div>
</body>
</html>