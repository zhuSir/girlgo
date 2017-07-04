<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="ctx" value="<%=request.getContextPath()%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${ctx}/resources/layui/css/layui.css" />
<script type="text/javascript" src="${ctx}/resources/js/jquery-1.7.1.min.js" ></script>
<title>register</title>
<script type="text/javascript">
	$(function(){
		var userinfo = '${user}';
		if(userinfo != undefined && userinfo != ''){
			window.location.href="to_login";
		}
	})
</script>
</head>
<body style="background-color: #F7F7F7;">
	<form class="layui-form" action="register" style="margin: 20% 40%;height:150px;width:350px;" >
		<div class="layui-form-item">
			<label class="layui-form-label">Email</label>
			<div class="layui-input-inline">
				<input type="text" name="email" required lay-verify="required"
					placeholder="enter email" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">Account</label>
			<div class="layui-input-inline">
				<input type="text" name="username" required lay-verify="required"
					placeholder="enter account" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">Password</label>
			<div class="layui-input-inline">
				<input type="password" name="password" required
					lay-verify="required" placeholder="enter password" autocomplete="off"
					class="layui-input">
			</div>
			<div class="layui-form-mid layui-word-aux"></div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">REGISTER</button>
				<!-- 	      <button type="reset" class="layui-btn layui-btn-primary">重置</button> -->
			</div>
		</div>
	</form>
</body>
</html>