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
<title>장바구니</title>
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
  <form class="container m-b-50">
    <h3 class="m-tb-50 m-l-50">장바구니</h3>
    <div class="wrap-table-shopping-cart">
      <table class="table-shopping-cart txt-center">
        <tr class="table_head">
          <th class="">선택</th>
          <th colspan="2" class="">상품</th>
          <th class="">가격</th>
          <th class="">수량선택</th>
          <th class=""></th>
        </tr>

        <tr class="table_row">
          <td class="">
            <div class="form-check">
              <input class="input-lg form-check-input dis-inline-block" type="checkbox" value="" id="delete_item" checked>
            </div>
          </td>
          <td class="">
            <div class="">
              <img class="img-fluid img-thumbnail" src="${pageContext.request.contextPath}/resources/images/product-01.jpg" width="150" alt="IMG">
            </div>
          </td>
          <td class="txt-left">제품명ㅇㅇㅇㅇ ㅇㅇㅇㅇㅇ</td>
          <td class="txt-right">1,380,000원</td>
          <td class="">
            <div class="wrap-num-product flex-w m-auto">
              <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                <i class="fs-16 zmdi zmdi-minus"></i>
              </div>

              <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="1">

              <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                <i class="fs-16 zmdi zmdi-plus"></i>
              </div>
            </div>
          </td>

          <td class="">
            <button type="button" class="btn bg7 cl7 btn-outline-dark">삭제</button>
          </td>
        </tr>

        <tr class="table_row">
          <td class="">
            <div class="form-check">
              <input class="form-check-input dis-inline-block" type="checkbox" value="" id="delete_item" checked>
            </div>
          </td>
          <td class="">
            <div class="">
              <img class="img-fluid img-thumbnail" src="${pageContext.request.contextPath}/resources/images/product-01.jpg" width="150" alt="IMG">
            </div>
          </td>
          <td class="txt-left">제품명ㅇㅇㅇㅇ ㅇㅇㅇㅇㅇㅇㅇ ㅇㅇㅇㅇ</td>
          <td class="txt-right">180,000원</td>
          <td class="">
            <div class="wrap-num-product flex-w m-auto">
              <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                <i class="fs-16 zmdi zmdi-minus"></i>
              </div>

              <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="1">

              <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                <i class="fs-16 zmdi zmdi-plus"></i>
              </div>
            </div>
          </td>
          <td class="">
            <button type="button" class="btn bg7 cl7 btn-outline-dark">삭제</button>
          </td>
        </tr>
      </table>
    </div>

    <div class="bg8 text-dark p-l-150 p-tb-20 fs-18 ">
      <p class="fs-20 p-tb-10">
        <strong>[ 주문내역 ]</strong>
      </p>
      <table class="txt-right table-hover">
        <tr>
          <td>주문금액 :</td>
          <td>180,000원</td>
        </tr>
        <tr>
          <td>배송비 :</td>
          <td>2,500원</td>
        </tr>
        <tr>
          <td>총주문금액 :</td>
          <td>182,500원</td>
        </tr>
      </table>
    </div>
    <div class="mt-5 txt-center">
      <button type="button" class="btn btn-lg bg7 cl7 btn-outline-dark">상품 구매</button>
      <button type="button" class="btn bg2 cl2 ml-5 btn-outline-secondary">취소</button>
    </div>
  </form>
>>>>>>> Stashed changes
  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>