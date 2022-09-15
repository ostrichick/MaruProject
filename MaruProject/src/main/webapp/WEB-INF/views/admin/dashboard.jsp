<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인</title>
</head>
<body>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
 <div class="container" >

<h2>관리자 페이지</h2>
<br> 
<div class="container" id="box">
	<a href="${pageContext.request.contextPath}/admin/memberList" class="btn btn-success" id="button" >회원관리</a>
	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>번호</th>
			<th>주소</th>
			<th>상세주소</th>
			<th>가입일</th>
		</tr>
		<tr>
			<td><a>1</a></td>
			<td></td>
			<td></td> 
			<td></td>
			<td></td>
		</tr>
	</table>   
	<br>   
	<nav aria-label="Page navigation example">
	      <ul class="pagination">
	        <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
	        <li class="page-item active"><a class="page-link" href="#">1</a></li>
	        <li class="page-item"><a class="page-link" href="#">2</a></li> 
	        <li class="page-item"><a class="page-link" href="#">3</a></li>
	        <li class="page-item"><a class="page-link" href="#">다음</a></li> 
	      </ul>
	</nav> 
</div>
<br><br>
<div class="container" id="box">
	<a href="${pageContext.request.contextPath}/admin/updateList" class="btn btn-success" id="button" >상품 업데이트</a>
	<table>
		<tr> 
			<th>상품명</th>
			<th>상품 올린 날짜</th>
			<th>상품재고</th> 
		</tr>
		<tr>
			<td><a>상품명</a></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<nav aria-label="Page navigation example">
	      <ul class="pagination">
	        <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
	        <li class="page-item active"><a class="page-link" href="#">1</a></li>
	        <li class="page-item"><a class="page-link" href="#">2</a></li> 
	        <li class="page-item"><a class="page-link" href="#">3</a></li>
	        <li class="page-item"><a class="page-link" href="#">다음</a></li> 
	      </ul>
	</nav> 
</div>
<br><br>
<div class="container" id="box">
	<a href="${pageContext.request.contextPath}/notice/" class="btn btn-success" id="button" >공지사항</a>
	<table>
		<tr>
			<th>공지사항</th>
			<th>날짜</th>
			<th>조회수</th> 
		</tr>
		<tr>
			<td><a>1</a></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<nav aria-label="Page navigation example">
	      <ul class="pagination">
	        <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
	        <li class="page-item active"><a class="page-link" href="#">1</a></li>
	        <li class="page-item"><a class="page-link" href="#">2</a></li> 
	        <li class="page-item"><a class="page-link" href="#">3</a></li>
	        <li class="page-item"><a class="page-link" href="#">다음</a></li> 
	      </ul>
	</nav> 
</div>
<br><br>
<div class="container" id="box">
	<a href="${pageContext.request.contextPath}/admin/" class="btn btn-success" id="button" >1:1문의</a>
	<table>
		<tr>
			<th>문의내용</th>
			<th>아이디</th>
			<th>날짜</th> 
		</tr>
		<tr>
			<td><a>1</a></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<nav aria-label="Page navigation example">
	      <ul class="pagination">
	        <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
	        <li class="page-item active"><a class="page-link" href="#">1</a></li>
	        <li class="page-item"><a class="page-link" href="#">2</a></li> 
	        <li class="page-item"><a class="page-link" href="#">3</a></li>
	        <li class="page-item"><a class="page-link" href="#">다음</a></li> 
	      </ul>
	</nav> 
</div>
<br><br>
<div class="container" id="box">
	<a href="${pageContext.request.contextPath}/admin/" class="btn btn-success" id="button" >FAQ 업데이트</a>
	<table>
		<tr>
			<th>FAQ내용</th>
			<th>카테고리</th>
			<th>조회수</th> 
		</tr>
		<tr>
			<td><a>1</a></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<nav aria-label="Page navigation example">
	      <ul class="pagination">
	        <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
	        <li class="page-item active"><a class="page-link" href="#">1</a></li>
	        <li class="page-item"><a class="page-link" href="#">2</a></li> 
	        <li class="page-item"><a class="page-link" href="#">3</a></li>
	        <li class="page-item"><a class="page-link" href="#">다음</a></li> 
	      </ul>
	</nav> 
</div>
<br><br>
<div class="container" id="box">
	<a href="${pageContext.request.contextPath}/admin/" class="btn btn-success" id="button" >상품 문의</a>
	<table>
		<tr>
			<th>상품문의</th>
			<th>아이디</th>
			<th>작성일</th>  
		</tr>
		<tr>
			<td><a>1</a></td>
			<td></td>
			<td></td>
		</tr>
	</table> 
	<nav aria-label="Page navigation example">
	      <ul class="pagination">
	        <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
	        <li class="page-item active"><a class="page-link" href="#">1</a></li>
	        <li class="page-item"><a class="page-link" href="#">2</a></li> 
	        <li class="page-item"><a class="page-link" href="#">3</a></li>
	        <li class="page-item"><a class="page-link" href="#">다음</a></li> 
	      </ul>
	</nav> 
</div> 
 <br><br> 
</div><!-- end first container -->
 <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
  <%@include file="/include/style.jsp"%>
 
 <style>  
 	#button{  
 		    color: #fff; 
    background-color: #6c757d;
    border-color: #6c757d;  
 	}
 table {
    margin:auto; 
}
th{
	 background-color: #e2e2e2;
} 
table, td, th { 
    border-collapse : collapse;
    border : 1px solid black;
    width:600px;  
    text-align:center; 
}
 	#box{ 
 		height:400px; 
 		background-color: #d3d3d3;  
 	}
 
.pagination {
  justify-content: center;
}
a{
	float:left;
}
a.page-link {
  color: #666;
}

li.page-item.active>a.page-link {
  background: #666;
  color: #eee;
  border-color: #333;
} 
 
li.page-item.active>a.page-link:hover {
  background: #444;
}
 </style>
</body>
</html>