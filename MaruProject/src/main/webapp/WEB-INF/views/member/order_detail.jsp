<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="MaruContextPath" value="${pageContext.request.contextPath}" scope="application" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문 상세 내역</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${MaruContextPath}/resources/images/icons/favicon.png" />

</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
  <!-- breadcrumb -->
  <div class="container">
    <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
      <a href="${MaruContextPath}/" class="stext-109 cl8 hov-cl1 trans-04"> 메인화면 <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
      </a> <a href="${MaruContextPath}/member/myinfo" class="stext-109 cl8 hov-cl1 trans-04"><span class="stext-109 cl4"> 내 정보 </span> <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i></a> <a href="${MaruContextPath}/member/myinfo#order_list" class="stext-109 cl8 hov-cl1 trans-04"><span class="stext-109 cl4"> 주문 목록 </span> <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i></a> <span class="stext-109 cl4"> 주문 상세 내역 </span>
    </div>
  </div>

  <!-- Shoping Cart -->
  <form class="container m-b-50">
    <h3 class="m-tb-50 m-l-50">주문 상세 내역</h3>
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
            <button type="button" class="btn bg1 cl7 btn-outline-dark">삭제</button>
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
            <button type="button" class="btn bg1 cl7 btn-outline-dark">삭제</button>
          </td>
        </tr>
      </table>
    </div>

    <div class="bg8 text-dark p-l-150 p-tb-40 fs-18 ">
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
    <!-- ==================== -->
    <section class="bg-secondary text-white" style="margin: 50px auto; padding: 20px 150px;">
      <!-- <form class="col-md-6 m-auto bg-secondary text-white p-5"> -->
      <h3 class="col-md-4 bg-dark mt-5">배송정보</h3>
      <hr>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">주문자</p>
        <p class="form-control col-md-10">홍길동</p>
      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">연락처</p>
        <p class="form-control col-md-10">010-1111-1111</p>

      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">배송주소</p>
        <p class="form-control col-md-10">전주시 덕진구</p>

      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">결제방식</p>
        <p class="form-control col-md-10">신용카드</p>
      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">배송일자</p>
        <p class="form-control col-md-10">2022.08.25</p>
      </div>

      <!-- </form> -->
    </section>

    <!-- ================= -->

    <div class="mt-5">
      <button type="button" class="btn btn-outline-dark btn-lg" style="margin-left: 300px;">선택 상품 교환/반품</button>
      <button type="button" class="btn bg-dark text-white ml-3 btn-lg">선택상품 결제 취소</button>
    </div>
  </form>
  <br>

  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>