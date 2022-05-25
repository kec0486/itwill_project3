<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
<style type="text/css">
	.loginForm {
		width: 450px;
	    height: 750px;
	    margin: 0 auto;
	    text-align: center;
	}
	.iInput {
	 	width: 400px;
    	height: 30px;
    	margin-bottom: 10px;
	}
	.loginBtn {
		width: 410px;
    	height: 40px;
    	background-color: red;
	    border: none;
	    border-radius: 5px;
	    margin: 10px 0;
	    color: white;
	    font-size: 15px;
	}
	.login_ckboxForm, .login_findjoin {
		text-align: left;
    	margin-left: 20px;
    	margin: 10px;
	}
	.findjoin {
		text-decoration: none;
    	color: black;
	}
</style>
</head>
<body>
<div class="loginForm">
	<form:form method="post" action="login" class="login">
		<div class="login_iInput">
			<input type="text" name="username" placeholder="아이디" class="iInput" maxlength="100"><br>
			<input type="password" name="password" placeholder="비밀번호" class="iInput" maxlength="100"><br>
			<input type="submit" value="로그인" class="loginBtn"><br>
		</div>
		<div class="login_ckboxForm">
			<input type="checkbox" class="login_ckbox"> 자동로그인 <input type="checkbox" class="login_ckbox"> 아이디저장
		</div>
	</form:form>
	<div class="login_findjoin">
		<a href="idFind" class="findjoin">아이디 찾기</a> | 
		<a href="pwFind" class="findjoin">비밀번호 찾기</a> | 
		<a href="join" class="findjoin">회원가입</a>
	</div>
</div>
</body>
</html>