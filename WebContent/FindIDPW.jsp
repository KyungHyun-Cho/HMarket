<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ID/PW 찾기</title>

<style>
	*{
		position : relative;
		padding : 30px;
		box-sizing : border-box;
	}
	#Findform{
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
	.Find{
		position : relative;
	}
	.FindID input{
		display : block;
		background : #fff;
		width : 350px;
		height : 60px;
		right : 200px;
		border : 2px solid #D5D5D5;
		margin-bottom : 8px;
		line-height : 40px;
		letter-spacing : 0.1em;
	}
	.FindID button{
		width: 350px;
		height : 60px;
		right : 200px;
		text-align : center;
		line-height : 4px;
		background : #B2EBF4;
		border : 2px solid #D5D5D5;
		color : black;
	}
	.FindPW input{
		display : block;
		background : #fff;
		width : 350px;
		height : 60px;
		left : 200px;
		bottom : 268px;
		border : 2px solid #D5D5D5;
		margin-bottom : 8px;
		line-height : 40px;
		letter-spacing : 0.1em;
	}
	.FindPW button{
		width: 350px;
		height : 60px;
		left : 200px;
		bottom : 268px;
		text-align : center;
		line-height : 4px;
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

	<div id="Findform">
		<h2>ID/PW찾기</h2>
		<form action="#" method="post">
		<div class="Find">
			<div class="FindID">
				<input type="text" id="InputName" name="InputName" placeholder="이름">
				<input type="number" id="InputNumber" name="InputNumber" placeholder="전화번호">
				<button type="submit">ID 찾기</button>
			</div>
			<div class="FindPW">
				<input type="text" id="InputID" name="InputID" placeholder="아이디">
				<input type="number" id="InputNumber" name="InputNumber" placeholder="전화번호">
				<button type="submit">PW 찾기</button>
			</div>
		</div>
		</form>
	</div>
</body>
</html>