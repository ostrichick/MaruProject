<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".livingroom">거실</button>
          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".bedroom">침실</button>
          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".library">서재</button>
          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".kitchen">주방</button>
          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".bathroom">욕실</button>
          <button class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".etcproduct">기타</button>
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
        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item livingroom">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <a href="detail?product_idx=" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> <img src="${pageContext.request.contextPath}/resources/images/product-01.jpg" alt="IMG-PRODUCT"></a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="detail?product_idx=" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> {product_name} </a> <span class="stext-105 cl3"> ₩{product_price} </span> <span class="fs-18 cl11"> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star-half"></i> <i class="zmdi zmdi-star-outline"></i> <i class="zmdi zmdi-star-outline"></i></span>
              </div>

              <div class="block2-txt-child2 flex-r p-t-15">
                <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"><span class="cl3 trans-04 cart_plus"><i class="zmdi zmdi-shopping-cart-plus zmdi-hc-2x mdc-text-grey"></i></span> </a>
              </div>
            </div>
          </div>
        </div>


        <c:forEach var="product" items="${productList}" varStatus="status">
          <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item ${product.product_major_category }">

            <!-- Block2 -->
            <div class="block2">
              <div class="block2-pic hov-img0">
                <a onClick="fn_viewDetail(${product.product_idx})" href="#" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> <img src="https://place-hold.it/270x270" alt="IMG-PRODUCT">
                </a>
              </div>
              <div class="block2-txt flex-w flex-t p-t-14">
                <div class="block2-txt-child1 flex-col-l ">
                  <a onClick="fn_viewDetail(${product.product_idx})" href="#" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"> ${product.product_name} </a>
                  <%--                   <span class="stext-105 cl3"><fmt:formatNumber value="${product.product_price }" type="currency" currencySymbol="₩" /> </span> --%>

                  <c:choose>
                    <c:when test="${product.product_sale eq 'Y' and product.product_sale_percent gt 0 }">
                      <del>
                        <fmt:formatNumber value="${product.product_price }" type="currency" currencySymbol="₩" />
                      </del>
                      <fmt:formatNumber value="${product.product_sale_percent / 100 }" type="percent" />
                      <span class="stext-105 cl3"> <fmt:formatNumber value="${product.product_price - product.product_price * product.product_sale_percent/100}" type="currency" currencySymbol="₩" />
                      </span>
                    </c:when>
                    <c:otherwise>
                      <!-- 할인을 안 할 경우 정상가격 표시 -->
                      <span class="stext-105 cl3"> <fmt:formatNumber value="${product.product_price }" type="currency" currencySymbol="₩" />
                      </span>
                    </c:otherwise>
                  </c:choose>






                  <span class="fs-18 cl11"> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star-half"></i> <i class="zmdi zmdi-star-outline"></i> <i class="zmdi zmdi-star-outline"></i></span>
                </div>
                <div class="block2-txt-child2 flex-r p-t-15">
                  <a href="#" class="btn-addwish-b2 dis-block pos-relative js-addwish-b2"><span class="cl3 trans-04 cart_plus"><i class="zmdi zmdi-shopping-cart-plus zmdi-hc-2x mdc-text-grey"></i></span> </a>

                </div>
              </div>
            </div>
          </div>
        </c:forEach>


      </div>
      <!-- Load more -->
      <div class="flex-c-m flex-w w-full p-t-45">
        <a href="#" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04"> 더 불러오기 </a>
      </div>
    </div>
  </div>
  <script>
function fn_viewDetail(idx){
  let url = "${MaruContextPath}/product/detail?product_idx=";
  url += idx;
  location.href = url;
}
</script>

  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>