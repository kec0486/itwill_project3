<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기-아이티켓</title>
<style type="text/css">
	body {
		margin: 0;
	    padding: 0;
	    border: 0;
	    outline: 0;
	    vertical-align: baseline;
	    background: transparent;
	}
	.popHeaderWrap {
		position: relative;
	    width: 100%;
	    height: 50px;
	    background-color: #aaa;
	}
	.popTitle {
		display:block;
		line-height: 50px;
	    font-size: 22px;
	    font-weight: normal;
	    color: #fff;
	    text-align: center;
	}
	.btnClose {
		cursor: pointer;
		display: inline-block;
	    width: 50px;
	    height: 50px;
	    background: url(//openimage.interpark.com/.ui/openId/pc/popup/btn_close.png) no-repeat center center #999;
	    text-indent: -500em;
	    float: right;
	}
	.contentsWrap {
		padding: 30px 20px;
	    box-sizing: border-box;
	    background-color: #fff;
	}
	.SearchTab {
		color: #ef3e42;
		display: block;
	    line-height: 45px;
	    text-align: center;
	    font-size: 15px;
	}
	
</style>
</head>
<body>
	<div class="popHeaderWrap">
		<span class="popTitle">아이디 찾기<a class="btnClose" onclick="winClose()"></a></span>
	</div>
	<div class="contentsWrap">
		<div class="SearchTab">
			<a class="SearchTab_id">아이디 찾기</a><a class="SearchTab_pw">비밀번호 찾기</a><br>
		</div>
		아이디를 찾을 방법을 선택해주세요.<br>
		<button onclick="findPhone" class="findBtn">등록된 휴대폰번호로 찾기</button>
		<div>
			<input type="text" placeholder="이름"><br>
			<input type="text" placeholder="휴대폰(-없이 입력)"><br>
			<input type="button" value="확인" class="FindBtn"><br>
		</div>
		<button onclick="findEmail" class="findBtn">등록된 이메일로 찾기</button>
		<div hidden="hidden">
			<input type="text" placeholder="이름"><br>
			<input type="text" placeholder="이메일"><br>
			<input type="button" value="확인" class="FindBtn"><br>
		</div>
	</div>
<script type="text/javascript">
	function winClose() {
		window.close();
	}
</script>
</body>
</html>