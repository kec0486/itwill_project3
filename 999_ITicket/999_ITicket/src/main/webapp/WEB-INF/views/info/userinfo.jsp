<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>회원정보-아이티켓</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script src="resources/js/jquery-3.6.0.js"></script>
<script src="resources/js/motion.js"></script>
<style type="text/css">
	.userInfo {
		width: 800px;
	    height: 700px;
	    margin: 0 auto;
	    position: relative;
	    margin-top: 50px;
	}
	.userInfoTab {
		margin-top: 100px;
	}
	.infoLogo {
		text-align: center;
		font-size: 50px;
	}
	.infoUser {
		text-align: center;
		font-size: 20px;
    	margin-top: 20px;
	}
	.infoTab {
		float: left;
		width: 33%;
		height: 150px;
		border: 1px solid seashell;
    	box-sizing: border-box;
	}
	.icon {
		float: left;
    	height: 100px;
	}
	.iconimg {
		border-radius: 30px;
	}
	.title {
		color: black;
		line-height: 45px;
    	margin-left: 15px;
	}
	.noti {
		color: gray;
		font-size: 13px;
		margin-left: 15px;
	}
</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="userInfo">
		<div class="infoLogo"><b>IT</b>icket</div>
		<div class="infoUser">${user }님 회원정보관리</div>
		<div class="userInfoTab">
			<a href="userinfoMain?order=1" class="infoTablink">
				<span class="infoTab">
					<i class="icon"><img src="resources/images/infoimg.png" class="iconimg"></i>
					<span class="title">회원정보수정</span><br>
					<span class="noti">내정보를 수정하세요.</span>
				</span>
			</a>				
			<a href="userinfoMain?order=2" class="infoTablink">
				<span class="infoTab">
					<i class="icon"><img src="resources/images/infoimg.png" class="iconimg"></i>
					<span class="title">비밀번호변경</span><br>
					<span class="noti">내정보를 보호하세요.</span>
				</span>
			</a>				
			<a href="userinfoMain?order=3" class="infoTablink">
				<span class="infoTab">
					<i class="icon"><img src="resources/images/infoimg.png" class="iconimg"></i>
					<span class="title">로그인관리</span><br>
				</span>
			</a>				
			<a href="userinfoMain?order=4" class="infoTablink">
				<span class="infoTab">
					<i class="icon"><img src="resources/images/infoimg.png" class="iconimg"></i>
					<span class="title">회원탈퇴</span><br>
				</span>
			</a>				
		</div>
		
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>