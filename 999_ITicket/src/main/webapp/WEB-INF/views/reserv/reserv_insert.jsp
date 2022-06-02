<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예약하기 인서트</title>
</head>
<body>
	예약하기 인서트
	<br>
	<%-- 	<c:if test="${not empty getseatList }">
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
	</c:if> --%>
	<c:forEach var="seat" items="${getseatList }">
		<li><a href="get_seat?st_num=${seat.st_num }">${seat.st_num }</a>
		</li>
	</c:forEach>
	<c:if test="${not empty seat.st_num }">
		<form action="insert_reserv_do">
		
			<!-- 기본키 :  <input type="text" name="rv_num" value=1><br> -->
			인원 : <input type="text" name="rv_cnt" value=1><br>
			선택한 좌석 : <input name = "st_num" value=${seat.st_num }> <br>
			
			<input type="submit" value="예매완료" /><br>
		</form>
		
		선택좌석 : ${seat.st_num }
	</c:if>
</body>
</html>