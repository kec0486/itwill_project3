<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����ϱ� �μ�Ʈ</title>
</head>
<body>
	�����ϱ� �μ�Ʈ
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
			<td>�¼� �����Ͱ� �����ϴ�</td>
		</tr>
	</c:if> --%>
	<c:forEach var="seat" items="${getseatList }">
		<li><a href="get_seat?st_num=${seat.st_num }">${seat.st_num }</a>
		</li>
	</c:forEach>
	<c:if test="${not empty seat.st_num }">
		<form action="insert_reserv_do">
		
			<!-- �⺻Ű :  <input type="text" name="rv_num" value=1><br> -->
			�ο� : <input type="text" name="rv_cnt" value=1><br>
			������ �¼� : <input name = "st_num" value=${seat.st_num }> <br>
			
			<input type="submit" value="���ſϷ�" /><br>
		</form>
		
		�����¼� : ${seat.st_num }
	</c:if>
</body>
</html>