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
	�����̸� �����ð� ���Žð� �¼���ȣ ���� 
	<br>
	<c:if test="${not empty get_reserv_history }">
		<c:forEach var="reserv" items="${get_reserv_history }">
		<table border="2" align = "center">
		<th>1</th>
		<th>����</th>
		<th>���</th>
			<tr align = "center">
				<td>���(����) �̸� </td>
				<td>${reserv.gd_title }</td>
				<td rowspan="5"  bgcolor="skyblue"><a href="get_reserv_del?rv_num=${reserv.rv_num }">${reserv.rv_num }</a>
				</td>
			</tr>
			<tr align = "center">
				<td>���(����) �� ��¥</td>
				<td>${reserv.sd_date} ${reserv.start_time}</td>
			</tr>
			<tr align = "center">
				<td>�¼� ��ȣ</td>
				<td> ${reserv.st_num}</td>
			</tr>

			<tr align = "center">
				<td>���� ����</td>
				<td>${reserv.st_price }</td>
			</tr>
			<tr align = "center">
				<td>���� �ð�</td>
				<td>${reserv.rv_date }</td>
			</tr>
		</table>
		<br><br>
		</c:forEach>
	</c:if>

	<br>
	<a href="reserv_ssh">�ڷΰ���</a>
	<br>


</body>
</html>