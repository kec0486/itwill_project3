<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>예약하기</title>
<style>
* {
	font-size: 16px;
	font-family: Consolas, sans-serif;
}
</style>

<script>
var reserv_cnt=0;

function getCheckboxValue(cnt)  {
	  // 선택된 목록 가져오기
	  const query = 'input[name="view_cnt"]:checked';
	  reserv_cnt = cnt; 
	  const selectedEls = 
	      document.querySelectorAll(query);
	  
	  // 선택된 목록에서 value 찾기
	  let result = '';
	  selectedEls.forEach((el) => {
	    result += el.value + ' ';
	  });
	  console.log(reserv_cnt);
	  // 출력
	document.getElementById('result').innerText = result; 
	  
	}
	
	
	//하나만 선택가능하게 해주는 함수
	function checkOnlyOne(element) {
		  const checkboxes 
		      = document.getElementsByName("view_cnt");
		  
		  checkboxes.forEach((cb) => {
		    cb.checked = false;
		  })
		  
		  element.checked = true;
		}
</script>


</head>
<body>
	<a href="insert_reserv">reserv 추가</a>
	<br>
	<br>
	<a href="get_reserv_List_id?user_id=${user }">예약 내역 조회(로그인 필수)</a>
	<br> user : ${user}

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<c:if test="${empty cnt}">
			관람 인원 수 <br> 
			<input type='checkbox' name='view_cnt' value='1' onclick='checkOnlyOne(this);getCheckboxValue(1)' />1명 
			<input type='checkbox' name='view_cnt' value='2' onclick='checkOnlyOne(this);getCheckboxValue(2)' />2명 
			<input type='checkbox' name='view_cnt' value='3' onclick='checkOnlyOne(this);getCheckboxValue(3)' />3명 
			<input type='checkbox' name='view_cnt' value='4' onclick='checkOnlyOne(this);getCheckboxValue(4)' />4명 <br>
	</c:if>
	
	<div id='result'></div><br>

	<br />
	<a href="reserv_ssh">뒤로가기</a>

</body>
</html>