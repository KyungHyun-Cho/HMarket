<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>LOGIN</title>
	<style>
		*{
			margin : 0 auto;
			padding : 0;
			box-sizing : border-box;
		}
		#loginform{
			width : 500px;
			height : 560px;
			margin : auto;
			margin-top : 240px;
			padding : 20px;
		}
		h2{
			font-size : 40px;
			text-align : center;
			margin : auto;
			margin-bottom : 30px;
		}
		.login{
			position : relative;
		}
		.login input{
			display : block;
			background : #fff;
			margin : auto;
			width : 460px;
			height : 60px;
			border : 2px solid #D5D5D5;
			margin-bottom : 8px;
			line-height : 40px;
			letter-spacing : 0.1em;
		}
		.login button{
			width : 460px;
			height : 60px;
			background : #B2EBF4;
			border : 2px solid #D5D5D5;
			color : black;
		}
		.position{
			position : relative;
			text-align : center;
			margin-top : 20px;
		}
		.position a{
			cursor : pointer;
			letter-spacing : 0.1em;
			font-size : 16px;
			line-height : 16px;
			display : inline-block;
			text-decoration : none;
			color : #8E8E8E;
		}
		.position .bar{
			margin : 0 3px;
		}
		.bar{
			display : inline-block;
			width : 1px;
			height : 15px;
			background : #BDBDBD;
			vertical-align : center;
		}
	</style>
	
</head>

<body>
	<div id="loginform">
			<h2>LOGIN</h2>
			<form method="post" action="LoginAction.jsp">
		<div class="login">
				<input type="text" id="uUserId" name="uUserId" placeholder="���̵�">
				<input type="password" id="uUserPassword" name="uUserPassword" placeholder="��й�ȣ">
				<br>
				<button type="submit">�α���</button>
		</div>
			</form>
		<div class = "position">
			<a target="_blank" id="FindID" href="FindIDPW.jsp">���̵� ã��</a>
			<span class="bar"></span>
			<a target="_blank" id="FindPW" href="FindIDPW.jsp">��й�ȣ ã��</a>
			<span class="bar"></span>
			<a target="_blank" id="Join" href="Join.jsp">ȸ������</a>
		</div>
	</div>
</body>


</html>