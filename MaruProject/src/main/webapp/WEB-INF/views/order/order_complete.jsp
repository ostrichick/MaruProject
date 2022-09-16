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
<h3 class="" style="margin:150px 50px; margin-bottom:50px">결제완료 페이지</h3><br>
<section class="container row m-lr-5" >
		<p class="bg-dark text-white p-3" style="font-size:20px; margin:0px auto"> 구매가 정상적으로 완료되었습니다.</p>
		<br>		
<!--  -->
		
		<table class="table-shopping-cart m-5">
			<tr class="table_head" >
				<th class="column-1">주문번호</th>
				<th class="column-2">총결제금액</th>
				<th class="column-3">결제방법</th>				
			</tr>

			<tr class="table_row">
				<td class="column-1">
					654684
				</td>
				<td class="column-2">
					180,000원
				</td>
				<td class="column-3">
					신용카드(일시불)
				</td>		
			</tr>

		</table>

		<div style="margin-left:80px ;">
			<p>※ 자세한 구매내역 확인 및 문자발송,배송지 변경 등의 서비스는 고객문의, 상품문의 에서 가능합니다.</p>
		</div>
		
		<br>
		
</section>
<div class="" style="margin:100px 0 100px 500px;">
	<button type="button" class="btn btn-dark">구매내역확인</button>
	<button type="button" class="btn btn-dark ml-5">쇼핑계속하기</button>
</div>



 <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>