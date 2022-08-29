<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<table border="1" width="90%">
	<tr>
		<td align="center">
			<!-- 로그인 여부에 따른 메뉴 변화 --> <%
 if (session.getAttribute("UserId") == null) {
 %>
			<a href="../06Session/LoginForm.jsp">로그인</a> <%
 } else {
 %> <a
			href="../06Session/Logout.jsp">로그아웃</a> <%
 }
 %> <!-- 8장과 9장의 회원제 게시판 프로젝트에서 사용할 링크 -->
			&nbsp;&nbsp;&nbsp; <a href="../08Board/List.jsp">게시판(페이징X)</a>
			&nbsp;&nbsp;&nbsp; <a href="../09PagingBoard/List.jsp">게시판(페이징O)</a>
		</td>
	</tr>
</table>