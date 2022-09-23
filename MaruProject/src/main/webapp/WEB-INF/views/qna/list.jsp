<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
<title>1:1문의</title>
<style>
.pagination {
  justify-content: center;
} 
#button {
	    color: #fff; 
    background-color: #6c757d;
    border-color: #6c757d;
   
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
</head>
<body class="animsition"> 
  <%@include file="/include/header.jsp"%> 
  <br><br>
  <div class="container" >
  <table class="table table-striped table-hover">
	<h3>1:1문의 페이지</h3> 
		<select style="float:right;" class="m-t-20"> 
			<option>정렬</option>
		</select>  
		<thead style="background-color:#d3d3d3; text-align:center;"> 
			<tr class="row">
				<th class="col-6">내용</th>
				<th class="col-2">카테고리</th>
				<th class="col-2">회원번호</th> 
				<th class="col-2">날짜</th>   
			</tr> 
		</thead> 
		<tbody style="text-align:center;">
		<c:forEach var="qna" items="${qnaList}" varStatus="status">
			<tr class="row">
				<td class="col-6"><a href="" id="qna_admin" >${qna.content}</a></td> 
				<td class="col-2">${qna.category}</td> 
				<td class="col-2">
					${qna.idx} 
				</td>  
				<td class="col-2">
				 <fmt:formatDate pattern="yyyy.MM.dd HH:mm" value="${qna.wdate}"/> 
				</td>    
			</tr>
		</c:forEach>	
		</tbody>
 </table> 
		<a href="#" onclick="qna_write()" class="btn btn-success" id="button" >글쓰기</a>
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
  
 <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
  <!--=====================================================================================================-->
</body>
  <style>
  #button{  
  	float:right;
  } 
  td{
  	  border: 1px solid #e6e6e6;
  }
	tr,th{   
		border: 1px solid #e6e6e6;
		background-color:#d3d3d3;
	}
  </style>
  <script type="text/javascript">
  function qna_write() {
   location.href = "${MaruContextPath}/qna/write";  
 }
  </script>
</html> 