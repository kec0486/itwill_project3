<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script type="text/javascript">
	function updatepw() {
		let name = "<c:out value='${user.user_name}'/>";
		alert(name + " 회원님께서 요청하신 새로운 비밀번호로 변경 하였습니다.");
		window.close();
	}
	updatepw();
</script>