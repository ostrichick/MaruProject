<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>제품 목록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
<style>
span.cart_plus:hover {
  color: #333;
}

span.cart_plus>i:hover {
  width: 110%;
}
</style>
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>

  <!-- Product -->
  <div class="bg0 m-t-23 p-b-140">
    <div class="container">
      <div class="flex-w flex-sb-m p-b-52">
        <div class="flex-w flex-c-m m-tb-10">
          <div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
            <i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i> <i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i> 필터
          </div>

          <div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
            <i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i> <i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i> 검색
          </div>
        </div>
        <div class="flex-w flex-l-m filter-tope-group m-tb-10">
          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">전체</button>

          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".women">거실</button>
          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".men">침실</button>
          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".bag">서재</button>
          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".shoes">주방</button>
          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".watches">욕실</button>
        </div>



        <!-- Search product -->
        <div class="dis-none panel-search w-full p-t-10 p-b-15">
          <div class="bor8 dis-flex p-l-15">
            <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
              <i class="zmdi zmdi-search"></i>
            </button>

            <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product" placeholder="검색">
          </div>
        </div>

        <!-- Filter -->
        <div class="dis-none panel-filter w-full p-t-10">
          <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
            <div class="filter-col1 p-r-15 p-b-27">
              <div class="mtext-102 cl2 p-b-15">정렬하기</div>

              <ul>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04"> 기본값 </a></li>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04"> 인기순 </a></li>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04"> 평점순 </a></li>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04 filter-link-active"> 신상품 </a></li>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04"> 낮은 가격순 </a></li>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04"> 높은 가격순 </a></li>
              </ul>
            </div>

            <div class="filter-col2 p-r-15 p-b-27">
              <div class="mtext-102 cl2 p-b-15">가격</div>

              <ul>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04 filter-link-active"> 전체 </a></li>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04"> ₩0 - ₩50,000 </a></li>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04"> ₩50,000 - ₩100,000 </a></li>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04"> ₩100,000 - ₩200,000 </a></li>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04"> ₩200,000 - ₩500,000 </a></li>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04"> ₩500,000 - ₩1,000,000 </a></li>
                <li class="p-b-6"><a href="#" class="filter-link stext-106 trans-04"> ₩1,000,000 이상 </a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="row isotope-grid">
        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-01.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> {product_name} </a> <span class="stext-105 cl3"> ₩{product_price} </span> <span class="fs-18 cl11"> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star-half"></i> <i class="zmdi zmdi-star-outline"></i> <i class="zmdi zmdi-star-outline"></i>
              </div>

              <div class="block2-txt-child2 flex-r p-t-15">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"><span class="cl3 trans-04 cart_plus"><i class="zmdi zmdi-shopping-cart-plus zmdi-hc-2x mdc-text-grey"></i></span> </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-02.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 램프2 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-03.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 램프3 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-04.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 탁자1 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-05.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 탁자2 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item watches">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-06.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 깔개 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-07.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 작은 소파 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-08.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 소파 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item shoes">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-09.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 흰 안락의자 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-10.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 소파 테이블 세트 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-11.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 탁자 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item men">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-12.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 탁자 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-13.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 테이블 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-14.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 등 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item watches">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-15.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 티 테이블 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img src="${pageContext.request.contextPath}/resources/images/product-16.jpg" alt="IMG-PRODUCT"> <a href="#" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1"> Quick View </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="product-detail" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> 옷장 </a> <span class="stext-105 cl3"> ₩165,000 </span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-3">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"> <img class="icon-heart1 dis-block trans-04" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-01.png" alt="ICON"> <img class="icon-heart2 dis-block trans-04 ab-t-l" src="${pageContext.request.contextPath}/resources/images/icons/icon-heart-02.png" alt="ICON">
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Load more -->
      <div class="flex-c-m flex-w w-full p-t-45">
        <a href="#" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04"> 더 불러오기 </a>
      </div>
    </div>
  </div>


  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>