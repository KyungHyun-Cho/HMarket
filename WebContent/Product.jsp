<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ǰ �� ����</title>

<style>
	*{
		text-align : center;
	}
	.main{
		position : relative;
		width : 1000px;
		height : 500px;
		margin : 0 auto;
		padding : 20px;
	}
	.title{
		border : 2px solid black;
		height : 50px;
		margin : 0 auto;
		padding : 10px;
	}
	.img{
		border : 0.5px solid #D5D5D5;
		width : 600px;
		height : 430px;
		padding : 0;
	}
	.Pname{
		border : 2px solid #D5D5D5;
		font-size : 20px;
		position : absolute;
		right : 0px;
		top : 72px;
		margin : 20px;
		width : 300px;
		height : 100px;
	}
	.Price{
		border : 2px solid #D5D5D5;
		font-size : 16px;
		position : absolute;
		right : 0px;
		top : 174px;
		margin : 20px;
		width : 300px;
		height : 100px;
	}
	.status{
		border : 2px solid #D5D5D5;
		position : absolute;
		right : 0px;
		top : 302px;
		margin : 20px;
		width : 300px;
		height : 100px;
	}
	.ReserveButton button{
		position : absolute;
		right : 155px;
		top : 406px;
		margin : 20px;
		background : #B2EBF4;
		width : 150px;
		height : 100px;
	}
	.BuyButton button{
		position : absolute;
		right : 0px;
		top : 406px;
		margin : 20px;
		background : #B2EBF4;
		width : 150px;
		height : 100px;
	}
	.Product{
		position : relative;
		width : 1000px;
		height : 500px;
		margin : 0 auto;
		padding : 20px;
	}
	.intro{
		border : 2px solid #D5D5D5;
		width : 980px;
		height : 50px;
		margin : 0 auto;
		padding : 10px;
	}
	.Detail{
		border : 2px solid #D5D5D5;
		width : 1000px;
		height : 430px;
		margin : 0 auto;
	}
	
</style>

</head>

<body>

	<div class = "main">
		<div class = "title">
			�� ����
		</div>
		<div class = "img">
			<img class = "img" src = "#">
		</div>
		
		<div class = "Pname">
			��ǰ��
		</div>
		<div class = "Price">
			����
		</div>
		<div class = "status">
			�Ǹ� ����
		</div>
		<div class = "ReserveButton">
		<button type="submit">����</button>
		</div>
		<div class = "BuyButton">
		<button type="submit">����</button>
		</div>
	</div>
	
	<div class = "Product">
		<div class = "intro">
			��ǰ ���ټҰ�
		</div>
		<div class = "Detail">
			��ǰ �󼼼���
		</div>
	</div>

</body>
</html>