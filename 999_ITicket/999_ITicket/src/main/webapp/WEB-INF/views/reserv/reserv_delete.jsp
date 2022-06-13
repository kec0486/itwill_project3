<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예매 딜리트</title>

<style>
.button {
	background-color: blue;
	border: none;
	color: white;
	padding: 15px 30px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>
</head>
<body>
	<c:if test="${not empty get_reserv.rv_num }">
		<form action="delete_reserv_do">
			<table border="2" align = "center">
		<th>1</th>
		<th>내역</th>
			<tr align = "center">
				<td>행사(공연) 이름 </td>
				<td>${get_reserv.gd_title }</td>

				</td>
			</tr>
			<tr align = "center">
				<td>행사(공연) 상영 날짜</td>
				<td>${get_reserv.sd_date} ${get_reserv.start_time}</td>
			</tr>
			<tr align = "center">
				<td>좌석 번호</td>
				<td> ${get_reserv.st_num}</td>
			</tr>

			<tr align = "center">
				<td>예매 가격</td>
				<td>${get_reserv.st_price }</td>
			</tr>
			<tr align = "center">
				<td>예매 시간</td>
				<td>${get_reserv.rv_date }</td>
			</tr>
		</table>

			<!-- 기본키 :  <input type="text" name="rv_num" value=1><br> -->
			<input type = "hidden" name="rv_num" value=${get_reserv.rv_num }><br> 
			<input type = "hidden" name="st_num" value=${get_reserv.st_num }><br>
			<input type = "hidden" name="sd_num" value=${get_reserv.sd_num }> <br>
			<button class="button" type="submit" >삭제하기</button>
		</form>
	</c:if>




	<br>
	<a href="reserv_ssh">뒤로가기</a>
	<br>


</body>
</html>