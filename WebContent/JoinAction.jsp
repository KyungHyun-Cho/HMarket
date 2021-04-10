<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%	request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="uUserId" />
<jsp:setProperty name="user" property="uUserPassword" />
<jsp:setProperty name="user" property="uUserName" />
<jsp:setProperty name="user" property="uUserPhone" />
<jsp:setProperty name="user" property="uUserEmail" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LOGIN</title>

</head>

<body>
	<%
		if(user.getuUserId() == null || user.getuUserPassword() == null || user.getuUserName() == null
			|| user.getuUserPhone() == null || user.getuUserEmail() == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('모든 항목을 입력해주세요.')");
			script.println("history.back()");
			script.println("</script>");
		} 
		else
		{
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user);
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'Login.jsp'");
				script.println("</script>");
			}
		}
		
	%>
</body>


</html>