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
			<li><a href="getDetail?gd_num=${detail.gd_num }">${detail.gd_title }</a>
			</li>
		</c:forEach>


		<c:if test="${not empty getList }">
			<c:forEach var="getList" items="${getList }">
				<tr>
					<td>gd_num : ${getList.gd_num }</td>
					<br>
					<td>gd_title : ${getList.gd_title }</td>
					<br>
					<td>gr_num : ${getList.gr_num }</td>
					<br>
					<br>
					<br>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty getList }">
			<tr>
				<td>데이터가 없습니다</td>
			</tr>
		</c:if>

		<c:if test="${not empty getseatList }">
			<c:forEach var="seat" items="${getseatList }">
				<tr>
					<td>st_num : ${seat.st_num }</td>
					<br>
					<td>st_able : ${seat.st_able }</td>
					<br>
					<td>hl_buildingnum : ${seat.hl_buildingnum}</td>
					<br>
					<br>
					<br>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty getseatList }">
			<tr>
				<td>좌석 데이터가 없습니다</td>
			</tr>
		</c:if>

	</ul>
</body>
</html>