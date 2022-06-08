<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${keyword } - 아이티켓</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<script src="resources/js/jquery-3.6.0.js"></script>
<script src="resources/js/motion.js"></script>
</head>
<style>
	a {
		color: black;
	}
	.container {
		height: 1000px;
	    height: 1000px;
	    width: 1000px;
	    margin: 100px auto;
	}
	.searchTitle {
	    text-align: center;
	    font-weight: bold;
	    font-size: 25px;	
	}
	.searchDate_input {
		text-align: center;
	 	margin: 20px 0;
	    width: 200px;
	    height: 35px;
	}
	.category ul {
		display: table;
		border-bottom: 1px solid black;
	    width: 100%;
        height: 30px;
	}
	.category ul li {
	    display: table-cell;
	    width: 20%;
	    text-align: center;
	}
	.select_seq {
		display: inline-block;
	}
	.select_seq span {
	    display: inline-block;
   	 	margin: 20px 10px;
	}
	.searchView {
	    width: 100%;
    	height: 200px;
    	padding: 20px 10px;
    	display: table;
	}
	.itemPhoth {
		display:table-cell;
		width: 125px;
		height: 160px;
	}
</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="searchTitle">-에 대한 검색결과 입니다.</div>
		<div class="searchDate"><input type="date" class="searchDate_input"></div>
		<div class="category">
			<ul>
				<li><a href="#">전체(0)</a></li>
				<li><a href="#">뮤지컬(0)</a></li>
				<li><a href="#">콘서트(0)</a></li>
				<li><a href="#">연극(0)</a></li>
				<li><a href="#">클래식/무용(0)</a></li>
			</ul>
			<div class="select_seq">
				<span><a href="#">정확도순</a></span>
				<span><a href="#">공연임박순</a></span>
				<span><a href="#">판매많은순</a></span>
				<span><a href="#">평점높은순</a></span>
			</div>
		</div>
		<div class="searchView">
			<ul class="itemList">
				<li>
					<div class="itemPhoth">
						<a href="#"><span><img src="#"></span></a>
					</div>
					<div class="itemInfo">
						<div class="itemTitle">상품제목</div>
						<div class="itemcontents">상품정보</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>