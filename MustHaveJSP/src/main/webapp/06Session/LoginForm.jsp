<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
<style>
	form {
		width: 300px;
	}
</style>
</head>
<body>
	<jsp:include page="../Common/Link.jsp" />
	<h2>로그인 페이지</h2>
	<span style="color: red; font-size: 1.2em;"> <%=request.getAttribute("LoginErrMsg") == null ? "" : request.getAttribute("LoginErrMsg")%>
	</span>
	<%
	if (session.getAttribute("UserId") == null) {
	%>
	<script>
		function validateForm(form) {
			if (!form.user_id.value) {
				alert("아이디를 입력하세요.");
				return false;
			}
			if (form.user_pw.value == "") {
				alert("패스워드를 입력하세요.");
				return false;
			}
		}
	</script>
	<form action="LoginProcess.jsp" method="post" name="loginFrm"
		onsubmit="return validateForm(this);">
		<div class="input-group mb-3">
			<span class="input-group-text" id="inputGroup-sizing-default">아이디</span>
			<input type="text" name="user_id" class="form-control"
				aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default">
		</div>
		<div class="input-group mb-3">
			<span class="input-group-text" id="inputGroup-sizing-default">패스워드</span>
			<input type="password" name="user_pw" class="form-control"
				aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" />
		</div>
		<input class="btn btn-outline-success" type="submit" value="로그인하기" />
	</form>
	<%
	} else {
	%>
	<%=session.getAttribute("UserName")%>회원님, 로그인하셨습니다.
	<br>
	<a href="Logout.jsp">[로그아웃]</a>
	<%
	}
	%>
</body>
</html>