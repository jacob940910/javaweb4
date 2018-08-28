<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
</head>
<body>
	<%
		//형변황을 해주지 않으면 Object로 오기때문에 형변환을 해주어야합니다.
		String id = (String)session.getAttribute("id");
		String nick = (String)session.getAttribute("nick");
		
		// tag나 css나 javascript를 할때는 되도록이면 큰따옴표를 쓰는게 좋습니다.
		if(id == null){
			out.println("<a href='login.jsp'>로그인</a><br />");
		}else{
			out.println("<p>" + nick + "님 환영합니다.</p>");
			out.println("<a href='logout.jsp'>로그아웃</a><br />");
		}
	%>

	<!--  <a href='login.jsp'>로그인</a><br />   -->
</body>
</html>