<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<title>NOTE LIST</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="ctx" value="<%=request.getContextPath()%>" />
<script type="text/javascript"
	src="${ctx}/resources/js/jquery-1.7.1.min.js"></script>
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
	font-size: 40px;
}

.bdiv {
	width: 80%;
	margin: 2% auto;
	padding: 20px;
}

.bdiv img {
	margin-bottom: 10px;
}

.bdiv p {
	margin-top: 20px;
}

.bdiv .ptime{
	font-size: 25px;
	float: right;
	margin:0px;
}

.cut-off-line {
	width: 80%;
}

.tidiv {
	float: right;
	font-size: 80px;
	font-weight: bold;
	color: gray;
 	padding: 5%; 
	cursor: pointer;
	position: fixed;
	top: 75%;
	left: 75%;
	opacity: 0.5;
	filter: alpha(Opacity = 50);
	-moz-opacity: 0.5;
}
</style>
<script type="text/javascript">
	
	var curPage = 1;
	$(function() {
		var res = ${res};
		putHtml(res);
		initscrollEvent();
	})
	
	function putHtml(res){
		if(res != undefined && res != ''){
			for(var i =0 ;i<res.length;i++){
				var imgPath = res[i].imgPath;
				var content = res[i].content;
				var time_str = res[i].create_time_str;
				var contentHtml = "<hr class='cut-off-line'/><div class='bdiv'><img src='${ctx}"+imgPath+"' width='100%' /><p class='ptime'>"+time_str+"</p><p>    "+content+"</p> </div>";
				$("#hbody").append(contentHtml);
			}
		}
	}
	
	function initscrollEvent(){
		$(window).scroll(function(){
			var scrollTop = $(this).scrollTop();               //滚动条距离顶部的高度
			var scrollHeight = $(document).height();           //当前页面的总高度
			var windowHeight = $(this).height();               //当前可视的页面高度
	　        	if(scrollTop + windowHeight+1 >= scrollHeight){      //距离顶部+当前高度 >=文档总高度 即代表滑动到底部
	　        		curPage++;
	　        		$.post(
	　    				"${ctx}/note/list",
	　    				{curPage},
	　    				function(result){
	　    					console.log(result);
	　    					putHtml(result);
	　    				});
	       	}else if(scrollTop<=0){         
	       		//滚动条距离顶部的高度小于等于0
	        }
    	});
	}
	
	function addNote(){
		window.location.href="${ctx}/note/detail";
	}
</script>
</head>
<body>
	<div class="tidiv" onclick="addNote()">+</div>
	<div id="hbody">
	</div>
</body>
</html>