<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예약하기</title>
</head>
<body>
	<a href="reserv_ssh">reserv 조회</a>
	<a href="insert_reserv">reserv 추가</a>
	<a href="update_reserv">reserv 수정</a>
	<a href="delete_reserv">reserv 삭제</a>
	<br>
	<br>
	<a href="hall_ssh">hall 조회</a>
	<a href="insert_hall">hall 추가</a>
	<a href="update_hall">hall 수정</a>
	<a href="delete_hall">hall 삭제</a>
	<br>
	<br>
	<a href="seat">goSeat 조회</a><br>
	
	<c:if test="${not empty get_reserv_List }">
		<c:forEach var="reserv" items="${get_reserv_List }">
			<tr>
				<td>rv_num : ${reserv.rv_num }</td>
				<td>rv_cnt : ${reserv.rv_cnt }</td>
				<td>st_num : ${reserv.st_num}</td>
				<br>	
			</tr>
		</c:forEach>
	</c:if>
	<c:if test="${empty get_reserv_List }">
		<tr>
			<td>좌석 데이터가 없습니다</td>
		</tr>
	</c:if>
	
	<br>
	<c:if test="${not empty get_hall_List }">
		<c:forEach var="hall" items="${get_hall_List }">
			<tr>
				<td>HL_BUILDINGNUM : ${hall.HL_BUILDINGNUM }</td>
				<td>HL_TOTSEAT : ${hall.HL_TOTSEAT }</td>
				<br>	
			</tr>
		</c:forEach>
	</c:if>
	<c:if test="${empty get_hall_List }">
		<tr>
			<td>행사장 데이터가 없습니다</td>
		</tr>
	</c:if>
	<br>
		<c:if test="${not empty getseatList }">
		<c:forEach var="seat" items="${getseatList }">
			<tr>
				<td>st_num : ${seat.st_num }</td>
				<td>st_able : ${seat.st_able }</td>
				<td>hl_buildingnum : ${seat.hl_buildingnum }</td>
				<br>	
			</tr>
		</c:forEach>
	</c:if>
	<c:if test="${empty getseatList }">
		<tr>
			<td>좌석 데이터가 없습니다</td>
		</tr>
	</c:if>
	
</body>
</html>