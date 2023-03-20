<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member</title>
</head>
<body>
	<center>
		<h2>회원가입</h2>
		<form action="memberJoinProc.jsp" method="post">
			<table width="600" border="1">
				<tr height="40">
				   <td width="200" align="center"> 아이디 </td>
				   <td width="400" align="left"> <input type="text" name="id"> </td>
				  </tr> 
				  <tr height="40">
				   <td width="200" align="center"> 패스워드 </td>
				   <td width="400" align="left"> <input type="password" name="pass1"> </td>
				  </tr> 
				  <tr height="40">
				   <td width="200" align="center"> 패스워드확인 </td>
				   <td width="400" align="left"> <input type="password" name="pass2"> </td>
				 </tr>
				 <tr height="40">
				   <td width="200" align="center"> 이메일 </td>
				  <td width="400" align="left"> <input type="email" name="email"> </td>
				  </tr>
				  <tr height="40">
				  	<td width="200" align="center">성별</td>
				  	<td width="400" align="left">
				  		<input type="radio" name="gender" value="남" />남
				  		<input type="radio" name="gender" value="여"/>여
				  	</td>
				  </tr>
				  <tr height="40">
				   <td width="200" align="center"> 주소 </td>
				   <td width="400" align="left"> <input type="text" name="address"> </td>
				  </tr> 
				  <tr height="40">
				   <td width="200" align="center"> 전화번호 </td>
				   <td width="400" align="left"> <input type="phone" name="phone"> </td>
				  </tr>
				  <tr height="40">
				   <td width="200" align="center"> 당신의 관심분야 </td>
					   <td width="400" align="left">
					   <input type="checkbox" name="hobby" value="여행">여행 &nbsp;&nbsp;
					   <input type="checkbox" name="hobby" value="등산">등산 &nbsp;&nbsp;
					   <input type="checkbox" name="hobby" value="음악">음악 &nbsp;&nbsp;
					   <input type="checkbox" name="hobby" value="독서">독서 &nbsp;&nbsp;
				  </td>
				  <tr height="40">
				  	<td width="200" align="center">당신의 직업은?</td>
				  	<td width="400" align="left">
				  		<select name="job" >
				  			<option value="교사">교사</option>
				  			<option value="유튜버">유튜버</option>
				  			<option value="의사">의사</option>
				  			<option value="회사원">회사원</option>
				  		</select>
				  	</td>
				  </tr>
				  <tr height="40">
				   <td width="200" align="center"> 당신의 연령은 </td>
				   <td width="400" align="left">
				   <input type="radio" name="age" value="10">10대 &nbsp;&nbsp;
				   <input type="radio" name="age" value="20">20대&nbsp;&nbsp;
				   <input type="radio" name="age" value="30">30대&nbsp;&nbsp;
				   <input type="radio" name="age" value="40">40대&nbsp;&nbsp;
			  </td>
			  <tr height="40">
			  	<td width="200" align="center">하고 싶은 말</td>
			  	<td width="200" align="left">
			  		<textarea  cols="40" rows="5" name="info"></textarea>
			  	</td>
			  </tr>
			  <tr height="40">
			  	<td width="600" align="center" colspan="2"> 
			  		<input type="submit" value="회원가입">
   				    <input type="reset" value="취소">
			  	</td>
			  </tr>
			</table>
		</form>
	</center>
</body>
</html>