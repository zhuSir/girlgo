<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="ctx" value="<%=request.getContextPath()%>" />
<script type="text/javascript" src="${ctx}/resources/js/jquery-1.7.1.min.js"></script>
	
<script type="text/javascript">
	$(function() {
		var res = '${res}';
		if(res != undefined && res != ''){
			res = ${res};
			for(var i =0 ;i<res.length;i++){
				var imgPath = res[i].imgPath;
				var content = res[i].content;
				var contentHtml = "<hr class='cut-off-line'/><div class='bdiv'><img src='${ctx}"+imgPath+"' width='100%' />     "+content+" </div>";
				$("#hbody").append(contentHtml);
			}
		}
	})
	
	function addNote(){
		window.location.href="${ctx}/note/note-detail";
	}
</script>

<title>note list</title>
<style type="text/css">
	body{
		background-color: #F7F7F7; 
	}
	*{
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
	}
	#hbody{
		//border:1px solid red;
		margin:10% auto;
	}
	.bdiv{
		font-size:30px;	
		//border:1px solid black;
		width:80%;
		margin:2% auto;
		padding:20px;
	}
	.bdiv img{
		margin-bottom:10px;
	}
	.cut-off-line{
		width:80%;
		//margin:2% auto;
	}
	.tidiv {
		float: right;
		margin-right:10%; 
		font-size: 30px;
		width: 200px;
		padding: 5%;
		cursor: pointer;
		//border:1px solid red;
	}
</style>

</head>
<body>
	<div class="tidiv" onclick="addNote()">Add</div>
	<div id="hbody"></div>
</body>
</html>