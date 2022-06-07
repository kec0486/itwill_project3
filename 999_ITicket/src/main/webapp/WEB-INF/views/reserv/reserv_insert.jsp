<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>예약하기 인서트</title>

<script>
	
<%int a = 0;%>
	
</script>
</head>
<body>
	예약하기 인서트
	<br>
	<c:forEach var="Detail" items="${getDetail_list }">
		<li><a href="get_Detail_insert?gd_num=${Detail.gd_num }">${Detail.gd_title }</a>
		</li>
	</c:forEach>
	<c:if test="${not empty detail }">
		선택된 데이터 기본키 : ${detail.gd_num }<br>
		선택된 데이터 제목 : ${detail.gd_title }<br>
		선택된 hl_빌딩넘 : ${detail.hl_buildingnum }<br>
		<a href="get_schedule_list?gd_num=${detail.gd_num }">상영시간 선택하기</a>
		<br>
	</c:if>

	<c:if test="${not empty get_schedule_list }">
		get_schedule_list if문
		<c:forEach var="schedule" items="${get_schedule_list }">
			<li><a href="get_schedule?sd_num=${schedule.sd_num }">${schedule.sd_date }
					: ${schedule.start_time }</a></li>
		</c:forEach>
	</c:if>

	<%-- 	<c:if test="${not empty Schedule }">
		Schedule 데이터 : ${Schedule}<br>
		<a href="choose_seat?hl_buildingnum=${Schedule.hl_buildingnum }">좌석 선택하기</a><br>
	</c:if> --%>


	<br>
	<c:if test="${not empty getseatList_choose }">

		<c:forEach var="seat" items="${getseatList_choose }">
			<c:if test="${get_seatsave_list.size() eq 0}">
				<a href="get_seat?st_num=${seat.st_num }&sd_num=${Schedule.sd_num}">${seat.st_num }</a><br>
			</c:if>
			<c:forEach var="seatsave" items="${get_seatsave_list }">
				<c:choose>
					<c:when test = "${seatsave.st_num eq seat.st_num && seatsave.seat_able eq 1}">
						선택할 수 없는 좌석 번호 : ${seat.st_num }<br>
					</c:when>
					<c:otherwise>
						<%a++;
						pageContext.setAttribute("test_size", a);%>
					</c:otherwise>
				</c:choose>

				<c:if test="${get_seatsave_list.size() eq test_size}">
					<a href="get_seat?st_num=${seat.st_num }&sd_num=${Schedule.sd_num}">${seat.st_num }</a>
					<br>
				</c:if>
			</c:forEach>
			<%a = 0;%>
		</c:forEach>
	</c:if>


	<c:if test="${not empty seat.st_num }">
		<form action="insert_reserv_do">
			<!-- 기본키 :  <input type="text" name="rv_num" value=1><br> -->
			인원 : <input type="text" name="rv_cnt" value=1><br> 
			선택한 좌석 : <input name="st_num" value=${seat.st_num }><br> 
			내 ID : <input name="user_id" value="test"> 임시아이디 <br> 
			<input type="hidden" name="sd_num" value=${save_vo.sd_num }><br>
			<input type="submit" value="예매완료" /><br>
		</form>
		
		선택좌석 : ${seat.st_num }
	</c:if>
</body>
</html>