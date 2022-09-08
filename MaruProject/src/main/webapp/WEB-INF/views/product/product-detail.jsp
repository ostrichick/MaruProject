<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Product Detail</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>

  <!-- breadcrumb -->
  <div class="container">
    <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
      <a href="index.html" class="stext-109 cl8 hov-cl1 trans-04"> 전체 <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
      </a> <a href="product.html" class="stext-109 cl8 hov-cl1 trans-04"> 거실 <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
      </a> <span class="stext-109 cl4"> 나무 테이블 </span>
    </div>
  </div>


  <!-- Product Detail -->
  <section class="sec-product-detail bg0 p-t-65 p-b-60">
    <div class="container">

      <div class="row">
        <div class="col-md-6 col-lg-7 p-b-30">
          <div class="p-l-25 p-r-30 p-lr-0-lg">
            <div class="wrap-slick3 flex-sb flex-w">
              <div class="wrap-slick3-dots"></div>
              <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

              <div class="slick3 gallery-lb">
                <div class="item-slick3" data-thumb="${pageContext.request.contextPath}/resources/images/product-detail-01.jpg">
                  <div class="wrap-pic-w pos-relative">
                    <img src="${pageContext.request.contextPath}/resources/images/product-detail-01.jpg" alt="IMG-PRODUCT"> <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="${pageContext.request.contextPath}/resources/images/product-detail-01.jpg"> <i class="fa fa-expand"></i>
                    </a>
                  </div>
                </div>

                <div class="item-slick3" data-thumb="${pageContext.request.contextPath}/resources/images/product-detail-02.jpg">
                  <div class="wrap-pic-w pos-relative">
                    <img src="${pageContext.request.contextPath}/resources/images/product-detail-02.jpg" alt="IMG-PRODUCT"> <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="${pageContext.request.contextPath}/resources/images/product-detail-02.jpg"> <i class="fa fa-expand"></i>
                    </a>
                  </div>
                </div>

                <div class="item-slick3" data-thumb="${pageContext.request.contextPath}/resources/images/product-detail-03.jpg">
                  <div class="wrap-pic-w pos-relative">
                    <img src="${pageContext.request.contextPath}/resources/images/product-detail-03.jpg" alt="IMG-PRODUCT"> <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="${pageContext.request.contextPath}/resources/images/product-detail-03.jpg"> <i class="fa fa-expand"></i>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="col-md-6 col-lg-5 p-b-30">
          <div class="p-r-50 p-t-5 p-lr-0-lg">
            <h2 class="mtext-105 cl2 js-name-detail p-b-14">나무 테이블 &#36;{product_name}</h2>

            <h4 class="mtext-106 cl2">₩ 125,000 &#36;{product_price * product_sale_percent}</h4>
            <del>₩ 150,000 &#36;{product_price}</del>

            <p class="stext-102 cl3 p-t-23">200x600 &#36;{product_size}</p>
            <p class="stext-102 cl3 p-t-23">
              제주/도서산간 제외 <strong>전국 배송 가능</strong><br>수도권 <strong>무료배송</strong>/그 외 지역 유료배송(하단 배송기준 참고)
            </p>
            <!--  -->
            <div class="p-t-33">


              <div class="flex-w p-b-10">
                <div class="size-204 flex-w flex-m respon6-next">
                  <div class="wrap-num-product flex-w m-l-15 m-tb-10">
                    <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                      <i class="fs-16 zmdi zmdi-minus"></i>
                    </div>

                    <input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">

                    <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                      <i class="fs-16 zmdi zmdi-plus"></i>
                    </div>
                  </div>

                  <div class="btn-group" role="group" aria-label="Basic example">
                    <button class="flex-c-m stext-101 cl0 size-107 bg1  hov-btn1 m-lr-15 trans-04 js-addcart-detail">장바구니</button>
                    <button class="flex-c-m stext-101 cl0 size-107 bg1  hov-btn1 m-lr-15 trans-04 js-addcart-detail">즉시구매</button>
                  </div>

                </div>
              </div>
            </div>

            <!--  -->
            <div class="flex-w flex-m p-l-100 p-t-40 respon7">
              <div class="flex-m bor9 p-r-10 m-r-11">
                <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist"> <i class="zmdi zmdi-favorite"></i>
                </a>
              </div>

              <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook"> <i class="fa fa-facebook"></i>
              </a> <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter"> <i class="fa fa-twitter"></i>
              </a> <a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus"> <i class="fa fa-google-plus"></i>
              </a>
            </div>
          </div>
        </div>
      </div>

      <div class="bor10 m-t-50 p-t-43 p-b-40">
        <!-- Tab01 -->
        <div class="tab01">
          <!-- Nav tabs -->
          <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item p-b-10"><a class="nav-link active" data-toggle="tab" href="#description" role="tab">상세정보</a></li>

            <li class="nav-item p-b-10"><a class="nav-link" data-toggle="tab" href="#information" role="tab">배송안내</a></li>

            <li class="nav-item p-b-10"><a class="nav-link" data-toggle="tab" href="#reviews" role="tab">리뷰</a></li>
          </ul>

          <!-- Tab panes -->
          <div class="tab-content p-t-43">
            <!-- - -->
            <div class="tab-pane fade show active" id="description" role="tabpanel">
              <div class="how-pos2 p-lr-15-md">
                <p class="stext-102 cl6">상세설명을 적어주세요. &#36;{product_detail}</p>
              </div>
            </div>

            <!-- - -->
            <div class="tab-pane fade" id="information" role="tabpanel">
              <div class="row">
                <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                  <ul class="p-lr-28 p-lr-15-sm">
                    <li class="flex-w flex-t p-b-7"><span class="stext-102 cl3 size-205"> 무게 </span> <span class="stext-102 cl6 size-206"> 20.79 kg </span></li>

                    <li class="flex-w flex-t p-b-7"><span class="stext-102 cl3 size-205"> 규격 </span> <span class="stext-102 cl6 size-206"> 1000 x 600 x 300 mm </span></li>

                    <li class="flex-w flex-t p-b-7"><span class="stext-102 cl3 size-205"> 재질 </span> <span class="stext-102 cl6 size-206"> 오크나무 </span></li>

                    <li class="flex-w flex-t p-b-7"><span class="stext-102 cl3 size-205"> 색깔 </span> <span class="stext-102 cl6 size-206"> 베이지색 </span></li>

                  </ul>
                </div>
              </div>
            </div>

            <!-- - -->
            <div class="tab-pane fade" id="reviews" role="tabpanel">
              <div class="row">
                <div class="col-sm-10 col-md-8 col-lg-6 m-lr-auto">
                  <div class="p-b-30 m-lr-15-sm">
                    <!-- Review -->
                    <div class="flex-w flex-t p-b-68">
                      <div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
                        <img src="${pageContext.request.contextPath}/resources/images/avatar-01.jpg" alt="AVATAR">
                      </div>

                      <div class="size-207">
                        <div class="flex-w flex-sb-m p-b-17">
                          <span class="mtext-107 cl2 p-r-20"> 김삼식 </span> <span class="fs-18 cl11"> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star-half"></i>
                          </span>
                        </div>

                        <p class="stext-102 cl6">리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰</p>
                      </div>
                    </div>
                    <div class="flex-w flex-t p-b-68">
                      <div class="wrap-pic-s size-109 bor0 of-hidden m-r-18 m-t-6">
                        <img src="${pageContext.request.contextPath}/resources/images/avatar-01.jpg" alt="AVATAR">
                      </div>

                      <div class="size-207">
                        <div class="flex-w flex-sb-m p-b-17">
                          <span class="mtext-107 cl2 p-r-20"> 김삼식2 </span> <span class="fs-18 cl11"> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star-outline"></i> <i class="zmdi zmdi-star-outline"></i>
                          </span>
                        </div>

                        <p class="stext-102 cl6">2리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰</p>
                      </div>
                    </div>

                  
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


  </section>





  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>