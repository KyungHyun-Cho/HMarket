<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

   html, body{
     margin:1; 
      padding:1; 
  }
   .header{
     width:100%; 
      height:220px; 
      border-bottom:1px solid lightgray; 
      background:white;
  }
  
   .nav{
     width:15%; 
      height:auto; 
      float:left; 
      background:#B2EBF4;
  }
   .section{
     width:85%; 
      height:auto; 
      float:left;
      background:white;
      
  }
   .footer{
     width:100%; 
      height:150px; 
      clear:both; 
      border-top:1px 
        solid lightgray;
     
  }
  .footer a{
    letter-spacing:0.1em;
    font-size:16px;
    line-height:16px;
    text-decoration:none;
    color:black;
  }
  
  .a1{
    letter-spacing:0.1em;
    font-size:13px;
    line-height:16px;
    text-decoration:none;
    color:black;
  }
  
  .a2{
    letter-spacing:0.1em;
    font-size:16px;
    line-height:16px;
    text-decoration:none;
    color:black;
  }
  .a3{
  	text-decoration:none;
    color:black;
  }
  
  .search input{
    background:#fff;
    margin:0;
    width:460px;
    height:30px;
    border:2px solid #D5D5D5;
    margin-bottom:8px;
    line-height:30px;
  }
  .search button{
    cursor:pointer;
    background:#B2EBF4;
    margin:0;
    width:60;
    border:2px solid #D5D5D5;
    margin-bottom:8px;
    line-height:30px;
  }
  

  
  .mintbtn{
    cursor:pointer;
    background:#B2EBF4;
    border:2px solid #D5D5D5;
    color:black;
  }
  .mintbtn2{
    cursor:pointer;
    background:#B2EBF4;
    margin:0;
    width:60;
    border:1px solid #D5D5D5;
    margin-bottom:8px;
    line-height:30px;
  }
  
  ul.category{
    list-style: none;
    margin: 0px;
    padding: 0px;
    max-width: 250px;
    width: 100%;
  }
  ul.category a{
    letter-spacing:0.1em;
    font-size:16px;
    line-height:16px;
    text-decoration:none;
    color:black;
  }
  ul.category li{
    padding: 5px 0px 5px 5px;
    margin-bottom: 5px;
    border-bottom: 1px solid white;
    letter-spacing:0.1em;
    font-size:16px;
    text-decoration:none;
    color:black;
  }


.li {
  border-bottom: 1px solid #ccc;
  display: table;
  border-collapse: collapse;
  width: 100%;
}
.inner {
  display: table-row;
  overflow: hidden;
}
.li-img {
  display: table-cell;
  vertical-align: middle;
  width: 40%;
  padding-right: 1em;
}
.li-img img {
  display: block;
  width: 100%;
  height: auto;
}
.li-text {
  display: table-cell;
  vertical-align: middle;
  width: 60%;
}
.li-head {
  margin: 0;
}
.li-sub {
  margin: 0;
}

@media all and (min-width: 40em) {
  .list {
    padding: 0.5em;
    max-width: 70em;
    margin: 0 auto;
    overflow: hidden;
    
  }
  .list li {
    padding: 0.5em;
    display: block;
    width: 50%;
    float: left;
    background: none;
    border: 0;
  }
  .inner {
    display: block;
  }
  .li-img, .li-text, .inner {
    letter-spacing:0.1em;
    font-size:16px;
    text-decoration:none;
    color:black;
    display: block;
    width: auto;
    
  }
  .li-text {
    padding: 0.5em 0;
  }
}

@media all and (min-width: 60em) {
  .list li {
    width: 20%;
  }
}

</style>
</head>
<body>
   <header class="header">
      <div align=right>
        <a href="" class="a1">�α��� / ȸ������</a>&nbsp&nbsp|&nbsp&nbsp
        <a href="" class="a1">ȸ������ ����</a>
      </div>
     <hr size=1 color=lightgray>
      
      <center>
         <a href="main.jsp" class="a3"><h2>�߰� �ŷ� ����Ʈ</h2></a>
         <form name="search" class="search" method="get">
            <input type="text" size=30 placeholder="�˻�� �Է��ϼ���.">
            <button type="submit">�˻�</button>
        </form> 
        <div align=center>
        <br>
        <a href="Write.jsp" class="a2">��ǰ �Ǹ�</a>&nbsp&nbsp&nbsp|&nbsp&nbsp
        <a href="" class="a2">�� ����</a>&nbsp&nbsp&nbsp|&nbsp&nbsp
        <a href="chat.jsp" class="a2">1:1 ä��</a>
        
      </div>
   </header>
   <div style="display: flex;overflow: auto;">
      <nav class="nav">
        <h3>&nbsp&nbsp��ǰ ī�װ�</h3>
        <ul class="category">
          <li><a href="">&nbsp���� �Ƿ�</a></li>
          <li><a href="">&nbsp���� �Ƿ�</a></li>
          <li><a href="">&nbsp�м� ��ȭ</a></li>
          <li><a href="">&nbsp������/����</a></li>
          <li><a href="">&nbsp��Ƽ/�̿�</a></li>
          <li><a href="">&nbsp������/����</a></li>
          <li><a href="">&nbsp����/Ƽ��/����</a></li>
          <li><a href="">&nbsp�ݷ�����/�ֿ�</a></li>
          <li><a href="">&nbsp����/�������</a></li>
          <li><a href="">&nbsp���Ƶ�/���</a></li>
          <li><a href="">&nbsp����/����/��ǰ</a></li>
          <li><a href="">&nbsp��Ÿ</a></li>
        </ul>
      </nav>
      <section class="section">
      <h3>&nbsp&nbsp�α� ��ǰ</h3>
      <ul class="list li-img">
         <li>
            <a href="#" class="inner">
               <div class="li-img">
                  <img src="http://placehold.it/600x600" alt="Image Alt Text" />
               </div>
               <div class="li-text">
                  <h4 class="li-head">��ǰ��</h4>
                  <p class="li-sub">10,000��</p>
               </div>
            </a>
         </li>
         <li>
            <a href="#" class="inner">
               <div class="li-img">
                  <img src="http://placehold.it/600x600" alt="Image Alt Text" />
               </div>
               <div class="li-text">
                  <h4 class="li-head">��ǰ��</h4>
                  <p class="li-sub">10,000��</p>
               </div>
            </a>
         </li>
         <li>
            <a href="#" class="inner">
               <div class="li-img">
                  <img src="http://placehold.it/600x600" alt="Image Alt Text" />
               </div>
               <div class="li-text">
                  <h4 class="li-head">��ǰ��</h4>
                  <p class="li-sub">10,000��</p>
               </div>
            </a>
         </li>
         <li>
            <a href="#" class="inner">
               <div class="li-img">
                  <img src="http://placehold.it/600x600" alt="Image Alt Text" />
               </div>
               <div class="li-text">
                  <h4 class="li-head">��ǰ��</h4>
                  <p class="li-sub">10,000��</p>
               </div>
            </a>
         </li>
         <li>
            <a href="#" class="inner">
               <div class="li-img">
                  <img src="http://placehold.it/600x600" alt="Image Alt Text" />
               </div>
               <div class="li-text">
                  <h4 class="li-head">��ǰ��</h4>
                  <p class="li-sub">10,000��</p>
               </div>
            </a>
         </li>
         <li>
            <a href="#" class="inner">
               <div class="li-img">
                  <img src="http://placehold.it/600x600" alt="Image Alt Text" />
               </div>
               <div class="li-text">
                  <h4 class="li-head">��ǰ��</h4>
                  <p class="li-sub">10,000��</p>
               </div>
            </a>
         </li>
         <li>
            <a href="#" class="inner">
               <div class="li-img">
                  <img src="http://placehold.it/600x600" alt="Image Alt Text" />
               </div>
               <div class="li-text">
                  <h4 class="li-head">��ǰ��</h4>
                  <p class="li-sub">10,000��</p>
               </div>
            </a>
         </li>
         <li>
            <a href="#" class="inner">
               <div class="li-img">
                  <img src="http://placehold.it/600x600" alt="Image Alt Text" />
               </div>
               <div class="li-text">
                  <h4 class="li-head">��ǰ��</h4>
                  <p class="li-sub">10,000��</p>
               </div>
            </a>
         </li>
         <li>
            <a href="#" class="inner">
               <div class="li-img">
                  <img src="http://placehold.it/600x600" alt="Image Alt Text" />
               </div>
               <div class="li-text">
                  <h4 class="li-head">��ǰ��</h4>
                  <p class="li-sub">10,000��</p>
               </div>
            </a>
         </li>
        <li>
            <a href="#" class="inner">
               <div class="li-img">
                  <img src="http://placehold.it/600x600" alt="Image Alt Text" />
               </div>
               <div class="li-text">
                  <h4 class="li-head">��ǰ��</h4>
                  <p class="li-sub">10,000��</p>
               </div>
            </a>
         </li>
        <li>
            <a href="#" class="inner">
               <div class="li-img">
                  <img src="http://placehold.it/600x600" alt="Image Alt Text" />
               </div>
               <div class="li-text">
                  <h4 class="li-head">��ǰ��</h4>
                  <p class="li-sub">10,000��</p>
               </div>
            </a>
         </li>
        <li>
            <a href="#" class="inner">
               <div class="li-img">
                  <img src="http://placehold.it/600x600" alt="Image Alt Text" />
               </div>
               <div class="li-text">
                  <h4 class="li-head">��ǰ��</h4>
                  <p class="li-sub">10,000��</p>
               </div>
            </a>
         </li>
      </ul>       
      </section>
   </div>
   <footer class="footer">
   <br>
   <center>
     <a href="" >ȸ�� �Ұ�</a>&nbsp&nbsp|&nbsp&nbsp
      <a href="" >Q&A</a>&nbsp&nbsp|&nbsp&nbsp
      <a href="" >FAQ</a>&nbsp&nbsp
      <br>
      <br><br>
   </center>
      <div>
        <center>
         �� ���� : abcd@naver.com<br>
         ��ȭ ��ȣ : 02)1234-1234<br>
        </center>
      </div>
   </footer>
</body>
</html>