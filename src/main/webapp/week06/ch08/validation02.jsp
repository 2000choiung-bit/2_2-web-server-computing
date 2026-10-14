<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function checkLogin() {
		var form = document.loginForm;
		if (form.id.value == "") {
			alert("아이디를 입력해주세요.");
			form.id.focus();       // 아이디 입력란에 커서 위치시킴
			return false;
		} else if (form.passwd.value == "") {
			alert("비밀번호를 입력해주세요");
			form.passwd.focus();   // 비밀번호 입력란에 커서 위치시킴
			return false;
		}
		form.submit();             // 폼 페이지에서 입력한 데이터 값을 서버로 전송
	}
</script>
<body>
	<form name="loginForm" action="validation02_process.jsp" method="post">
		<p> 아 이 디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="passwd">
		<p> <input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>