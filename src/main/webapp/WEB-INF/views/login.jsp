<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript" src="${ctx}/resources/js/jquery-1.7.1.min.js" ></script>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<c:set var="ctx" value="<%=request.getContextPath()%>"/>
	<link rel="stylesheet" type="text/css" href="${ctx}/resources/layui/css/layui.css" />
<!-- 	<script src="//cdn.ckeditor.com/4.7.0/basic/ckeditor.js"></script> -->
	<title>login</title>
	
	<script type="text/javascript">
	$(function(){
		var userinfo = '${user}';
		debugger;
		alert(userinfo);
		if(userinfo != undefined && userinfo != ''){
			window.location.href="${ctx}/index";
		}
	})
	</script>
</head>
<body style="background-color:#F7F7F7;" >
	<form class="layui-form" action="login" style="margin: 20% 40%;height:150px;width:350px;" >
	  <div class="layui-form-item">
<!-- 	    <label class="layui-form-label">ACCOUNT</label> -->
	    <div class="layui-input-inline">
	      <input type="text" name="username" required  lay-verify="required" placeholder="Enter account" autocomplete="off" class="layui-input">
	    </div>
	  </div>
	  <div class="layui-form-item">
<!-- 	    <label class="layui-form-label">PASSWORD</label> -->
	    <div class="layui-input-inline">
	      <input type="password" name="password" required lay-verify="required" placeholder="Enter password" autocomplete="off" class="layui-input">
	    </div>
	    <div class="layui-form-mid layui-word-aux"></div>
	  </div>
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-submit lay-filter="formDemo">LOGIN</button>
<!-- 	      <button type="reset" class="layui-btn layui-btn-primary">重置</button> -->
	    </div>
	  </div>
	</form>
</body>
</html>