<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����Ʈ</title>
</head>
<body>
	���� ����Ʈ(����)
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
			<!-- �⺻Ű :  <input type="text" name="rv_num" value=1><br> -->
			������ ���� : <input name = "rv_num" value=${get_reserv.rv_num }> <br>
			<input type="submit" value="�����Ϸ�" /><br>
		</form>
	</c:if>



	<br>
	<a href="reserv_ssh">�ڷΰ���</a>
	<br>


</body>
</html>