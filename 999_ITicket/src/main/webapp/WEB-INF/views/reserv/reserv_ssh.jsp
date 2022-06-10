<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>예약하기</title>
<style>
* {
	font-size: 16px;
	font-family: Consolas, sans-serif;
}
</style>

</head>
<body>
	<a href="insert_reserv">reserv 추가</a>
	<br>
	<br>
	<a href="get_reserv_List_id?user_id=${user }">예약 내역 조회(로그인 필수)</a>
	<br>
	<br>
	<br>
	<br> user : ${user}

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<br />
	<a href="reserv_ssh">뒤로가기</a><br>
	<a href="main">메인창으로</a>

</body>
</html>