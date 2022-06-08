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
	    width: 25%;
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
	.infoMain_Text span {
		color: red;
	}
	.infoMain_Text {
	    margin: 50px 0;
	    text-align: center;
	    font-size: 20px;
	}
	.infoAuth_text_sub {
		width: 90%;
	    height: 30px;
	    margin-bottom: 40px;
	    padding: 5px 10px;
	    font-size: 15px;
	}
</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="userInfo">
		<div class="infoLogo"><b>IT</b>icket</div>
		<div class="infoTab">
			<div class="Info">${user }님의<br> 회원정보관리입니다.</div>
			<div><a href="userinfoMain?order=1" class="info_a info_b">회원정보수정</a></div>
			<div><a href="userinfoMain?order=2" class="info_a">비밀번호변경</a></div>
			<div><a href="userinfoMain?order=3" class="info_a">로그인관리</a></div>
			<div><a href="userinfoMain?order=4" class="info_a">회원탈퇴</a></div>
		</div>
		<c:if test="${param.order eq 1 }">
			<div class="infoMain">
				<div>회원정보수정</div>
				<hr>
				<div class="infoMain_title">기본정보</div>
				<form action="#">
					<span class="infoAuth">아이디</span><span class="infoAuth_text">${user }</span><br>
					<span class="infoAuth">이름</span><input type="text" name="user_name" class="infoAuth_text"><br>
					<span class="infoAuth">휴대폰번호</span><input type="text" name="phone" class="infoAuth_text"><br>
					<span class="infoAuth">이메일</span><input type="text" name="phone" class="infoAuth_text"><br>
					<a href="userinfo"><button class="infoBtn_re">취소</button></a>
					<button type="submit" class="infoBtn_smt">수정</button>
				</form>
			</div>
		</c:if>
		<c:if test="${param.order eq 2 }">
			<div class="infoMain">
				<div>비밀번호변경</div>
				<hr>
				<div class="infoMain_Text">
					주기적인 <span >비밀번호 변경</span>을 통해<br>
					개인정보를 안전하게 보호하세요.
				</div>
				<form action="#">
					<input type="text" name="user_pw" class="infoAuth_text_sub" placeholder="새 비밀번호"><br>
					<div></div>
					<input type="text" name="user_pw1" class="infoAuth_text_sub" placeholder="새 비밀번호 확인"><br>
					<div></div>
					<div class="infoMain_text_sub">
						비밀번호는 8~12자 이내로 영문(대,소문자), 숫자, 특수문자 3가지 조합 중 2가지
						이상을 조합하셔서 만드시면 됩니다.
					</div>
					<a href="userinfo"><button class="infoBtn_re">취소</button></a>
					<button type="submit" class="infoBtn_smt">수정</button>
				</form>
			</div>
		</c:if>
		<c:if test="${param.order eq 3 }">
			<div class="infoMain">
				<div>로그인관리</div>
				<hr>
				<div class="infoMain_Text">
					자동로그인 내역 확인을 통해<br>
					<span>계정을 안전하게 관리하세요.</span><br>
					<div>아이티켓 사이트(Pc/Mobile)의 자동로그인 유지 내역 입니다.</div>
				</div>
				<span class="infoAuth">최근 접속 일시</span><span>접속 일</span><br>
				<span class="infoAuth">운영체제</span><span>pc/window</span><br>
				<span class="infoAuth">브라우저/앱</span><span>chrome</span><br>
				<span class="infoAuth">IP(국가)</span><span>ip주소</span><br>
			</div>
		</c:if>
		<c:if test="${param.order eq 4 }">
			<div class="infoMain">
				<div>회원탈퇴</div>
				<hr>
				<div class="infoMain_Text">
					아이티켓 서비스를 이용하시는데<br>
					불편함이 있으셨나요? 정말 탈퇴하시겠습니까?
				</div>
				<a href="userinfo"><button class="infoBtn_re">취소</button></a>
				<a href="userdrop"><button type="submit" class="infoBtn_smt">탈퇴</button></a>
			</div>
		</c:if>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>