<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����ϱ�</title>
</head>
<body>
	<a href="reserv_ssh">reserv ��ȸ</a>
	<a href="insert_reserv">reserv �߰�</a>
	<a href="update_reserv">reserv ����</a>
	<a href="delete_reserv">reserv ����</a>
	<br>
	<br>
	<a href="hall_ssh">hall ��ȸ</a>
	<a href="insert_hall">hall �߰�</a>
	<a href="update_hall">hall ����</a>
	<a href="delete_hall">hall ����</a>
	<br>
	<br>
	<a href="seat">goSeat ��ȸ</a><br>
	
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
			<td>�¼� �����Ͱ� �����ϴ�</td>
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
			<td>����� �����Ͱ� �����ϴ�</td>
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
			<td>�¼� �����Ͱ� �����ϴ�</td>
		</tr>
	</c:if>
	
</body>
</html>