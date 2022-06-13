<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>exhibition 전시/행사</title>
</head>
<body>
	<h1>전시/행사 사이트에 오신것을 환영합니다</h1>
	<ul>
		<c:forEach var="exhibiList" items="${exhibi }">
			<li>
				<a href="getDetail?gd_num=${exhibiList.gd_num }">${exhibiList.gd_title }</a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>