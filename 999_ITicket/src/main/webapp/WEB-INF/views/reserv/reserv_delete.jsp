<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����Ʈ</title>

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
	���� ����Ʈ(����)
	<br> rv_num : ${get_reserv.rv_num }
	<br> st_num : ${get_reserv.st_num }
	<br> sd_num : ${get_reserv.sd_num }
	<br> user_id : ${get_reserv.user_id }
	<br> ���� ����� user_id : ${user}
	<br>

	<c:if test="${not empty get_reserv.rv_num }">
		<form action="delete_reserv_do">
			<!-- �⺻Ű :  <input type="text" name="rv_num" value=1><br> -->
			������ ���� rv_num : <input name="rv_num" value=${get_reserv.rv_num }>
			<br> ������ ���� st_num : <input name="st_num"
				value=${get_reserv.st_num }> <br> ������ ���� sd_num : <input
				name="sd_num" value=${get_reserv.sd_num }> <br>
			<button class="button" type="submit">�����ϱ�</button>
		</form>
	</c:if>
	
	


	<br>
	<a href="reserv_ssh">�ڷΰ���</a>
	<br>


</body>
</html>