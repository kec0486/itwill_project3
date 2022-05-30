<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>reserv 예약 페이지</title>
<style>
	ul {
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
		position: fixed;
		min-height: 0;
		width: 600px;
		border-bottom: solid 1px black;
	}
	li {
		float: left;
	}
	li a {
		display: block;
		color: black;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none;
		font-family: -apple-system, system-ui, BlinkMacSystemFont, 
					"맑은 고딕", "Malgun Gothic", "돋움", Dotum, Helvetica, 
					"Apple SD Gothic Neo", sans-serif;
	}
	/* li a:hover:not(.action) {
		background-color: #ced4da;
	} */
	
	.detailInfo {
		display: none;
		width: 500px;
		height: 180px;
		overflow: hidden;
	}
	.reviewInfo {
		display: none;
		overflow: hidden;
	}
	.audiBtn .detailBtn {
		border-style: hidden;
		/* border-bottom: 1px solid red; */
	}
	
	
</style>
</head>
<script>
	$(document).ready(function(){
		$(".detailBtn").click(function(){
			console.log("detailBtn 눌림");
			$(".detailBtn").css({"border-bottom": "3px solid black"});
			$(".audiBtn").css({"border-bottom": "1px solid white"});
			$(".reviewBtn").css({"border-bottom": "1px solid white"});
			$(".audiInfo").hide();
			$(".reviewInfo").hide();
			$(".detailInfo").show();
		});
		
		$(".audiBtn").click(function(){
			console.log("autoBtn 눌림");
			$(".detailBtn").css({"border-bottom": "1px solid white"});
			$(".reviewBtn").css({"border-bottom": "1px solid white"});
			$(".audiBtn").css({"border-bottom": "3px solid black"});
			$(".detailInfo").hide();
			$(".reviewInfo").hide();
			$(".audiInfo").show();
		});
		
		$(".reviewBtn").click(function(){
			console.log("reviewBtn 눌림");
			$(".audiBtn").css({"border-bottom": "1px solid white"});
			$(".detailBtn").css({"border-bottom": "1px solid white"});
			$(".reviewBtn").css({"border-bottom": "3px solid black"});
			$(".audiInfo").hide();
			$(".detailInfo").hide();
			$(".reviewInfo").show();
		});
	});
	
	function whichGenre() {
		if ($(detailVO.gr_num) == 1){
			let inHtml = "";
			inHtml += "<p>예매가능시간: 관람 5시간 전까지</p>";
			inHtml += "<p>회차당 1인 4매 구매 가능합니다.</p>";
		}
	}
</script>
<body>

	<h1>예약 페이지</h1>
	<div>
		<h2>뮤지컬 제목 (Musical dataBase needed)</h2>
		<div class="likePart">
			<div class="prdLikeIcon">
				<!-- 별이든 하트든 별점 평균점수에 맞춰서 채워짐 -->
				<a>별점 아이콘</a>
			</div>
			<div class="prdLikeScore">
				<!-- 리뷰게시판에 매긴 별점 평균내서 나오게 하지 -->
				<a>별점 점수</a>
			</div>
		</div>
		
		<div class="info">
			<ul>
				<li>
					<a class="audiBtn" href="genreDetail">공연정보</a>
				</li> 
				<li>
					<a class="detailBtn" href="#">부가정보</a>
				</li>
				<li>
					<a class="reviewBtn" href="#">
						관람후기
						<span>(35)</span>
					</a>
				</li>
			</ul>
		
			<br><br><br><br><br>
		
		<!-- <a class="audiInfo">공연정보 입니다. 이건 원래 보이는 거에요 알겠냐구요</a>
		<a class="detailInfo">부가 정보입니다. 이건 원래 안보이다가 이제 보여야 되는 거에요</a>		 -->
			
			<p>안녕하세요</p>
			
			<div>
				<div class="audiInfo">
					기본 정보 입니다.......주희때문에 너무 힘들어요..
					<a></a>
				</div>
				<div class="detailInfo">
					숨겨왔던 부가정보 입니다... 보고 싶지 않으셨다면 다른 버튼을 눌러주세요
				</div>
				<div class="reviewInfo">
					리뷰 정보입니다. 여긴 뮤지컬이나 공연에 대한 리뷰가 써지는 곳이에요
				</div>
			</div>
		</div>
	</div>
</body>
</html>