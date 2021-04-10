<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>판매글 작성</title>

<style>

	*{
		position : relative;
		margin : 0 auto;
	}
	.main{
		width : 700px;
		margin : 0 auto;
		/*margin-top : 100px;*/
		padding : 20px;
	}
	.top input{
		display : block;
		background : #fff;
		width : 700px;
		height : 60px;
		border : 2px solid #D5D5D5;
		margin-bottom : 8px;
	}
	.Product{
		width : 700px;
		margin : 0 auto;
		padding : 20px;
	}
	.Product input{
		display : block;
		background : #fff;
		width : 700px;
		height : 60px;
		border : 2px solid #D5D5D5;
		margin-bottom : 8px;
	}
	.TextArea input{
		display : block;
		background : #fff;
		width : 700px;
		height : 1000px;
		border : 2px solid #D5D5D5;
		margin-bottom : 8px;
	}
	.Button{
		display : flex;
	}
	#BackButton button{
		width : 200px;
		height : 60px;
		background : #B2EBF4;
		border : 2px solid #D5D5D5;
		color : black;
		text-decoration: none;
		font-size : 18px;
		text-align : center;
		line-height : 3;
		left : 92px;
	}
	#SaveButton button{
		width : 200px;
		height : 60px;
		background : #B2EBF4;
		border : 2px solid #D5D5D5;
		color : black;
		text-decoration: none;
		font-size : 18px;
		text-align : center;
		line-height : 3;
		right : 85px;
	}
</style>

</head>
<body>
		
<form method="post" action="WriteAction.jsp">
	<div class = "main">
		<div class = "top">
			<input type = "text" id = "title" name = "title" placeholder = "글 제목" maxlength= "50">
			<!--<input type = "image" id = "img" name = "img" placeholder = "이미지 등록">-->
			<input type = "text" id = "name" name = "name" placeholder = "상품명" maxlength = "50">
			<input type = "number" id = "price" name = "price" placeholder = "가격">
		</div>
	</div>
	
	<div class = "Product">
		<input type = "text" id = "Intro" name = "intro" placeholder = "상품 한줄 소개" maxlength = "50">
		<div class = "TextArea">
		<input type = "text" id = "Detail" name = "detail" placeholder = "상품 상세 설명" maxlength = "2048">
		</div>
	</div>
	<div class = "Button">
	<div id = "BackButton">
		<button type = "submit">뒤로가기</button>
	</div>
	<div id = "SaveButton">
		<button type = "submit">저장하기</button>
	</div>
	</div>
</form>
	
</body>
</html>