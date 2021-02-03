<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.recipe.member.vo.MemberVO"%>
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
	
	<!-- jQuery CDN 라이브러리 -->
	<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
	
	<script>
		$(function(){
			$('#withdrawBtn').click(function(){
				var result=window.confirm("정말 탈퇴 하시겠습니까?");
				if(result){
					
					//탈퇴를 하겠다고 하면 form태그가 기본적으로 가지고 있는 submit 이벤트를 발동시켜라.는 이렇게 하면 됨$('#memberDelForm').submit();
					
					$('#userPw').attr('type','password'); //누르면 hidden속성을 password속성으로 보이게 만들어라
					$('#checkBtn').css('display','inline'); //display none으로 바꾼걸 누르면 원래속성인 inline으로 다시 바꿔줘라.
					//form 태그 안에 Btn을 만들면 기본적으로 submit 특징을 가지고 있음
					//만약 버튼 말고 다른걸로 만들면 $('#memberDelForm').submit(); 이런식으로 만들어 줘야함.
					
				}else{
					return false;
				}
			});
			
		});
	
	
	</script>
	<style>
		#withdrawBtn{
			color : blue;
			text-decoration : underline;
			cursor : pointer;
			}
	
	
	</style>

<%if(m != null){ %>

	<b>[<%=m.getUserName() %>]</b>님 환영합니다. <a href="/Logout.kh">로그아웃</a><br>
	<form action="/MemberWithdraw.kh" method="post" id="memberDelForm">
		<span id="withdrawBtn">탈퇴화기</span>
		<input type="hidden" name="userPw" id="userPw" placeholder="비밀번호 입력"/>
		<button style="display:none;" id="checkBtn">확인</button>
	</form>
	<!-- 기존로직
	<a href="/MemberWithdraw.kh" id="withdrawBtn">탈퇴화기</a>   -->
	
<%}else{ %>

	<H1>로그인</H1>
	<form action="/MemberLogin.do" method="post">
		ID: <input type="text" name="userId"/><br>
		PW: <input type="password" name="userPw"/><br>
		<input type="submit" value="로그인" /><input type="reset" value="취소"/>
	</form>
	
<%} %>

</body>
</html>