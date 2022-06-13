<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뮤지컬 컬럼</title>
</head>
<body>
	<h1>뮤지컬 사이트에 오신것을 환영합니다</h1>
	<ul>
		<c:forEach var="detail" items="${getNameList }">
			<li>
				<a href="getDetail?gd_num=${detail.gd_num }">${detail.gd_title }</a>
			</li>
		</c:forEach>
	</ul>
	gjvjhvgjhgjgjggjgj
</body>
</html>