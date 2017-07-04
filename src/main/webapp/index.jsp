<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>welcom grilgo blog</title>
<style type="text/css">
.menu_head{
	font-size:80px;
	margin-left: 10%;
	margin-top: 2%;
	padding-bottom:25%;
}
#menu_btn{
	font-size:20px;
	margin:5%;
}
#menu_btn span{
	cursor: pointer;
	color: gray;
}
#menu_btn span a{
	height: 12px;
    line-height: 10px;
    text-decoration: none;
    color: gray;
}

#footer div:after,
#footer div div.section ul:after {
	clear: both;
	display: block;
	font-size: 0;
	height: 0;
	visibility: hidden;
}

#footer {
/* 	background: #274F75 url(images/bg-footer.gif) repeat-x;	 */
	min-height: 113px;
	width: 100%;
}

#footer div {
	font-size: 12px;
	margin: 0 auto;
    padding-top: 37px;
	position: relative;
    width: 960px;
}

#footer div div#connect {
	float: left;
	padding: 0;
	width: 250px;
}

#footer div div#connect a {
	display: inline-block;
	padding-right: 10px;
}

#footer div div.section {
	float: right;
	padding: 0;
	width: 700px;
}

#footer div div.section ul {
	list-style: none;
    margin: 0;
    padding: 0;
	position: absolute;
    right: 0;
	top: 0;
}

#footer div div.section ul li {
 	border-left: 1px solid #6886a0;
	float: left;
	padding: 0 5px;
}

#footer div div.section ul li.last {
	border-right: 0;
}

#footer div div.section ul li:first-child {
	border: none;
}

#footer div div.section ul li a {
    display: block;
	height: 12px;
    line-height: 10px;
    text-decoration: none;
    color: gray;
}

#footer div div.section ul li a:hover {
	color: black;
}

#footer div div.section p {
    margin: 0;
    padding: 20px 3px 0;
    text-align: right;
}
</style>
</head>
<body  style="background-color:#F7F7F7;" >
	<div class="menu_head">
		<div> GRILGO BLOG </div>
		<div id="menu_btn">
			<span>
				<a href="user/to_login">login</a>  
					/  
				<a href="user/to_register">register</a>
			</span>
		</div>
	</div>
	<div id="footer">
		<div>
			<div id="connect">
<!-- 				<a href="http://sc.chinaz.com/moban" target="_blank"><img src="images/icon-facebook.gif" alt="Facebook" /></a> -->
<!-- 				<a href="http://sc.chinaz.com/moban" target="_blank"><img src="images/icon-twitter.gif" alt="Twitter" /></a> -->
<!-- 				<a href="http://sc.chinaz.com/moban" target="_blank"><img src="images/icon-youtube.gif" alt="Youtube" /></a> -->
			</div>
			<div class="section">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="admissions.html">Admissions</a></li>
					<li><a href="trainingcourses.html">Training Courses</a></li>
					<li><a href="career.html">Career</a></li>
					<li class="last"><a href="contactus.html">Contact Us</a></li>
				</ul>
				<p>&copy; Copyright grilgo blog.Company gilgo. All Rights Reserved.</p>
			</div>
		</div>
	</div>
</body>
</html>