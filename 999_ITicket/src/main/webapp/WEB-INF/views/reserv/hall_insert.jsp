<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �μ�Ʈ</title>
<style>
	#container { width: 700px; margin: auto; }
	h1, h3, p { text-align: center; }
	table { border-collapse: collapse; }
	table, th, td {
		border: 1px solid black;
		margin: 0 auto;
	}
	th { background-color: orange; }
	.center { text-align: center; }
	
	.border-none, .border-none td { border: none; }
</style>


</head>
<body>


	<form action="insert_hall_do" method="post"
		enctype="multipart/form-data">
		<table>
			<tr>
				<th>�ο���</th>
				<td><input type="number" name="rv_cnt"></td>
			</tr>
			<tr>
				<th>�¼� ��ȣ</th>
				<td><input type="number" name="st_num"></td>
			</tr>
			<tr>
				<td colspan="2" class="center"><input type="submit"
					value="���"></td>
			</tr>
		</table>
	</form>
	<p>
		<a href="reserv_ssh">��� ����</a>
	</p>



</body>
</html>