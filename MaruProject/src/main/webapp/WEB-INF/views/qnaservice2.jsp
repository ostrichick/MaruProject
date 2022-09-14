<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
<title>관리자(1:1문의)</title>
<style>
.pagination {
  justify-content: center;
} 
#button {
	    color: #fff;
    background-color: #6c757d;
    border-color: #6c757d;
}
</style>
</head>
<body class="animsition"> 
  <%@include file="/include/header.jsp"%> 
  <br><br>
  <div class="container" >
  <table class="table table-striped table-hover">
	<h3>관리자(1:1문의)</h3> 
		<select style="float:right;">
			<option>정렬</option>
		</select>
		<br> <br> <br>  
		<thead style="background-color:#d3d3d3; text-align:center;"> 
			<tr class="row">
				<th class="col-6">제목</th>
				<th class="col-2">카테고리</th>
				<th class="col-2">아이디</th> 
				<th class="col-2">날짜</th>   
			</tr> 
		</thead>
		<tbody style="text-align:center;">
			<tr class="row">
				<td class="col-6"><a href="#" id="qna_admin" >제목</a> </td>
				<td class="col-2">카테고리</td>
				<td class="col-2">아이디</td> 
				<td class="col-2">날짜</td>    
			</tr>
		</tbody>
 </table> 
	 	<nav aria-label="Page navigation example">
	      <ul class="pagination">
	        <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
	        <li class="page-item active"><a class="page-link" href="#">1</a></li>
	        <li class="page-item"><a class="page-link" href="#">2</a></li>
	        <li class="page-item"><a class="page-link" href="#">3</a></li>
	        <li class="page-item"><a class="page-link" href="#">Next</a></li>
	      </ul>
	    </nav> 
  </div>
 <br><br>  
  
 <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
  <!--=====================================================================================================-->
</body>
  <style>
  	td{
  		border:1px solid;
  	} 
	tr,th{ 
		border:1px solid; 
		background-color:#d3d3d3;
	}
  </style>
</html> 