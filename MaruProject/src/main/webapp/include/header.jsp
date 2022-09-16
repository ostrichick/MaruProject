<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="MaruContextPath" value="${pageContext.request.contextPath}" scope="application" />
<%@include file="/include/style.jsp"%>
<style>
.main-menu>li>a {
  font-size: 135%;
}

.menu-subcategory>li:hover {
  background: #e6e6e6;
}

/* div, ul, li { */
/*   outline: blue solid 1px; */
/* } */
</style>
<!-- Header 
    상단 메뉴바와 css를 담은 style.jsp, 최상단 topbar.jsp를 include함 -->
<c:choose>
  <c:when test="${empty indexHeader}">
    <header class="header-v4">
      <!-- Header desktop -->
      <div class="container-menu-desktop">
        <!-- Topbar -->
        <%@include file="/include/topbar.jsp"%>
        <div class="wrap-menu-desktop how-shadow1">
          <nav class="limiter-menu-desktop container">
            <!-- Logo desktop -->
            <a href="${MaruContextPath}/#" class="logo"> <img src="${MaruContextPath}/resources/images/icons/logo-01.png" alt="logo" />
            </a>

            <!-- Menu desktop -->
            <div class="menu-desktop">
              <ul class="main-menu">
                <li><a href="${MaruContextPath}/product/list?category=거실">거실</a></li>
                <li><a href="${MaruContextPath}/product/list?category=침실">침실</a></li>
                <li><a href="${MaruContextPath}/product/list?category=서재">서재</a></li>
                <li><a href="${MaruContextPath}/product/list?category=주방">주방</a></li>
                <li><a href="${MaruContextPath}/product/list?category=욕실">욕실</a></li>

                <li><a href="${MaruContextPath}/about">임시</a></li>
                <li><a href="${MaruContextPath}/contact">오시는 길</a></li>
              </ul>
            </div>

            <!-- Icon header -->
            <div class="wrap-icon-header flex-w flex-r-m">
              <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                <i class="zmdi zmdi-search"></i>
              </div>
              <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-cart" data-notify="0">
                <i class="zmdi zmdi-view-headline"></i>
              </div>

            </div>
          </nav>
        </div>

      </div>

      <!-- Header Mobile -->
      <div class="wrap-header-mobile">
        <!-- Logo moblie -->
        <div class="logo-mobile">
          <a href="${MaruContextPath}/index"><img src="${MaruContextPath}/resources/images/icons/logo-01.png" alt="IMG-LOGO" /></a>
        </div>

        <!-- Icon header -->
        <div class="wrap-icon-header flex-w flex-r-m m-r-15">
          <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
            <i class="zmdi zmdi-search"></i>
          </div>

          <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
            <i class="zmdi zmdi-shopping-cart"></i>
          </div>

          <a href="${MaruContextPath}/#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
          </a>
        </div>

        <!-- Button show menu -->
        <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
          <span class="hamburger-box"> <span class="hamburger-inner"></span>
          </span>
        </div>
      </div>

      <!-- Menu Mobile -->
      <div class="menu-mobile">
        <ul class="topbar-mobile">
          <li>
            <div class="left-top-bar">Free shipping for standard order over $100</div>
          </li>

          <li>
            <div class="right-top-bar flex-w h-full">
              <a href="${MaruContextPath}/#" class="flex-c-m p-lr-10 trans-04"> Help & FAQs </a> <a href="${MaruContextPath}/#" class="flex-c-m p-lr-10 trans-04"> My Account </a> <a href="${MaruContextPath}/#" class="flex-c-m p-lr-10 trans-04"> EN </a> <a href="${MaruContextPath}/#" class="flex-c-m p-lr-10 trans-04"> USD </a>
            </div>
          </li>
        </ul>

        <ul class="main-menu-m">
          <li><a href="${MaruContextPath}/index">Home</a>
            <ul class="sub-menu-m">
              <li><a href="${MaruContextPath}/index">Homepage 1</a></li>
              <li><a href="${MaruContextPath}/home-02">Homepage 2</a></li>
              <li><a href="${MaruContextPath}/home-03">Homepage 3</a></li>
            </ul> <span class="arrow-main-menu-m"> <i class="fa fa-angle-right" aria-hidden="true"></i>
          </span></li>
          <li><a href="${MaruContextPath}/product/list">제품</a></li>

          <li><a href="${MaruContextPath}/shoping-cart" class="label1 rs1" data-label1="hot">장바구니</a></li>

          <li><a href="${MaruContextPath}/blog">Blog</a></li>

          <li><a href="${MaruContextPath}/about">About</a></li>

          <li><a href="${MaruContextPath}/contact">Contact</a></li>
        </ul>
      </div>

      <!-- Modal Search -->
      <div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
        <div class="container-search-header">
          <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
            <img src="${MaruContextPath}/resources/images/icons/icon-close2.png" alt="CLOSE" />
          </button>

          <form class="wrap-search-header flex-w p-l-15">
            <button class="flex-c-m trans-04">
              <i class="zmdi zmdi-search"></i>
            </button>
            <input class="plh3" type="text" name="search" placeholder="Search..." />
          </form>
        </div>
      </div>
    </header>
  </c:when>
  <c:otherwise>

    <header>
      <!-- Header desktop -->
      <div class="container-menu-desktop">
        <!-- Topbar -->
        <%@include file="/include/topbar.jsp"%>
        <div class="wrap-menu-desktop">
          <nav class="limiter-menu-desktop container">
            <!-- Logo desktop -->
            <a href="${MaruContextPath}/#" class="logo"> <img src="${MaruContextPath}/resources/images/icons/logo-01.png" alt="IMG-LOGO" />
            </a>

            <!-- Menu desktop -->
            <div class="menu-desktop">
              <ul class="main-menu">
                <li class="active-menu"><a href="${MaruContextPath}/index">Home</a>
                  <ul class="sub-menu">
                    <li><a href="${MaruContextPath}/index">Homepage 1</a></li>
                    <li><a href="${MaruContextPath}/home-02">Homepage 2</a></li>
                    <li><a href="${MaruContextPath}/home-03">Homepage 3</a></li>
                  </ul></li>

                <li><a href="${MaruContextPath}/product/list">제품</a></li>

                <li class="label1" data-label1="hot"><a href="${MaruContextPath}/shopping-cart">장바구니</a></li>

                <li><a href="${MaruContextPath}/blog">임시</a></li>

                <li><a href="${MaruContextPath}/about">임시</a></li>

                <li><a href="${MaruContextPath}/contact">연락처</a></li>
              </ul>
            </div>

            <!-- Icon header -->
            <div class="wrap-icon-header flex-w flex-r-m">
              <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                <i class="zmdi zmdi-search"></i>
              </div>

              <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
                <i class="zmdi zmdi-shopping-cart"></i>
              </div>

              <a href="${MaruContextPath}/#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
              </a>
            </div>
          </nav>
        </div>
      </div>

      <!-- Header Mobile -->
      <div class="wrap-header-mobile">
        <!-- Logo moblie -->
        <div class="logo-mobile">
          <a href="${MaruContextPath}/index"><img src="${MaruContextPath}/resources/images/icons/logo-01.png" alt="IMG-LOGO" /></a>
        </div>

        <!-- Icon header -->
        <div class="wrap-icon-header flex-w flex-r-m m-r-15">
          <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
            <i class="zmdi zmdi-search"></i>
          </div>

          <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
            <i class="zmdi zmdi-shopping-cart"></i>
          </div>

          <a href="${MaruContextPath}/#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
          </a>
        </div>

        <!-- Button show menu -->
        <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
          <span class="hamburger-box"> <span class="hamburger-inner"></span>
          </span>
        </div>
      </div>

      <!-- Menu Mobile -->
      <div class="menu-mobile">
        <ul class="topbar-mobile">
          <li>
            <div class="left-top-bar">Free shipping for standard order over $100</div>
          </li>

          <li>
            <div class="right-top-bar flex-w h-full">
              <a href="${MaruContextPath}/#" class="flex-c-m p-lr-10 trans-04"> Help & FAQs </a> <a href="${MaruContextPath}/#" class="flex-c-m p-lr-10 trans-04"> My Account </a> <a href="${MaruContextPath}/#" class="flex-c-m p-lr-10 trans-04"> EN </a> <a href="${MaruContextPath}/#" class="flex-c-m p-lr-10 trans-04"> USD </a>
            </div>
          </li>
        </ul>

        <ul class="main-menu-m">
          <li><a href="${MaruContextPath}/index">Home</a>
            <ul class="sub-menu-m">
              <li><a href="${MaruContextPath}/index">Homepage 1</a></li>
              <li><a href="${MaruContextPath}/home-02">Homepage 2</a></li>
              <li><a href="${MaruContextPath}/home-03">Homepage 3</a></li>
            </ul> <span class="arrow-main-menu-m"> <i class="fa fa-angle-right" aria-hidden="true"></i>
          </span></li>

          <li><a href="${MaruContextPath}/product/list">Shop</a></li>

          <li><a href="${MaruContextPath}/shopping-cart" class="label1 rs1" data-label1="hot">Features</a></li>

          <li><a href="${MaruContextPath}/blog">Blog</a></li>

          <li><a href="${MaruContextPath}/about">About</a></li>

          <li><a href="${MaruContextPath}/contact">Contact</a></li>
        </ul>
      </div>

      <!-- Modal Search -->
      <div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
        <div class="container-search-header">
          <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
            <img src="${MaruContextPath}/resources/images/icons/icon-close2.png" alt="CLOSE" />
          </button>

          <form class="wrap-search-header flex-w p-l-15">
            <button class="flex-c-m trans-04">
              <i class="zmdi zmdi-search"></i>
            </button>
            <input class="plh3" type="text" name="search" placeholder="Search..." />
          </form>
        </div>
      </div>
    </header>
  </c:otherwise>
</c:choose>


<!-- Cart 기능을 메뉴바로 변경 -->
<div class="wrap-header-cart js-panel-cart">
  <div class="s-full js-hide-cart"></div>

  <div id="cart-opacity-body" class="header-cart flex-col-l p-l-65 p-r-25" style="background: rgba(255, 255, 255, 0.3)">
    <div class="header-cart-title flex-w flex-sb-m p-b-8">
      <span class="mtext-103 cl2"> 메뉴 </span>

      <div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart">
        <i class="zmdi zmdi-close"></i>
      </div>
    </div>

    <div class="wrap-menu-category w-full txt-center">
      <ul class="">
        <li class="m-tb-20 bg7 p-t-10 txt-center cl7">로그인/회원가입
          <ul class="bg6 menu-subcategory">
            <li class="m-tb-5 p-tb-10 txt-center bg6"><a href="${MaruContextPath}/member/signin" class="flex-c-m trans-04 p-lr-25 cl2">로그인</a></li>
            <li class="m-tb-5 p-tb-10 txt-center bg6"><a href="${MaruContextPath}/member/signup" class="flex-c-m trans-04 p-lr-25 cl2">회원가입</a></li>
          </ul>
        </li>
        <li class="m-tb-20 p-tb-10 bg7"><a href="${MaruContextPath}/member/myinfo" class="flex-c-m trans-04 p-lr-25 cl7">마이페이지</a></li>
        <li class="m-tb-20 p-tb-10 bg7 cl7"><a href="${MaruContextPath}/shopping-cart" class="flex-c-m trans-04 p-lr-25  cl7" data-label1="hot">장바구니</a></li>
        <li class="m-tb-20 p-t-10 bg7 cl7">고객센터
          <ul class="bg6 menu-subcategory">
            <li class="m-tb-5 p-tb-10 bg6"><a href="${MaruContextPath}/notice/list" class="flex-c-m trans-04 p-lr-25 cl2">공지사항</a></li>
            <li class="m-tb-5 p-tb-10 bg6 cl2"><a href="${MaruContextPath}/faq" class="flex-c-m trans-04 p-lr-25 cl2">자주 묻는 질문</a></li>
            <li class="m-tb-5 p-tb-10 bg6 cl2"><a href="${MaruContextPath}/qna/write" class="flex-c-m trans-04 p-lr-25 cl2">1:1 문의</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</div>
