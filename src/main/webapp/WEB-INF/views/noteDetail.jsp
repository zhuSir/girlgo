<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="ctx" value="<%=request.getContextPath()%>" />
<!-- <script type="text/javascript" -->
<%-- 	src="${ctx}/resources/js/jquery-1.7.1.min.js"></script> --%>
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="${ctx}/resources/layui/css/layui.css" /> --%>
<!-- <script src="//cdn.ckeditor.com/4.7.3/standard/ckeditor.js"></script> -->
	<link rel="stylesheet" type="text/css" href="${ctx}/resources/simditor-2.3.6/styles/simditor.css" />
	<script type="text/javascript" src="${ctx}/resources/simditor-2.3.6/scripts/jquery.min.js"></script>
	<script type="text/javascript" src="${ctx}/resources/simditor-2.3.6/scripts/module.js"></script>
	<script type="text/javascript" src="${ctx}/resources/simditor-2.3.6/scripts/hotkeys.js"></script>
	<script type="text/javascript" src="${ctx}/resources/simditor-2.3.6/scripts/uploader.js"></script>
	<script type="text/javascript" src="${ctx}/resources/simditor-2.3.6/scripts/simditor.js"></script>
<title>ADD NOTE</title>
<style type="text/css">
body {
	background-color: #F7F7F7;
	width:100%;
}

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

#hbody {
	width:100%;
	margin: 8% auto;
}

.bdiv {
	font-size: 30px;
	width: 80%;;
	margin: 2% auto;
	padding: 20px;
}

.bdiv img {
	margin-bottom: 10px;
}

.bdiv button {
	float: right;
	font-size: 30px;
	background-color: #24a1a1;
	color: #ffffff;
	padding: 20px;
	border: none;
	margin: 20px;
}

#uploadBtn {
	float: right;
	font-size: 30px;
	background-color: #24a1a1;
	color: #ffffff;
	padding: 20px;
	border: none;
	margin: 20px;
}

.cut-off-line {
	width: 80%;
}
.bdiv textarea {
	width: 100%;
	border: 1px solid #e8e8e8;
	height: 100%;
	font-size: 80px;
}
#fdiv div{
	float: left; 
 	padding: 5%; 
 	cursor: pointer; 
 	margin-left:2%;
}
#fdiv{
	font-size: 80px;
	position: fixed;
	top: 75%;
 	left:10%; 
	width:100%;
	color: gray;
	background-color:#F7F7F7;
}
#footTag{
	font-size:25px;
	position: fixed;
	top: 95%;
	left:15%;
	width:100%;
}
</style>
<script type="text/javascript">
	function toBack() {
		window.history.go(-1);
	}

	function cheangeImg(e) {
		var value = e.value;
		$("#filePath").attr("value", value);
	}
	
	function submitData(){
		$("form").submit();
	}

</script>
</head>
<body>
	<form action="save" method="POST" enctype="multipart/form-data" >
		<div id="hbody">
			<div class="bdiv">
				<img alt="show images" src="" hidden="true" align="middle">
				<input id="filePath" type="text" style="border:1px solid #e8e8e8;background-color:white; width:100%;height:60px;padding-left:10px; font-size:30px;" disabled="disabled" >
			</div>
			<div class="bdiv">
			</div>
			<hr class="cut-off-line" />
			<div class="bdiv">
<!-- 				<textarea name="content" id="editor" placeholder="这里输入内容" autofocus></textarea> -->
				<textarea id="editor" name="content" placeholder="balabalabala" autofocus></textarea>
			</div>
		</div>
		
		<div id="fdiv">		
			<div class="tbdiv" onclick="toBack()">&lt;</div>
			<input type="file" name="file" id="path" style="display:none" onchange="cheangeImg(this)">
			<div class="idiv" onclick="path.click()">+IMG</div>
			<div class="sdiv" onclick="submitData()">SAVE</div>
		</div>
	</form>
	<p id="footTag">&copy; Copyright grilgo blog gilgo. All Rights Reserved.</p>
	<script>
		var editor = new Simditor({
		  	textarea: $('#editor'),
		  	toolbar:false
		  	//optional options
		});
	</script>
</body>
</html>