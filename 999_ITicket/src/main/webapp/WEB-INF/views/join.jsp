<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입-아이티켓</title>
<script src="resources/js/jquery-3.6.0.js"></script>
<script src="resources/js/motion.js"></script>
<style type="text/css">
	.header {
	    height: 50px;
	    padding-top: 5px;
	    line-height: 44px;
	    border-bottom: 1px solid gray;
	}
	.contents {
		width: 500px;
    	height: 700px;
    	margin: 30px auto 50px;
	}
	.joinstyle {
		height: 35px;
		border-bottom: 1px solid gray;
		font-weight: bold;
		margin-bottom: 30px;
	}
	.joinInput {
		width: 350px;
	    height: 30px;
	    border: 0;
	    outline: 0;
	    font-size: 15px;
	    margin-left: 10px;
	}
	.join_btn {
	    width: 500px;
	    height: 50px;
	    border-radius: 10px;
	    color: #fff;
	    font-weight: bold;
	    background: #ef3e43;
	    border: 0;
	    margin-top: 30px;
	}
	input::placeholder {
	  color: #D4D4D4;
	  font-style: italic;
	}
	.join_title {
		width: 93%;
	    display: inline-block;
	    text-align: center;
        margin: 30px 0 50px;
	}
	.headerLogo {
		 display: inline-block;
	}
	.logo {
		width: 200px;
   	 	height: 50px;
	}
</style>
</head>
<body>
<div class="header">
	<a href="./" class="headerLogo">
		<span class="blind"><img src="resources/images/logo.GIF" class="logo"></span>
	</a>
</div>
<div class="contents">
	<div class="contents_join">
		<span class="join_title">정보입력</span>
		<form:form action="join" method="post" id="joinForm">
			<div class="joinstyle">
			아이디<input type="text" name="user_id" id="user_id" class="joinInput" placeholder="6~20자 영문, 숫자" value="${users.user_id }"><br>
			<div id="uErrorText"></div>
			</div>
			<div class="joinstyle">
			비밀번호<input type="password" id="user_pw" name="user_pw" class="joinInput" placeholder="8~12자 영문, 숫자, 특수문자"><br>
			</div>
			<div class="uErrorText"></div>
			<div class="joinstyle">
			비밀번호확인<input type="password" id="user_pw1" class="joinInput" placeholder="8~12자 영문, 숫자, 특수문자"><br>
			</div>
			<div class="uErrorText"></div>
			<div class="joinstyle">
			이름<input type="text" name="user_name" id="user_name" class="joinInput" value="${users.user_name }" placeholder="홍길동"><br>
			</div>
			<div class="uErrorText"></div>
			<div class="joinstyle">
			이메일<input type="email" name="email" id="email" class="joinInput" value="${users.email }" placeholder="hong@google.com"><br>
			</div>
			<div class="uErrorText"></div>
			<div class="joinstyle">
			휴대폰<input type="text" name="phone" id="phone" class="joinInput" placeholder="01012345678"><br>
			</div>
			<div class="uErrorText"></div>
			만 14세 미만 회원은 법정대리인(부모님) 동의를 받은 경우만 회원가입이 가능합니다.<br>
			<input type="submit" value="가입완료" class="join_btn">
		</form:form>
	</div>
</div>
<script type="text/javascript">
	/* function joinCheck() {
		alert("확인");
		let id = $("#user_id").val();
		if(id == ""){
			alert("확인1");
			$("#uErrorText").text("아이디입력바람");
			return false;
		}
		return false;
	} */
	$("#joinForm").submit(function(e){
		e.preventDefault();
		//id 유효성 검사 정규식
		var RegExp = /^[a-z0-9]{6,12}$/;
		//비밀번호 유효성 검사
		var p_RegExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,20}$/;
        //이메일 유효성검사
        var e_RegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        //이름 유효성검사 정규식
        var n_RegExp = /^[가-힣]{2,15}$/;
        //전화번호 유효성검사 정규식
        var t_RegExp = /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/g;
        
        var objId = document.getElementById("user_id"); //아이디
        var objPwd = document.getElementById("user_pw"); //비번
        var objPwd1 = document.getElementById("user_pw1"); //비번
        var objName = document.getElementById("user_name"); //이름
        var objEmail = document.getElementById("email"); //메일
        var objPhone = document.getElementById("phone"); //전화번호
        //아이디
        if(objId.value==''){
            alert("아이디를 입력해주세요.");
            objId.focus();
            return;
        }
        if(!RegExp.test(objId.value)){ //아이디 유효성검사
            alert("아이디는 6~12자의 영문 소문자와 숫자로만 입력해주세요.");        
            objId.focus();
            return;
        }
        /* var idInvalidCheck;
        $.ajax({
			type:"POST",
			url:"${cp}/idInvalid",
			data:{
				'id':objId.val()
			},
			dataType:"json",
			success:function(data){
				if(data == true){
					idInvalidCheck = true;
					$('#idInput').removeClass('is-invalid');
					$('#idInput').addClass('is-valid');
					$('#invalid-feedback').css('display','none');
				    $('#valid-feedback').css('display','block');
					alert('사용가능한 아이디입니다.');
				}else{
					idInvalidCheck = false;
					alert('이미 사용중인 아이디입니다.');
				}
			}
		}) */
        //비밀번호
        if(objPwd.value==''){
            alert("비밀번호를 입력해주세요.");
            objPwd.focus();
            return;
        }
        if (!p_RegExp.test(objPwd.value)) {
            alert("비밀번호는 6~20자의 영문자,숫자,특수문자 조합으로 입력해주세요.");
            objPwd.focus();
            return;
          };
          if(objPwd1.value==''){
              alert("비밀번호확인을 입력해주세요.");
              objPwd1.focus();
              return;
          }
          if(objPwd.value != objPwd1.value){
              alert("비밀번호가 일치하지 않습니다.");
              objPwd1.focus();
              return;
          }
        //이름
          if(objName.value==''){
              alert("이름을 입력해주세요.");
              objName.focus();
              return;
          }
		//이메일
        if(objEmail.value==''){
            alert("이메일을 입력해주세요.");
            objEmail.focus();
            return;
        }
        if(!e_RegExp.test(objEmail.value)){ //이메일 유효성 검사
            alert("올바른 이메일 형식이 아닙니다.");
            objEmail.focus();
            return;
        }
        //전화번호
        if(objPhone.value==''){
            alert("전화번호를 입력해주세요.");
            objPhone.focus();
            return;
        }
        if(!t_RegExp.test(objPhone.value)){
            alert("올바른 연락처 형식을 입력해주세요.");
            objPhone.focus();
            return;
        }
		//let params=$(this).serialize();
		/* $.ajax({
			type:"POST",
			url:"${cp}/join",
			data:params,
			dataType:"json",
			success:function(data){
				if(data>0){
					$(".btn-joinClose").click();
					$('#alert_join_success').show();
				}else{
					alert('서버가 불안정하여 회원가입에 실패했습니다. 이용에 불편을 드려서 죄송합니다.');
				}
			}
		}) */
		return true;
	});
</script>
</body>
</html>