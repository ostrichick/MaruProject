<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>로그인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
<style>
input {
  border: red dotted 1px;
}
</style>
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
  <form action="${pageContext.request.contextPath}/product/add_process" method="post" enctype="multipart/form-data">
    제품명
    <input type="text" name="product_name" placeholder="제품명">
    <br />가격
    <input type="number" name="price" placeholder="가격">
    <br />할인 여부
    <input type="checkbox" name="product_sale" value="Y">
    <br />할인율
    <input type="number" name="product_sale_percent" placeholder="할인율">
    % <br />규격
    <input type="text" name="product_size" placeholder="예시: '800x1500'">
    <br />배송 정보
    <input type="text" name="product_delivery_info" placeholder="">
    <br />대분류
    <input type="text" name="product_major_category" placeholder="">
    <br />소분류
    <input type="text" name="product__minor_category" placeholder="">
    <br />재고
    <input type="number" name="product_inventory" placeholder="">
    상품사진
    <input type="file" name="uploadFile" />
    <input type="submit" value="상품 추가" />
  </form>
  <hr style="clear: both; visibility: hidden; margin: 0;">
  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>