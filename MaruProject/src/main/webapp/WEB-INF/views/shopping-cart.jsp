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
<h3 class="ml-5" style="margin-top:50px;">장바구니</h3>
<form class="bg0 p-t-75 p-b-85 " style="margin-top:50px;">
	<div class="container">
		<div class="row">
			<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
				<div class="m-l-25 m-r--38 m-lr-0-xl">
					<div class="wrap-table-shopping-cart">
						<table class="table-shopping-cart">
							<tr class="table_head">
								<th class="column-1">제품</th>
								<th class="column-2"></th>
								<th class="column-3">가격</th>
								<th class="column-4">수량</th>
								<th class="column-5">주문금액</th>
							</tr>

							<tr class="table_row">
								<td class="column-1">
									<div class="how-itemcart1">
										<img src="${pageContext.request.contextPath}/resources/images/item-cart-04.jpg" alt="IMG">
									</div>
								</td>
								<td class="column-2">Fresh Strawberries</td>
								<td class="column-3">$ 36.00</td>
								<td class="column-4">
									<div class="wrap-num-product flex-w m-l-auto m-r-0">
										<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>

										<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="1">

										<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>
								</td>
								<td class="column-5">$ 36.00</td>
							</tr>

							<tr class="table_row">
								<td class="column-1">
									<div class="how-itemcart1">
										<img src="${pageContext.request.contextPath}/resources/images/item-cart-05.jpg" alt="IMG">
									</div>
								</td>
								<td class="column-2">Lightweight Jacket</td>
								<td class="column-3">$ 16.00</td>
								<td class="column-4">
									<div class="wrap-num-product flex-w m-l-auto m-r-0">
										<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-minus"></i>
										</div>

										<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product2" value="1">

										<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
											<i class="fs-16 zmdi zmdi-plus"></i>
										</div>
									</div>
								</td>
								<td class="column-5">$ 16.00</td>
							</tr>
						</table>
					</div>

				
				</div>
			</div>

			<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
				<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
					<h4 class="mtext-109 cl2 p-b-30">
						주문내역
					</h4>

					<div class="flex-w flex-t bor12 p-b-13">
						<div class="size-208">
							<span class="stext-110 cl2">
								주문금액:
							</span>
						</div>

						<div class="size-209">
							<span class="mtext-110 cl2">
								$79.65
							</span>
						</div>
					</div>

					<div class="flex-w flex-t bor12 p-t-15 p-b-30">
						<div class="size-208 w-full-ssm">
							<span class="stext-110 cl2">
								배송비:
							</span>
						</div>

						
					</div>

					<div class="flex-w flex-t p-t-27 p-b-33">
						<div class="size-208">
							<span class="mtext-101 cl2">
								합계:
							</span>
						</div>

						<div class="size-209 p-t-1">
							<span class="mtext-110 cl2">
								$79.65
							</span>
						</div>
					</div>

					<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
						상품구매
					</button>
				</div>
			</div>
		</div>
	</div>
</form>




  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>

</body>
</html>