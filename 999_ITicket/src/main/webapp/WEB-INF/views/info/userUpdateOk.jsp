<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정-아이티켓</title>
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
		width: 170px;
	}
	.Info {
		margin: 30px 10px;
    	font-size: 14px;
    	
	}
	.info_a {
		display: block;
	    margin: 10px 0;
	    color: black;
        margin-left: 10px;
	}
	.info_b {
		color: red;
	}
	.infoMain {
		margin-top: 50px;
		margin-left: 200px;
	}
	.infoText_red {
		color: red;
	}
	.infoText {
		text-align: center;
		margin-top: 60px;
		font-size: 20px;
	}
	.infoText_sub {
		font-size: 15px;
		color: gray;
		margin: 10px 0;
	}
	.infoAuth {
		display: inline-block;
	    width: 20%;
	   	height: 35px;
    	color: gray;
	}
	.infoAuth_text {
		width: 70%;
	    height: 30px;
	    font-size: 18px;
	}
	.pw_value {
		color: red;
		margin-left: ;
	}
	.infoBtn_re {
		width: 250px;
	    height: 40px;
	    border: 1px solid red;
	    color: red;
	    margin: 50px 5px;
	}
	.infoBtn_smt {
		width: 250px;
	    height: 40px;
	    color: white;
	    background-color: red;
	    margin: 50px 5px;
	}
	.infoMain_title {
	    margin: 10px 0;
    	font-weight: bold;
		
	}
</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="userInfo">
		<div class="infoLogo"><b>IT</b>icket</div>
		<div class="infoTab">
			<div class="Info">${user }님의<br> 회원정보관리입니다.</div>
			<div><a href="userUpdate" class="info_a info_b">회원정보수정</a></div>
			<div><a href="userPwupdate" class="info_a">비밀번호변경</a></div>
			<div><a href="userLog" class="info_a">로그인관리</a></div>
			<div><a href="userDrob" class="info_a">회원탈퇴</a></div>
		</div>
		<div class="infoMain">
			<div>회원정보수정</div>
			<hr>
			<div class="infoMain_title">기본정보</div>
			<form action="">
				<span class="infoAuth">아이디</span><span class="infoAuth_text">${user }</span><br>
				<span class="infoAuth">이름</span><input type="text" name="user_name" class="infoAuth_text"><br>
				<span class="infoAuth">휴대폰번호</span><input type="text" name="phone" class="infoAuth_text"><br>
				<span class="infoAuth">이메일</span><input type="text" name="phone" class="infoAuth_text"><br>
				<a href="userinfo"><button class="infoBtn_re">취소</button></a>
				<button type="submit" class="infoBtn_smt">확인</button>
			</form>
		</div>
		
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>