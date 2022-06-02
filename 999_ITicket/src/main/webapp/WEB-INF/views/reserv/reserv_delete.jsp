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
	예매 딜리트(삭제)
	<br>
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

	<c:forEach var="reserv" items="${get_reserv_List }">
		<li><a href="get_reserv_del?rv_num=${reserv.rv_num }">${reserv.rv_num }</a>
		</li>
	</c:forEach>
	
	<c:if test="${not empty get_reserv.rv_num }">
		<form action="delete_reserv_do">
			<!-- 기본키 :  <input type="text" name="rv_num" value=1><br> -->
			삭제할 예약 : <input name = "rv_num" value=${get_reserv.rv_num }> <br>
			<input type="submit" value="삭제완료" /><br>
		</form>
	</c:if>



	<br>
	<a href="reserv_ssh">뒤로가기</a>
	<br>


</body>
</html>