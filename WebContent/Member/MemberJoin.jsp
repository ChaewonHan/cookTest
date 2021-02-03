<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원 가입</h2>
		<form action="/memberJoin.do" method="post">
			<table width="500" border="1">
				<tr height="50">
					<td width="150" align="center">아이디 </td>
					<td width="350" align="center">
						<input type="text" name="userId" size="40" placeholder="id를 넣으세요">						
					</td>
				</tr>
				
				<tr height="50">
					<td width="150" align="center">패스워드</td>
					<td width="350" align="center">
						<input type="password" name="userPw" size="40"
						placeholder="비밀번호는 숫자와 영어만 넣어주세요">						
					</td>
				</tr>
				
				<tr height="50">
					<td width="150" align="center">이름</td>
					<td width="350" align="center">
						<input type="text" name="userName" size="40">						
					</td>
				</tr>
				
				<tr height="50">
					<td width="150" align="center">이메일</td>
					<td width="350" align="center">
						<input type="email" name="userEmail" size="40">						
					</td>
				</tr>
				
				<tr height="50">
					<td width="150" align="center">성별</td>
					<td width="350" align="center">
						<input type="radio" name="userGender" value="F">여성&nbsp;
						<input type="radio" name="userGender" value="M">남성&nbsp;
					</td>
				</tr>
				
				<tr height="50">
					<td width="150" align="center">닉네임</td>
					<td width="350" align="center">
						<input type="text" name="userNickname" size="40">						
					</td>
				</tr>
				<tr height="50">
					<td width="150" align="center">생년월일</td>
					<td width="350" align="center">
						<input type="text" name="userBirth" size="40">						
					</td>
				</tr>
				<tr height="50">
					<td width="150" align="center">전화 번호 </td>
					<td width="350" align="center">
						<input type="tel" name="userPhone" size="40">				
					</td>
				</tr>
				
				<tr height="50">
					<td align = center width="150" colspan="2">
						<input type="submit" value="회원 가입">	
						<input type="reset" value="취소">			
					</td>
				</tr>	
			</table>
		</form>	
</body>
</html>