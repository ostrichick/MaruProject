<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="MaruContextPath" value="${pageContext.request.contextPath}" scope="application" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>${product.product_name}-상품상세보기</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${MaruContextPath}/resources/images/icons/favicon.png" />
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>

  <!-- 경로 -->
  <div class="container">
    <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
      <a href="${MaruContextPath}/" class="stext-109 cl8 hov-cl1 trans-04"> 전체 <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
      </a> <a href="${MaruContextPath}/product/list" class="stext-109 cl8 hov-cl1 trans-04"> ${product.product_major_category} <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
      </a> <span class="stext-109 cl4"> ${product.product_name} </span>
    </div>
  </div>

  <!-- 상품 상세 -->
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
            <h2 class="mtext-105 cl2 js-name-detail p-b-14">${product.product_name}</h2>
            <!-- 할인 여부가 Y이고 할인율이 0보다 클 경우, 원래 가격에 작대기를 긋고 할인 가격을 표시 -->
            <c:choose>
              <c:when test="${product.product_sale eq 'Y' and product.product_sale_percent gt 0 }">
                <del>
                  <fmt:formatNumber value="${product.product_price }" type="currency" currencySymbol="₩" />
                </del>
                <fmt:formatNumber value="${product.product_sale_percent/100 }" type="percent" />
                <h4 class="mtext-106 cl2">
                  <fmt:formatNumber value="${product.product_price - product.product_price * product.product_sale_percent/100}" type="currency" currencySymbol="₩" />
                </h4>
                <c:set var="SaledPrice" value="${product.product_price - product.product_price * product.product_sale_percent/100}" scope="request" />
              </c:when>
              <c:otherwise>
                <!-- 할인을 안 할 경우 정상가격 표시 -->
                <h4 class="mtext-106 cl2">
                  <fmt:formatNumber value="${product.product_price }" type="currency" currencySymbol="₩" />
                </h4>
                <c:set var="SaledPrice" value="${product.product_price}" scope="request" />
              </c:otherwise>
            </c:choose>

            <p class="txt-right">
              <span class="fs-18 cl11"> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star-half"></i> <i class="zmdi zmdi-star-outline"></i>
              </span>
            </p>

            <p class="stext-102 cl3 p-t-23">규격 : ${product.product_size}</p>
            <p class="stext-102 cl3 p-t-23">
              제주/도서산간 제외 <strong>전국 배송 가능</strong><br>수도권 <strong>무료배송</strong>/그 외 지역 유료배송(하단 배송기준 참고)
            </p>
            <!--  -->
            <div class="p-t-33">

              <div class="flex-w p-b-10">
                <form action="${MaruContextPath}/order/order" method="post">
                  <div class="size-204 flex-w flex-m respon6-next">

                    <div class="wrap-num-product flex-w m-l-15 m-tb-10">
                      <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                        <i class="fs-16 zmdi zmdi-minus"></i>
                      </div>

                      <input class="mtext-104 cl3 txt-center num-product" id="cart_product_number" type="number" name="cart_product_number" value="1">

                      <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
                        <i class="fs-16 zmdi zmdi-plus"></i>
                      </div>
                    </div>
                    <span class="total_price_print m-lr-auto"> <fmt:formatNumber value="${SaledPrice}" type="currency" currencySymbol="₩" />
                    </span>
                    <input type="hidden" name="order_total_price" value="${SaledPrice}">
                    <div class="btn-group" role="group">
                      <a href="#" onClick="fn_addCart(${product.product_idx})" class="flex-c-m stext-101 cl0 size-107 bg1 hov-btn1 m-lr-15 trans-04 js-addcart-detail">장바구니</a>
                      <input type="hidden" name="product_idx_list" value="${product.product_idx }" />
                      <button class="flex-c-m stext-101 cl0 size-107 bg1  hov-btn1 m-lr-15 trans-04 buy_button">즉시구매</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>

            <!--  -->

          </div>
        </div>
      </div>

      <div class="bor10 m-t-50 p-t-43 p-b-40">
        <!-- Tab01 -->
        <div class="tab01">
          <!-- Nav tabs -->
          <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item p-b-10"><a class="nav-link active" data-toggle="tab" href="#description" role="tab">상세정보</a></li>
            <li class="nav-item p-b-10"><a class="nav-link" data-toggle="tab" href="#reviews" role="tab">리뷰</a></li>
            <li class="nav-item p-b-10"><a class="nav-link" data-toggle="tab" href="#productqna" role="tab">상품문의</a></li>
            <li class="nav-item p-b-10"><a class="nav-link" data-toggle="tab" href="#information" role="tab">배송/교환/반품 안내</a></li>
          </ul>

          <!-- Tab panes -->
          <div class="tab-content p-t-43">
            <!-- - -->
            <div class="tab-pane fade show active" id="description" role="tabpanel">
              <div class="how-pos2 p-lr-15-md">
                <p class="stext-102 cl6">상세설명을 적어주세요. &#36;{product.product_detail} ${product.product_detail}</p>
              </div>
            </div>

            <!-- - -->
            <div class="tab-pane fade" id="information" role="tabpanel">
              <div class="row">
                <div class="col-sm-10 col-md-10 col-lg-8 m-lr-auto">
                  <table class="table table-bordered table-sm align-middle delivery m-b-50">
                    <tr>
                      <th rowspan="3" class="align-middle bg2 text-center">수도권</th>
                      <th class="bg6 text-center">서울</th>
                      <td>무료배송, 전지역 (1~2일 이내 도착)</td>
                    </tr>
                    <tr>
                      <th class="bg6 text-center">인천</th>
                      <td>무료배송, 전지역 (1~2일 이내 도착) (배송불가 도서지역 제외)</td>
                    </tr>
                    <tr>
                      <th class="bg6 text-center">경기</th>
                      <td>무료배송, 전지역 (1~2일 이내 도착)</td>
                    </tr>
                    <tr>
                      <th colspan="2" class="bg2 text-center">지방</th>
                      <td>유료배송(5,000원), 전지역 (2~3일 이내 도착)</td>
                    </tr>
                    <tr>
                      <th colspan="2" class="align-middle bg2 text-center">배송불가지역</th>
                      <td>
                        <p>제주도, 제부도, 대부도, 울릉도 등 섬지역 및 도서산간 지역</p>
                        <p>인천: 강화군, 영종도 일부지역, 옹진군</p>
                        <p>전라: 완도 일부지역, 진도 일부지역, 신안 일부지역</p>
                      </td>
                    </tr>
                  </table>

                  <table class="table table-bordered table-sm align-middle refund">
                    <tr>
                      <th class="align-middle bg2 text-center">교환/반품 비용</th>
                      <td>
                        <p>마루 멤버쉽 회원: 무료로 반품, 교환 가능</p>
                        <p>
                          마루 멤버쉽 회원 아닌 경우: <br />1) [총 주문금액] - [반품 상품금액] = 20,000원 미만인 경우 반품비 5,000원 <br>1) [총 주문금액] - [반품 상품금액] = 20,000원 이상인 경우 반품비 3,000원
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <th class="align-middle bg2 text-center">교환/반품 신청 기준일</th>
                      <td>
                        <p>단숨변심에 의한 교환 반품은 제품 수령 후 2주일 이내</p>
                        <p>상품의 내용이 표시, 광고의 내용과 다른 경우에는 상품을 수령한 날 부터 1개월 이내에 청약철회 가능</p>
                      </td>
                    </tr>
                  </table>

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


                      <div class="size-290">
                        <div class="flex-w flex-sb-m p-b-17">
                          <span class="mtext-107 cl2 p-r-20"> &#36;{member_id} </span> <span class="fs-18 cl11"> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star-half"></i>
                          </span>
                        </div>

                        <p class="stext-102 cl6">&#36;{content}리뷰리뷰리ㅇㅇㅇㅇㅇㅇㅇ뷰리뷰리뷰리뷰리뷰리뷰</p>
                      </div>
                    </div>
                    <div class="flex-w flex-t p-b-68">

                      <div class="size-290">
                        <div class="flex-w flex-sb-m p-b-17">
                          <span class="mtext-107 cl2 p-r-20"> 김삼식2 </span> <span class="fs-18 cl11"> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star"></i> <i class="zmdi zmdi-star-half"></i> <i class="zmdi zmdi-star-outline"></i> <i class="zmdi zmdi-star-outline"></i>
                          </span>
                        </div>

                        <p class="stext-102 cl6">2222222222 리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰리뷰</p>
                      </div>
                    </div>

                  </div>
                </div>
              </div>
            </div>

            <!--  -->
            <div class="tab-pane fade" id="productqna" role="tabpanel">
              <div class="how-pos2 p-lr-15-md">

                <div class="container w-full m-tb-40">
                  <!-- Button trigger modal -->
                  <button type="button" class="btn btn-lg bg7 cl7  m-all-20" data-toggle="modal" data-target="#product_qna_write">문의하기</button>

                  <!-- Modal -->
                  <div class="modal fade" id="product_qna_write" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <form action="" method="post">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">문의 작성하기</h5>
                            <a type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span>
                            </a>
                          </div>
                          <div class="modal-body">
                            <textarea class="form-control" name="" id="" cols="30" rows="10"></textarea>
                          </div>
                          <div class="modal-footer">
                            <a type="button" class="btn bg6 btn-outline-secondary" data-dismiss="modal">취소</a>
                            <button type="button" class="btn bg7 cl7 btn-outline-dark">등록</button>
                            <!-- 등록버튼 누르면 문의 등록시키고 ajax로 새로 목록 불러올 것 -->
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>

                  <table class="table table-striped table-hover">
                    <thead>
                      <tr>
                        <th class="text-center cl3 col-8">내용</th>
                        <th class="text-center cl3 col-2">날짜</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="">
                          <a class="cl6" href="#" data-toggle="collapse" data-target="#answer_content1" aria-expanded="false" aria-controls="answer_content">상품 배송에 얼마나 걸리나요 상품 배송에 얼마나 걸리나요 상품 배송에 얼마나 걸리나요 상품 배송에 얼마나 걸리나요 상품 배송에 얼마나 걸리나요 상품 배송에 얼마나 걸리나요 상품 배송에 얼마나 걸리나요 </a>
                        </td>
                        <td class="text-center cl3">2022.09.01 11:23</td>
                      </tr>
                      <tr>
                        <td colspan="2">
                          <div id="answer_content1" class="collapse">얼마 안 걸려요 얼마 안 걸려요 얼마 안 걸려요 얼마 안 걸려요 얼마 안 걸려요 얼마 안 걸려요 얼마 안 걸려요 얼마 안 걸려요 얼마 안 걸려요 얼마 안 걸려요 얼마 안 걸려요 얼마 안 걸려요 얼마 안 걸려요 얼마 안 걸려요</div>
                        </td>
                      </tr>
                      <tr>
                        <td class="">
                          <a class="cl6" href="#" data-toggle="collapse" data-target="#answer_content2" aria-expanded="false" aria-controls="answer_content">혼자 조립 설치하기 쉽나요 </a>
                        </td>
                        <td class="text-center cl3">2022.09.01 11:23</td>
                      </tr>
                      <tr>
                        <td colspan="2">
                          <div id="answer_content2" class="collapse">그럼요</div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <!-- 문의 탭 끝 -->
          </div>
          <!-- 탭 목록 끝 -->
        </div>
        <!-- 전체 탭 끝 -->

      </div>
    </div>
    <!-- 제품 상세 컨테이너 -->
  </section>
  <script>
  /** 장바구니 CRUD 기능을 및 ajax로 구현하는 게 목표 
  
  로그인 여부 -> 세션값을 가져와서 체크
    
  1) 장바구니 추가 
    1. 로그인 됨, 비로그인 유저용 쿠키값 없음 
      -> 세션에서 member_idx를 받아와 cartVo로 담아 전송
    2. 로그인 됨, 비로그인 유저용 쿠키값 존재
      -> db에 비로그인 유저용 장바구니 member_idx를 회원member_idx로 변경후 장바구니 추가 로직 진행
    3. 비로그인, 쿠키값 없음 
      -> 새로 난수와 쿠키를 생성하여 장바구니 추가
    4. 비로그인, 쿠키값 존재
      -> 
  
  1)-2 로그인 유저는 즉시 구매 버튼을 이용해 구매페이지로 이동 가능. 
       비로그인일 경우 회원만 가능합니다. 로그인 하시겠습니까 confirm 창 띄우기 
    
  2) 장바구니 추가 성공시 -> 장바구니로 이동, 계속 쇼핑하기 modal창 출력.
  
  
  번외
  회원가입시 -> 장바구니 쿠키를 가지고 있을경우 해당 정보를 새로운 member_idx에 귀속된 회원용 장바구니로 이동
    
  */
  function fn_addCart(idx){ //idx 값에는 product_idx가 담김. 장바구니 버튼 위치 line 096
    
    let cart_product_number = document.getElementById("cart_product_number").value; // 담을 물건 숫자
    
    $.ajax({
      type:"post",
      url:"${MaruContextPath}/cart/add_process?product_idx=" + idx + "&cart_product_number=" + cart_product_number, 
      data: { 
        "product_idx" : idx,
        "cart_product_number" : cart_product_number 
      },
      success : addCartSuccess,
      error : addCartFail,
     })
  }
  
  function addCartSuccess(){
    //장바구니로 이동 혹은 계속 쇼핑하기 여부 modal 창으로 출력
    console.log("성공");
  }
  
  function addCartFail(){
    alert("오류가 발생했습니다. 다시 시도해주세요.");
  }
  </script>
  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
  <script>
  let SaledPrice = "${SaledPrice}"
      $("body").on("click keyup", function(){
      console.log("클릭, 키업");
      let cart_product_number = $("#cart_product_number").val();
      let total_price = SaledPrice * cart_product_number;
      $("input[name=order_total_price]").val(SaledPrice * cart_product_number);
      $("span.total_price_print").html("₩" + total_price.toLocaleString('en').split(".")[0]);
      })
      

  </script>
</body>
</html>