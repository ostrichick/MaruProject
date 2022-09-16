<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="MaruContextPath" value="${pageContext.request.contextPath}" scope="application" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문 완료</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${MaruContextPath}/resources/images/icons/favicon.png" />

</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
<h3 class="ml-5" style="margin-top:150px;">구매내역</h3>
<form class="container" style="margin-bottom:200px;">	
	
	<table class="table">
		<tr class="table_head" >
			<th class="column-1">선택</th>
			<th class="column-2">이미지</th>
			<th class="column-3">제품명</th>
			<th class="column-4">가격</th>
			<th class="column-5">제품규격</th>
			<th class="column-6">색상</th>				
			
		</tr>

		<tr class="table_row">
			<td class="column-1">
				<div class="form-check m-5 float-left">
					<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>				
				</div>	
			</td>
			<td class="column-2">
				<div class="">
					<img src="images/product-01.jpg" width="150px" height="150px" alt="IMG">
				</div>
			</td>
			<td class="column-3">제품명</td>
			<td class="column-4">180,000원</td>				
			<td class="column-5">2000x1600</td>
			<td class="column-6">흰색</td>
							
		</tr>
	</table>
	
		
		<div class="bg-secondary text-dark p-3" style="font-size:18px;">			
			<h3 class="col-md-4 bg-dark text-white mt-1">주문내역</h3>
			<hr>
			<table style="padding:20px 150px;">				
				<tr>
					<td>주문금액 : </td>
					<td>180,000원</td>
				</tr>
				<tr>
					<td>배송비 : </td>
					<td>2,500원</td>
				</tr>
				<tr>
					<td>총주문금액 : </td>
					<td>182,500원</td>
				</tr>
			</table>
		</div>
		<!-- ==================== -->
		<section class="bg-secondary text-white" style="margin:50px auto; padding:20px 150px;">			
			<!-- <form class="col-md-6 m-auto bg-secondary text-white p-5"> -->
				<h3 class="col-md-4 bg-dark mt-5">배송정보</h3>
				<hr>
				<div class="">
					<p for="exampleFormControlInput1" class="form-label">주문자</p>
					<p class="form-control col-md-10">홍길동</p>			
				</div><br>
				<div class="">
					<p for="exampleFormControlInput1" class="form-label">연락처</p>
					<p class="form-control col-md-10">010-1111-1111</p>

				</div><br>
				<div class="">
					<p for="exampleFormControlInput1" class="form-label">배송주소</p>
					<p class="form-control col-md-10">전주시 덕진구 </p>
					
				</div><br>
				<div class="">
					<p for="exampleFormControlInput1" class="form-label">결제방식</p>
					<p class="form-control col-md-10">신용카드</p>					
				</div><br>
				<div class="">
					<p for="exampleFormControlInput1" class="form-label">배송일자</p>
					<p class="form-control col-md-10">2022.08.25</p>					
				</div>	
				
			<!-- </form> -->
		</section>
		
		<!-- ================= -->

		<div class="mt-5">
			<button type="button" class="btn btn-outline-dark btn-lg" style="margin-left:300px;">선택 상품 교환/반품</button>
			<button type="button" class="btn bg-dark text-white ml-3 btn-lg">선택상품 결제 취소</button>
		</div>
</form>
<br>

<!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>