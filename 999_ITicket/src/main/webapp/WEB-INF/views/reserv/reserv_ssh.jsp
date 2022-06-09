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
	function getJsonBoardData() {
		alert("getJsonBoardData() 실행~~")
		//let vo = { seq: 1};
		let vo = {};
		vo.seq = 1;
		console.log(vo);
		console.log(JSON.stringify(vo));
		console.log(view_cnt);
		console.log(JSON.stringify(view_cnt));
		
		$.ajax("test.do", {
			type: "post",
			//data: "seq=1", // key-value 형태
			data: JSON.stringify(vo), // {"seq":1} 문자열 서버로 전송(JSON 문자열)
			contentType: "application/json", //서버로 전송하는 컨텐츠 유형(JSON 형식)
			dataType: "json", //서버로 부터 응답받을 데이터 형식
			success: function(data){
				alert("성공~~");
				console.log(data);
				
				let dispHtml = "<ul><li>";
				dispHtml += data["cnt"] + ", ";
				dispHtml += "</li><ul>";
				$("#listDisp").html(dispHtml);
			},
			error: function(){
				alert("실패~~")
			}
		});
	}
	
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
		<form action="javascript:getJsonBoardData()">
			관람 인원 수 <br> <input type='checkbox' name='view_cnt' value='1'
				onclick='checkOnlyOne(this)' />1명 <input type='checkbox'
				name='view_cnt' value='2' onclick='checkOnlyOne(this)' />2명 <input
				type='checkbox' name='view_cnt' value='3'
				onclick='checkOnlyOne(this)' />3명 <input type='checkbox'
				name='view_cnt' value='4' onclick='checkOnlyOne(this)' />4명 <br>


			<input type='submit' value="예매완료" />
		</form>
	</c:if>

	<div id="listDisp">
		<ul>
			<li>데이터 가져와서 출력하기</li>
		</ul>
	</div>

	<c:if test="${not empty cnt}">
		전달받은 get_seatsave_list : ${get_seatsave_list}<br>
		전달받은 Schedule : ${Schedule}<br>
		전달받은 getseatList_choose : ${getseatList_choose}<br>
		전달받은 인원수 : ${cnt}<br>
	</c:if>

	<br />
	<a href="reserv_ssh">뒤로가기</a>

</body>
</html>