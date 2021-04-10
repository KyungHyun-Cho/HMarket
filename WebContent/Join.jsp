<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript">

function passwordCheckFunction(){
	var pass1 = $('#pass1').val();
	var pass2 = $('#pass2').val();
	if(pass1 != pass2){
		$('#passwordCheckMessage').html('비밀번호가 일치하지 않습니다.');
	}else{
		$('#passwordCheckMessage').html('');		
	}
	
}


</script>

	<style>
		*{
			margin : 0 auto;
			padding : 0;
			box-sizing : border-box;
		}
		#Joinform{
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
		.Join{
			position : relative;
		}
		.Join input{/*PW/PW2/Name/PhoneNum/Email*/
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
		.InputID input{/*ID*/
			display : Inline;
			background : #fff;
			margin : auto;
			width : 350px;
			height : 60px;
			border : 2px solid #D5D5D5;
			margin-bottom : 8px;
			line-height : 40px;
			letter-spacing : 0.1em;
		}
		.InputID button{/*ID*/
			width : 104px;
			height : 60px;
			border : 2px solid #D5D5D5;
			background : #B2EBF4;
		}
		.position button{
			width : 460px;
			height : 60px;
			background : #B2EBF4;
			border : 2px solid #D5D5D5;
			color : black;
		}
		input::-webkit-outer-spin-button,
		input::-webkit-inner-spin-button {
    	-webkit-appearance: none;
    	margin: 0;
		}
	</style>

</head>

<body>

	<div id="Joinform">
		<h2>회원가입</h2>
		<form method="post" action="JoinAction.jsp">
			<div class="Join">
				<div class="InputID">
					<input type="text" id="uUserId" name="uUserId" placeholder="아이디"  maxlength="10" required>
					<button type="submit">중복체크</button>
				</div>
			<input type="password" id="uUserPassword" name="uUserPassword" onkeyup="passwordCheckFunction();" placeholder="비밀번호" maxlength="15" required>
			<input type="password" id="uUserPassword2" name="uUserPassword2" onkeyup="passwordCheckFunction();" placeholder="비밀번호 재확인"  maxlength="15" required>
			<br><h5 style="color: red;"  id="passwordCheckMessage"></h5>
			
			<input type="text" id="uUserName" name="uUserName" placeholder="이름" required>
			<input type="number" id="uUserPhone" name="uUserPhone" placeholder="전화번호" required>
			<input type="email" id="uUserEmail" name="uUserEmail" placeholder="Email" required>
			
			</div>
		<div class="position">
			<button type="submit">가입하기</button>
		</div>
		</form>
		
	</div>
	
</body>
</html>