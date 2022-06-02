<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예매 인서트</title>
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
				<th>인원수</th>
				<td><input type="number" name="rv_cnt"></td>
			</tr>
			<tr>
				<th>좌석 번호</th>
				<td><input type="number" name="st_num"></td>
			</tr>
			<tr>
				<td colspan="2" class="center"><input type="submit"
					value="등록"></td>
			</tr>
		</table>
	</form>
	<p>
		<a href="reserv_ssh">목록 가기</a>
	</p>



</body>
</html>