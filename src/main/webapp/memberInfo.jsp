<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
	<h2>회원정보출력</h2>
	<hr>
	<%
			request.setCharacterEncoding("UTF-8");//인코딩
			
			String nickName = request.getParameter("nickName");//닉네임 받기
			String gender = request.getParameter("gender");//성별 받기
			String BloodType = request.getParameter("blood");//혈액형 받기
			String introSelf  = request.getParameter("intro");//자기소개 받기
	
			String[] games =request.getParameterValues("game"); //게임장르 받기
	%>
	- 닉네임 : <%= nickName %><br><br>
	- 성별 : <%= gender  %><br><br>
	- 좋아하는 게임장르 : 
		<%
		if(games!=null){
			for(int i=0;i<games.length;i++){
				out.println(games[i]);
			}
		}else{out.println("장르없음");
				
			
		}
		
		
		%>
	<br><br>
	- 혈액형 : <%= BloodType  %><br><br>
	- 자기소개 : <%= introSelf %><br><br>

</body>
</html>