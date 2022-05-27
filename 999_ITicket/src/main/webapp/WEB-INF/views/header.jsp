<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!-- header.jsp -->
<style>
	header {
		height: 150px;
		background-color: graytext;
	}
	.header {
		
	}
	.header h1 {
		margin: 0;
	}
</style>
<header>
	<div class="header">
		<a href="./">홈(logo)</a><br>
		<a href="login">로그인</a>
		<form:form method="post" action="logout">
			<a href="./login">로그아웃</a>
		</form:form>
	</div>
</header>