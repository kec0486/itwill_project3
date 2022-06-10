<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예매 딜리트</title>
</head>
<body>
	예매 서치(id기반)
	공연이름 공연시간 예매시간 좌석번호 가격 
	<br>
	<c:if test="${not empty get_reserv_history }">
		<c:forEach var="reserv" items="${get_reserv_history }">
		<table border="2" align = "center">
		<th>1</th>
		<th>내역</th>
		<th>취소</th>
			<tr align = "center">
				<td>행사(공연) 이름 </td>
				<td>${reserv.gd_title }</td>
				<td rowspan="5"  bgcolor="skyblue"><a href="get_reserv_del?rv_num=${reserv.rv_num }">${reserv.rv_num }</a>
				</td>
			</tr>
			<tr align = "center">
				<td>행사(공연) 상영 날짜</td>
				<td>${reserv.sd_date} ${reserv.start_time}</td>
			</tr>
			<tr align = "center">
				<td>좌석 번호</td>
				<td> ${reserv.st_num}</td>
			</tr>

			<tr align = "center">
				<td>예매 가격</td>
				<td>${reserv.st_price }</td>
			</tr>
			<tr align = "center">
				<td>예매 시간</td>
				<td>${reserv.rv_date }</td>
			</tr>
		</table>
		<br><br>
		</c:forEach>
	</c:if>

	<br>
	<a href="reserv_ssh">뒤로가기</a>
	<br>


</body>
</html>