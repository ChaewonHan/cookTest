<%@page import="com.recipe.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MVC2 masichyun77.naver 블로그</title>
</head>
<body>
	<%
		//세션에서 넘겨줬기때문에 꺼내주면됨
		MemberVO m = (MemberVO)session.getAttribute("member");  //import필요


	%>

<%if(m != null){ %>

	<b>[<%=m.getUserName() %>]</b>님 환영합니다. <a href="/Logout.kh">로그아웃</a><br>
	
<%}else{ %>

	<H1>Welcome! JSP&Servlet Web Site!!</H1>
	<form action="/MemberLogin.kh" method="post">
		ID: <input type="text" name="userId"/><br>
		PW: <input type="password" name="userPw"/><br>
		<input type="submit" value="로그인" /><input type="reset" value="취소"/>
	</form>
	
<%} %>

</body>
</html>