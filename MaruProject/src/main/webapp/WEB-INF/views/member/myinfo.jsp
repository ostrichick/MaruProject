<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="MaruContextPath" value="${pageContext.request.contextPath}" scope="application" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>내 정보</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
<style>
.star-rating {
  display: flex;
  flex-direction: row-reverse;
  font-size: 1.5rem;
  line-height: 2.5rem;
  justify-content: space-around;
  padding: 0 0.2em;
  text-align: center;
  width: 5em;
}

.star-rating input {
  display: none;
}

.star-rating label {
  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
  -webkit-text-stroke-width: 2.3px;
  -webkit-text-stroke-color: #2b2a29;
  cursor: pointer;
}

.star-rating :checked ~ label {
  -webkit-text-fill-color: red;
}

.star-rating label:hover, .star-rating label:hover ~ label {
  -webkit-text-fill-color: red;
}

.pagination {
  justify-content: center;
}

a.page-link {
  color: #666;
}

li.page-item.active>a.page-link {
  background: #666;
  color: #eee;
  border-color: #333;
}

li.page-item.active>a.page-link:hover {
  background: #444;
}
</style>
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
  <section class="container m-t-50">
    <a href="${MaruContextPath}/member/myinfo_edit" type="button" class="btn bg-dark text-white pull-right">회원정보수정</a>
    <h2 class="m-tb-50">마이페이지</h2>


    <!-- 주문 목록 -->
    <div class="container w-full txt-center bg6 p-all-30 m-b-50">
      <a href="#" class="btn bg7 cl7 btn-outline-secondary pull-left m-l--30 m-t--30 m-b-30">주문 내역</a>
      <table class="table table-bordered table-hover table-stripped">
        <thead>
          <tr class="bg1 txt-center">
            <th></th>
            <th>주문일자</th>
            <th>결제금액</th>
            <th>주문품목</th>

            <th>진행상황</th>

          </tr>
        </thead>
        <c:forEach var="order" items="${orderList}" varStatus="status">
          <tr class="bg0">
            <td>
              <a href="${MaruContextPath}/order/detail?order_idx=${order.order_idx }">상세보기</a>
            </td>
            <td>
              <fmt:formatDate pattern="yyyy.MM.dd" value="${order.order_date}" />
            </td>
            <td>
              <fmt:formatNumber value="${order.order_total_price}" type="currency" currencySymbol="₩" />
            </td>
            <td>
              <c:forEach var="orderProduct" items="${orderProductList }" varStatus="status">
                <c:if test="${order.order_idx eq orderProduct.order_idx }">
                  <a href="${MaruContextPath}/product/detail?product_idx=${orderProduct.product_idx }">${orderProduct.product_name }</a>
                </c:if>
              </c:forEach>


            </td>
            <td>${order.order_status}</td>

          </tr>
        </c:forEach>
      </table>
      <p>
        전체 리뷰 <strong> ${memberStats.orderCount }</strong>개 중 최근
        <c:choose>
          <c:when test="${memberStats.orderCount gt 10 }">10</c:when>
          <c:otherwise>${memberStats.orderCount}</c:otherwise>
        </c:choose>
        개 출력
      </p>
    </div>

    <!-- 리뷰 목록 -->
    <div class="container w-full txt-center bg6 p-all-30 m-b-50">
      <a href="${MaruContextPath}/myinfo/reviewList" class="btn bg7 cl7 btn-outline-secondary pull-left m-l--30 m-t--30 m-b-30">리뷰 내역</a>
      <table class="table table-bordered table-hover table-stripped">
        <thead>
          <tr class="bg1 txt-center">
            <th>상품명</th>
            <th>내용</th>
            <th>별점</th>
            <th>등록일</th>
          </tr>
        </thead>
        <c:forEach var="review" items="${reviewList}" varStatus="status">
          <tr class="bg0">
            <td>
              <a href="${MaruContextPath}/product/detail?product_idx='${review.product_idx }'">${review.product_name }</a>
            </td>
            <td>${review.content}</td>
            <td>
              <span class="fs-18 cl11"> <c:set var="emptyStar" value="5" /> <c:forEach var="i" begin="1" end="${review.star }" step="1">
                  <i class="zmdi zmdi-star"></i>
                  <c:set var="emptyStar" value="${emptyStar -1 }" />
                </c:forEach> <c:if test="${emptyStar ge 1 }">
                  <c:forEach var="i" begin="1" end="${emptyStar }">
                    <i class="zmdi zmdi-star-outline"></i>
                  </c:forEach>
                </c:if>
              </span>
            </td>
            <td>
              <fmt:formatDate pattern="yyyy.MM.dd" value="${review.wdate}" />
            </td>
          </tr>
        </c:forEach>
      </table>
      <p>
        전체 리뷰 <strong> ${memberStats.reviewCount }</strong>개 중 최근
        <c:choose>
          <c:when test="${memberStats.reviewCount gt 10 }">10</c:when>
          <c:otherwise>${memberStats.reviewCount}</c:otherwise>
        </c:choose>
        개 출력
      </p>
    </div>

    <!-- 문의 목록 -->
    <div class="container w-full txt-center bg6 p-all-30 m-b-50">
      <a href="${MaruContextPath}/myinfo/qnaList" class="btn bg7 cl7 btn-outline-secondary pull-left m-l--30 m-t--30 m-b-30">문의 내역</a>
      <table class="table table-bordered table-hover table-stripped">
        <thead>
          <tr class="bg1 txt-center">
            <th>상품명</th>
            <th>문의내용</th>
            <th>등록일</th>
            <th>답변내용</th>
            <th>답변일</th>
          </tr>
        </thead>
        <c:forEach var="qna" items="${qnaList}" varStatus="status">
          <tr class="bg0">
            <td>
              <a href="${MaruContextPath}/product/detail?product_idx=${qna.product_idx }"> ${qna.product_name }</a>
            </td>
            <td>${qna.content}</td>
            <td>
              <%--               <fmt:formatDate pattern="yyyy.MM.dd" value="${qna.wdate}" /> --%>
              ${fn:substring(qna.wdate,0,10) }
            </td>
            <c:forEach var="qnaAnswer" items="${qnaAnswerList }" varStatus="status">
              <c:choose>
                <c:when test="${qnaAnswer.parent_idx eq qna.idx }">
                  <td>${qnaAnswer.content }</td>
                  <td>${fn:substring(qnaAnswer.wdate ,0,10) }</td>
                </c:when>
                <c:otherwise>

                </c:otherwise>
              </c:choose>
            </c:forEach>
          </tr>
        </c:forEach>
      </table>
      <p>
        전체 문의 <strong> ${memberStats.qnaCount }</strong>개 중 최근
        <c:choose>
          <c:when test="${memberStats.qnaCount gt 10 }">10</c:when>
          <c:otherwise>${memberStats.qnaCount}</c:otherwise>
        </c:choose>
        개 출력
      </p>
    </div>
  </section>





  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
  <script>
      document.querySelector(".link_to_myinfo_edit").addEventListener("click", function() {
        location.href = "${MaruContextPath}/member/myinfo_edit";
      })
    </script>
  <script type="text/javascript">
      
    </script>
</body>
</html>