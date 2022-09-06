<!--===============================================================================================-->

<!-- 추가 해야될 기능 : 현재 페이지 레이아웃만 잡힌 상태이고 기능이 하나도 없음.
담겨있는 상품의 idx를 통해 전체 장바구니 가격의 합을 구하고
구매버튼을 누를때 현재 담긴 상품을 ArrayList로 만들어서 전송해야함 -->

<!--===============================================================================================-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoping Cart</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />

</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>



  <!-- breadcrumb -->
  <div class="container">
    <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
      <a href="index.html" class="stext-109 cl8 hov-cl1 trans-04"> Home <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
      </a> <span class="stext-109 cl4"> Shoping Cart </span>
    </div>
  </div>


<!-- Shoping Cart -->
<h3 class="ml-5" style="margin-top:150px;">장바구니</h3>
<form class="container" style="margin-bottom:200px;">	
	
	<div class="wrap-table-shopping-cart">
		<table class="table-shopping-cart">
			<tr class="table_head" >
				<th class="column-1">선택</th>
				<th class="column-2">이미지</th>
				<th class="column-3">제품명</th>
				<th class="column-4">가격</th>
				<th class="column-5">제품규격</th>
				<th class="column-6">색상</th>
				<th class="column-7">수량선택</th>
				<th class="column-8"></th>
			</tr>

			<tr class="table_row">
				<td class="column-1">
					<div class="form-check m-5 float-left">
						<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>				
					</div>	
				</td>
				<td class="column-2">
					<div class="">
						<img src="${pageContext.request.contextPath}/resources/images/product-01.jpg" width="150px" height="150px" alt="IMG">
					</div>
				</td>
				<td class="column-3">제품명</td>
				<td class="column-4">180,000원</td>				
				<td class="column-5">2000x1600</td>
				<td class="column-6">흰색</td>
				<td class="column-7">
					<div class="wrap-num-product flex-w">
						<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
							<i class="fs-16 zmdi zmdi-minus"></i>
						</div>

						<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="1">

						<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
							<i class="fs-16 zmdi zmdi-plus"></i>
						</div>
					</div>
				</td>
				<td class="column-8"><button type="button" class="btn btn-outline-dark">장바구니에서 삭제</button></td>
			</tr>

		</table>
	</div>
		
		<div class="bg-secondary text-dark p-3" style="font-size:18px;">
			<p style="font-size:20px;"><strong>[ 주문내역 ]</strong></p>
			<hr>
			<table style="text-align:center;">				
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
		<div class="mt-5">
			<button type="button" class="btn btn-outline-dark" style="margin-left:300px;">선택 상품 구매</button>
			<button type="button" class="btn bg-dark text-white ml-3">취소</button>
		</div>
</form>
<br>






  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>

</body>
</html>