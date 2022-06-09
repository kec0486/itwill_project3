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
	예매 딜리트(삭제)
	<br> rv_num : ${get_reserv.rv_num }
	<br> st_num : ${get_reserv.st_num }
	<br> sd_num : ${get_reserv.sd_num }
	<br> user_id : ${get_reserv.user_id }
	<br> 웹에 선언된 user_id : ${user}
	<br>

	<c:if test="${not empty get_reserv.rv_num }">
		<form action="delete_reserv_do">
			<!-- 기본키 :  <input type="text" name="rv_num" value=1><br> -->
			삭제할 예약 rv_num : <input name="rv_num" value=${get_reserv.rv_num }>
			<br> 삭제할 예약 st_num : <input name="st_num"
				value=${get_reserv.st_num }> <br> 삭제할 예약 sd_num : <input
				name="sd_num" value=${get_reserv.sd_num }> <br>
			<button class="button" type="submit">삭제하기</button>
		</form>
	</c:if>
	
	


	<br>
	<a href="reserv_ssh">뒤로가기</a>
	<br>


</body>
</html>