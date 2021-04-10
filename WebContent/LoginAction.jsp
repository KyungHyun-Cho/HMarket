<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%	request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="uUserId" />
<jsp:setProperty name="user" property="uUserPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LOGIN</title>

</head>

<body>
	<%
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getuUserId(), user.getuUserPassword());
		if (result > 0) { //유효한 userNo를 받았으면
			PrintWriter script = response.getWriter();
			session.setAttribute("uUserNo", result);
			session.setAttribute("uUserId", user.getuUserId());
			script.println("<script>alert('로그인');</script>");
			script.println("<script>");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
		else if (result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 일치하지 않습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('아이디가 존재하지 않습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else if (result == -2) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('DB오류')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>
</body>


</html>