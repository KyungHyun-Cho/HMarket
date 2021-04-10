<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="post.PostDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%	request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="post" class="post.Post" scope="page" />
<jsp:setProperty name = "post" property="title" />
<jsp:setProperty name = "post" property="name" />
<jsp:setProperty name = "post" property="price" />
<jsp:setProperty name = "post" property="intro" />
<jsp:setProperty name = "post" property="detail" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LOGIN</title>

</head>

<body>
	<%
		String uUserId = null;
	
		if (session.getAttribute("uUserId") != null){
			uUserId = (String) session.getAttribute("uUserId");
		}
		
		if (uUserId == null) 
		{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인이 필요합니다.')");
			script.println("location.href = 'Login.jsp'");
			script.println("</script>");
		}
		
		else 
		{
			if(post.getTitle() == null || post.getName() == null || post.getIntro() == null || post.getDetail() == null){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('모든 항목을 입력해주세요.')");
					script.println("history.back()");
					script.println("</script>");
				} 
				else
				{
					PostDAO postDAO = new PostDAO();
					int result = postDAO.Write((int)session.getAttribute("uUserNo"), post.getName(), post.getTitle(), post.getPrice(), post.getIntro(), post.getDetail(),"THUMBNAIL URL");
					if (result == -1) 
					{
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('글쓰기에 실패했습니다.')");
						script.println("history.back()");
						script.println("</script>");
					}
					else 
					{
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("location.href = 'main.jsp'");
						script.println("</script>");
					}
				}
		}
		
		
	%>
</body>


</html>