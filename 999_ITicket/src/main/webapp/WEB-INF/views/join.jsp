<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
	.header {
	    height: 50px;
	    padding-top: 5px;
	    line-height: 44px;
	    border-bottom: 1px solid gray;
	}
	.contents {
		width: 500px;
    	height: 950px;
    	margin: 100px auto 50px;
	}
	.joinstyle {
		height: 35px;
		border-bottom: 1px solid gray;
		font-weight: bold;
		margin-bottom: 30px;
	}
	.joinInput {
		width: 350px;
	    height: 30px;
	    border: 0;
	    outline: 0;
	    font-size: 15px;
	    margin-left: 10px;
	}
	.join_btn {
	    width: 500px;
	    height: 50px;
	    border-radius: 10px;
	    color: #fff;
	    font-weight: bold;
	    background: #ef3e43;
	    border: 0;
	    margin-top: 30px;
	}
	input::placeholder {
	  color: #D4D4D4;
	  font-style: italic;
	}
</style>
</head>
<body>
<div class="header">
	<a href="/member/main" class="headerLogo">
		<span class="blind">ITicket</span>
	</a>
</div>
<div class="contents">
	<div class="contents_join">
		<form:form action="join" method="post">
			<div class="joinstyle">
			아이디<input type="text" name="user_id" class="joinInput" placeholder="6~20자 영문, 숫자"><br>
			<div></div>
			</div>
			<div class="joinstyle">
			비밀번호<input type="password" id="user_pw" name="user_pw" class="joinInput" placeholder="8~12자 영문, 숫자, 특수문자"><br>
			</div>
			<div class="joinstyle">
			비밀번호확인<input type="password" id="user_pw" class="joinInput" placeholder="8~12자 영문, 숫자, 특수문자"><br>
			</div>
			<div class="joinstyle">
			이름<input type="text" name="user_name" class="joinInput"><br>
			</div>
			<div class="joinstyle">
			이메일<input type="email" name="email" class="joinInput"><br>
			</div>
			<div class="joinstyle">
			휴대폰<input type="text" name="phone" class="joinInput" placeholder="010 1234 5678"><br>
			</div>
			만 14세 미만 회원은 법정대리인(부모님) 동의를 받은 경우만 회원가입이 가능합니다.<br>
			<input type="submit" value="가입완료" class="join_btn">
		</form:form>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>