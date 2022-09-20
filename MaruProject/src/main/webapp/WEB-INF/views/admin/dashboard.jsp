<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자 메인</title>
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
 <style>
 	#button{  
 		    color: #fff; 
    background-color: #6c757d;
    border-color: #6c757d;  
 	}
 	#box{ 
 		height:400px;  
 		background-color: #e6e6e6;   
 	}
 
.pagination {
  justify-content: center;
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

#mbox{  
	margin:30px auto;  
}
td input[type="checkbox"] {
    float: left;
    margin: 5 auto;
    width: 100%; 
}

tr,th ,td{ 
	text-align:center;
	vertical-align:middle; 
}
 
 </style>
</head>
<body class="animsition">
 <%@include file="/include/header.jsp"%>  
 <div class="container m-t-50" >

<h2>관리자 페이지</h2>
<br> 
<div class="container" id="box">
	<a href="${pageContext.request.contextPath}/admin/memberList" class="btn btn-success m-l--15" id="button" >회원관리</a>
	<table class="table table-bordered col-7" id="mbox">   
		<tr class="bg1">   
			<th>선택</th>
			<th>아이디</th>
			<th>이름</th>
			<th>번호</th>
			<th>주소</th>
			<th>상세주소</th>
			<th>가입일</th>
			<th>삭제여부</th> 
		</tr>
		<tr class="bg0"> 
			<td><input type="checkbox" value="선택" id="checkbox"/></td>
			<td><a href="#" class="">1</a></td>
			<td></td>
			<td></td> 
			<td></td>
			<td></td>
			<td></td>
			<td><input type="checkbox" value="삭제여부" id="checkbox"/></td>
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
	<a href="${pageContext.request.contextPath}/admin/updateList" class="btn btn-success  m-l--15" id="button" >상품 업데이트</a>
	<table class="table table-bordered col-4" id="mbox">   
		<tr class="bg1">  
			<th>선택</th>
			<th>상품명</th>
			<th>상품 올린 날짜</th>
			<th>상품 재고</th>
		</tr>
		<tr class="bg0"> 
			<td><input type="checkbox" value="선택" id="checkbox"/></td>
			<td><a href="#" class="">1</a></td>
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
	<a href="${pageContext.request.contextPath}/notice/" class="btn btn-success  m-l--15" id="button" >공지사항</a>
<table class="table table-bordered col-4" id="mbox">   
		<tr class="bg1">  
			<th>선택</th>
			<th>공지사항</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
		<tr class="bg0"> 
			<td><input type="checkbox" value="선택" id="checkbox"/></td>
			<td><a href="#" class="">1</a></td>
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
	<a href="${pageContext.request.contextPath}/admin/" class="btn btn-success  m-l--15" id="button" >1:1문의</a>
<table class="table table-bordered col-4" id="mbox">      
		<tr class="bg1">  
			<th>선택</th>
			<th>문의내용</th>
			<th>아이디</th>
			<th>날짜</th> 
			<th>답변 여부</th>
		</tr>
		<tr class="bg0"> 
			<td><input type="checkbox" value="선택" id="checkbox"/></td>
			<td><a href="#" class="">1</a></td>
			<td></td>
			<td></td>
			<td><input type="checkbox" value="답변여부" id="checkbox"/></td>
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
	<a href="${pageContext.request.contextPath}/admin/" class="btn btn-success  m-l--15" id="button" >상품 문의</a>
<table class="table table-bordered col-6" id="mbox">     
		<tr class="bg1">  
			<th>선택</th>
			<th>카테고리</th>
			<th>상품 문의번호</th>
			<th>아이디</th>
			<th>작성일</th> 
			<th>답변 여부</th>
		</tr> 
		<tr class="bg0"> 
			<td><input type="checkbox" value="선택" id="checkbox"/></td>
			<td></td> 
			<td><a href="#" class="">1</a></td>
			<td></td>
			<td></td>
			<td><input type="checkbox" value="답변 여부" id="checkbox"/></td>
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
</body>
</html>