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
	���� ��ġ(id���)
	<br>
	<c:if test="${not empty get_reserv_List_id }">
		<c:forEach var="reserv" items="${get_reserv_List_id }">
			<tr>
				<td>rv_num : ${reserv.rv_num }</td>
				<td>st_num : ${reserv.st_num}</td>
				<td>sd_num : ${reserv.sd_num}</td>
				<td>user_id : ${reserv.user_id}</td>
				<td>rv_date : ${reserv.rv_date }</td>
				<br>
			</tr>
		</c:forEach>
	</c:if>

	<c:forEach var="reserv" items="${get_reserv_List_id }">
		<li><a href="get_reserv_del?rv_num=${reserv.rv_num }">${reserv.rv_num }</a>
		</li>
	</c:forEach>
	
	<c:if test="${not empty get_reserv.rv_num }">
		<form action="delete_reserv_do">
			<!-- �⺻Ű :  <input type="text" name="rv_num" value=1><br> -->
			������ ���� : <input name = "rv_num" value=${get_reserv.rv_num }> <br>
			st_num : <input name = "st_num" value=${get_reserv.st_num }> 
			sd_num : <input name = "sd_num" value=${get_reserv.sd_num }> 
			<input type="submit" value="�����ϱ�" ><br>
		</form>
	</c:if>



	<br>
	<a href="reserv_ssh">�ڷΰ���</a>
	<br>


</body>
</html>