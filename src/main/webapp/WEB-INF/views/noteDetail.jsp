<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="ctx" value="<%=request.getContextPath()%>" />
<script type="text/javascript"
	src="${ctx}/resources/js/jquery-1.7.1.min.js"></script>
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href="${ctx}/resources/layui/css/layui.css" /> --%>
<title>add note</title>

<script type="text/javascript">
	$(function() {

	})

	function toBack() {
		window.history.go(-1);
	}

	function cheangeImg(e) {
		var value = e.value;
		$("#filePath").attr("value", value);
	}

</script>
<style type="text/css">
body {
	background-color: #F7F7F7;
}

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

#hbody {
	margin: 10% auto;
}

.bdiv {
	font-size: 30px;
	width: 80%;
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
	height: 30%;
	font-size: 40px;
}

.tidiv {
	float: left;
	font-size: 30px;
	width: 200px;
	line-height: 100%;
	padding: 5%;
	cursor: pointer;
}
</style>
</head>
<body>
	<form action="note-save" method="POST" enctype="multipart/form-data">
		<div id="hbody">
			<div class="bdiv">
				<img alt="show images" src="" hidden="true" align="middle">
				<input id="filePath" type="text" style="border:1px solid #e8e8e8;background-color:white; width:100%;height:60px;padding-left:10px; font-size:30px;" disabled="disabled" >
			</div>
			<div class="bdiv">
				<input type="button" id="uploadBtn" value="upload image" onclick="path.click()"> 
				<input type="file" name="file" id="path" style="display: none" onchange="cheangeImg(this)">
			</div>
			<hr class="cut-off-line" />
			<div class="bdiv">
				<textarea class="ckeditor" name="content" id="TextArea"></textarea>
			</div>
			<div class="bdiv">
				<button>SAVE</button>
				<div class="tidiv" onclick="toBack()">to back</div>
			</div>
		</div>
	</form>
</body>
</html>