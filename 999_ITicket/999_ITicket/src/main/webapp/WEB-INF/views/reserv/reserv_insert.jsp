<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예약하기 인서트</title>
<style>
.thing {
	color: yellow;
}
</style>


<script>
var reserv_cnt = 0;

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
	  console.log(cnt);
	  // 출력
	document.getElementById('result').innerText = result; 	  
	}


function checkOnlyOne(element) {
	  
	  const checkboxes 
	      = document.getElementsByName("view_cnt");
	  
	  checkboxes.forEach((cb) => {
	    cb.checked = false;
	  })
	  
	  element.checked = true;
}


<%int a = 0;%>
	
</script>
</head>
<body>

	<br>
	<c:forEach var="Detail" items="${getDetail_list }">
		<table border="1" width="400" height="100">
			<tr align="center">
				<td><a href="get_Detail_insert?gd_num=${Detail.gd_num }">${Detail.gd_title }</a>
				</td>
			</tr>
		</table>
		<%-- 		<li><a href="get_Detail_insert?gd_num=${Detail.gd_num }">${Detail.gd_title }</a>
		</li> --%>
	</c:forEach>

	<c:if test="${not empty detail }">
		<a href="get_schedule_list?gd_num=${detail.gd_num }">상영시간 선택하기</a>
		<br>
	</c:if>

	<c:if test="${not empty get_schedule_list }">
		<c:forEach var="schedule" items="${get_schedule_list }">
			<table border="1" width="400" height="100">
				<tr align="center">
					<td><a href="get_schedule?sd_num=${schedule.sd_num }">${schedule.sd_date }
							: ${schedule.start_time }</a></td>
				</tr>
			</table>

		</c:forEach>
	</c:if>

	<%-- 	<c:if test="${not empty Schedule }">
		Schedule 데이터 : ${Schedule}<br>
		<a href="choose_seat?hl_buildingnum=${Schedule.hl_buildingnum }">좌석 선택하기</a><br>
	</c:if> --%>

	<br>
	<c:if test="${not empty getseatList_choose }">
		Schedule.sd_num : ${Schedule.sd_num }
		관람 인원 수 <br>
		<form action="insert_cnt_do">
			<input type='checkbox' name='view_cnt' value='1' onclick='checkOnlyOne(this);getCheckboxValue(1)' checked />1명 
			<input type='checkbox' name='view_cnt' value='2' onclick='checkOnlyOne(this);getCheckboxValue(2)' />2명 
			<input type='checkbox' name='view_cnt' value='3' onclick='checkOnlyOne(this);getCheckboxValue(3)' />3명 
			<input type='checkbox' name='view_cnt' value='4' onclick='checkOnlyOne(this);getCheckboxValue(4)' />4명 <br>
			<input type="submit" value="선택완료" /><br>
		</form> 

		<div id='result'></div><br>

		
		<div id='result'></div><br>
	
		<c:set var="i" value="0" />
		<c:set var="j" value="5" />

		


		<c:forEach var="seat" items="${getseatList_choose }">
			<c:if test="${get_seatsave_list.size() eq 0}">
				<a href="get_seat?st_num=${seat.st_num }&sd_num=${Schedule.sd_num}">${seat.st_num }</a>
				<c:set var="i" value="${i+1 }" />
			</c:if>
			<c:forEach var="seatsave" items="${get_seatsave_list }">
				<c:choose>
					<c:when
						test="${seatsave.st_num eq seat.st_num && seatsave.seat_able eq 1}">
						${seat.st_num }
						<c:set var="i" value="${i+1 }" />
					</c:when>
					<c:otherwise>
						<%
							a++;
						pageContext.setAttribute("test_size", a);
						%>
					</c:otherwise>
				</c:choose>
				<c:if test="${get_seatsave_list.size() eq test_size}">
					<a href="get_seat?st_num=${seat.st_num }&sd_num=${Schedule.sd_num}">${seat.st_num }</a>
					<c:set var="i" value="${i+1 }" />
				</c:if>
			</c:forEach>
			<%
				a = 0;
				pageContext.setAttribute("test_size", a);
			%>
 			<c:if test="${i%j ==0 }">
				<br />
			</c:if> 
		</c:forEach>
	</c:if>

	<c:if test="${not empty seat.st_num }">
		<form action="insert_reserv_do">
			<!-- 기본키 :  <input type="text" name="rv_num" value=1><br> -->
			인원 : <input type="text" name="rv_cnt" value=1><br> 
			선택한 좌석 : <input name="st_num" value=${seat.st_num }><br> 
			<input type="hidden" name="user_id" value=${user }> 
			<input type="hidden" name="sd_num" value=${save_vo.sd_num }>
			<input type="submit" value="예매완료" /><br>
		</form>
		
		선택좌석 : ${seat.st_num }
	</c:if>

	<br />
	<br />
	<a href="reserv_ssh">뒤로가기</a>
	


</body>
</html>