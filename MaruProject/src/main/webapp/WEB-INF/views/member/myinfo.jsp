<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
</style>
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
  <h3 class="ml-5" style="margin-top: 150px;">마이페이지</h3>
  <section class="">
    <hr>
    <div class="container">
      <h5 class="float-left ml-5">
        <strong>member_name 님 환영합니다</strong>
      </h5>
      <button type="button" class="btn bg-dark text-white float-right link_to_myinfo_edit" style="margin-right: 100px;">회원정보수정</button>
    </div>
    <hr style="clear: both; visibility: hidden; margin: 0;">
    <hr>
    <!-- 주문내역 목록 시작-->
    <div class="mt-5 container">
      <h5 class="ml-5">
        <strong>member_name 님의 주문내역 목록입니다</strong>
      </h5>
      <table class="table mt-5">
        <thead>
          <tr>
            <th></th>
            <th>주문일자</th>
            <th>결제금액</th>
            <th>품목</th>
            <th>진행상황</th>
            <th>별점</th>
            <th>리뷰</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>
              <a href="${MaruContextPath}/order/order_detail?order_idx=" id="order_detail">상세보기</a>
            </td>
            <td>2022.07.08</td>
            <td>180,000원</td>
            <td>
              <img src="${MaruContextPath}/resources/images/product-10.jpg" width="50px" height="50px" />&nbsp; 조이갈란드
            </td>
            <td>
              배송중 &nbsp;
              <button type="button" class="btn btn-outline-primary btn-sm">배송조회</button>
            </td>
            <td>
              <div class="star-rating space-x-4">
                <input type="radio" id="5-stars" name="rating" value="5" v-model="ratings" />
                <label for="5-stars" class="star pr-4">★</label>
                <input type="radio" id="4-stars" name="rating" value="4" v-model="ratings" />
                <label for="4-stars" class="star">★</label>
                <input type="radio" id="3-stars" name="rating" value="3" v-model="ratings" />
                <label for="3-stars" class="star">★</label>
                <input type="radio" id="2-stars" name="rating" value="2" v-model="ratings" />
                <label for="2-stars" class="star">★</label>
                <input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
                <label for="1-star" class="star">★</label>
              </div>
            </td>
            <td>
              <button type="button" class="btn btn-outline-primary btn-sm">리뷰등록하기</button>
            </td>
          </tr>
        </tbody>
      </table>
      <!-- 페이지 네이게이션 만들기 -->
      <nav aria-label="Page navigation example" style="margin: 0 500px;">
        <ul class="pagination">
          <li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
          </a></li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
          </a></li>
        </ul>
      </nav>
    </div>
    <!-- 주문내역 목록 끝-->
    <hr style="margin: 50px 0;">
    <!-- 리뷰내역 시작 -->
    <div class="container">
      <h5 class="ml-5">
        <strong>member_name 님의 리뷰내역 입니다</strong>
      </h5>
      <table class="table mt-5">
        <thead>
          <tr>
            <th>리뷰일자</th>
            <th>상품</th>
            <th>별점</th>
            <th>내용</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>2022.07.08</td>
            <td>
              <img src="${MaruContextPath}/resources/images/product-10.jpg" width="50px" height="50px" />&nbsp; 조이갈란드
            </td>
            <td>
              <p style="font-size: 20px;">★★★★★</p>
            </td>
            <td>
              <p>좋아요!!!!!!</p>
            </td>
          </tr>
        </tbody>
      </table>
      <nav aria-label="Page navigation example" style="margin: 0 500px;">
        <ul class="pagination">
          <li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
          </a></li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
          </a></li>
        </ul>
      </nav>
    </div>
    <!-- 리뷰내역 끝 -->
    <hr style="margin: 50px 0;">
    <!-- 문의내역 시작 -->
    <div class="container">
      <h5 class="ml-5">
        <strong>member_name 님의 문의내역 입니다</strong>
      </h5>
      <table class="table mt-5">
        <thead>
          <tr>
            <th>문의등록일</th>
            <th>카테고리분류</th>
            <th>내용</th>
            <th>답변일자</th>
            <th>삭제</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="qna" items="${qnaList}" varStatus="status">
          <tr>
            <td><fmt:formatDate pattern="yyyy.MM.dd HH:mm" value="${qna.wdate}"/></td>
            <td>${qna.category}</td>
            <td>
              <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                  <div class="panel-heading" role="tab">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false">${qna.content}</a>
                  </div>
                  <div id="collapse1" class="panel-collapse collapse" role="tabpanel"> 
                    <div class="panel-body">
                      <hr>
                      <div class="p-3" style="border: 1px solid black;">
                        <p>
                          <strong>답변</strong>
                        </p>
                        <br>
                        <p>환불가능 사유가 아닙니다</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </td>
            <td>
              <p>2022.07.25</p>
            </td>
            <td>
              <button type="button" class="qEdit btn bg2" data-toggle="modal" data-target="#qEdit">수정</button>
            </td>
          </tr>
         </c:forEach> 
        </tbody>
      </table>
      <nav aria-label="Page navigation example" style="margin: 0 500px;">
        <ul class="pagination">
          <li class="page-item"><a class="page-link" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
          </a></li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
          </a></li>
        </ul>
      </nav>
    </div>
    <!-- 문의내역 끝 -->
    <hr style="visibility: hidden; margin-bottom: 150px;">
    
    <!-- Modal -->
<form action="${pageContext.request.contextPath}/qna/Edit" method="post" id="edit"> 
  <div class="modal fade" id="edit" role="dialog"> <!-- 사용자 지정 부분① : id명 -->
    <div class="modal-dialog">
      <!-- Modal content--> 
      <div class="modal-content">
       <div class="modal-header">
        <h4 class="modal-title">문의 수정</h4> <!-- 사용자 지정 부분② : 타이틀 -->
        <button type="button" class="close" data-dismiss="modal">×</button>
       </div>  
       <div class="modal-body">
		<c:forEach var="qna" items="${qnaList}" varStatus="status">
		 <input type="hidden" name="idx" id="idx" value="${qna.idx}"/>
		 <input type="hidden" name="member_idx" value="${sessionScope.member_idx}"> 
		 </c:forEach> 
		 <input type="hidden" name="isanswered" id="isanswered" value="N"/>  
         <textarea rows="8" cols="45" name="content" id="content" class="bor10 m-l-50"></textarea>  
       </div>  
       <div class="modal-footer">
         <button type="button" class="btn bg2" data-dismiss="modal">닫기</button>
	     <button type="submit" class="qna-button btn bg2">등록</button> 
       </div>
      </div> 
    </div> 
  </div>
</form>
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