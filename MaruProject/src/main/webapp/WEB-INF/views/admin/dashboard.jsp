<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>관리자 메인</title>
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
<style>
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

    <h2 class="m-tb-50">관리자 페이지</h2>

    <!-- 회원 요약 -->
    <div class="container w-full txt-center bg6 p-all-30 m-b-50">
      <a href="${pageContext.request.contextPath}/admin/memberList" class="btn bg7 cl7 btn-outline-secondary pull-left m-l--30 m-t--30 m-b-30">회원관리</a>
      <table class="table table-bordered table-hover table-stripped">
        <thead>
          <tr class="bg1 txt-center">
            <th>선택</th>
            <th>아이디</th>
            <th>이름</th>
            <th>번호</th>
            <th>주소</th>
            <th>상세주소</th>
            <th>가입일</th>
            <th>탈퇴여부</th>
          </tr>
        </thead>
        <c:forEach var="member" items="${memberList}" varStatus="status">
          <tr class="bg0">
            <td>
              <input type="checkbox" value="선택" />
            </td>
            <td>${member.member_id }</td>
            <td>${member.member_name}</td>
            <td>${member.member_phone}</td>
            <td>${member.member_addr}</td>
            <td>${member.member_addr2}</td>
            <td>
              <fmt:formatDate pattern="yyyy.MM.dd" value="${member.member_date}" />
            </td>
            <td>${member.deleted_yn}</td>
          </tr>
        </c:forEach>
      </table>
      <br>
      <nav aria-label="Page navigation example">
        <ul class="pagination">
          <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">다음</a></li>
        </ul>
      </nav>
    </div>

    <!-- 상품 요약 -->
    <div class="container w-full txt-center bg6 p-all-30 m-b-50">
      <a href="${pageContext.request.contextPath}/admin/updateList" class="btn bg7 cl7 btn-outline-secondary pull-left m-l--30 m-t--30 m-b-30">상품 업데이트</a>
      <table class="table table-bordered table-hover table-stripped">
        <thead>
          <tr class="bg1">
            <th>선택</th>
            <th>상품명</th>
            <th>가격</th>
            <th>할인여부</th>
            <th>할인율 %</th>
            <th>할인된 가격</th>
            <th>상품 재고</th>
            <th>상품삭제</th>
          </tr>
        </thead>
        <c:forEach var="product" items="${productList}" varStatus="status">
          <tr class="bg0">
            <td>
              <input type="checkbox" value="선택" />
            </td>
            <td>
              <a href="${MaruContextPath}/product/detail?product_idx=${product.product_idx}" class="">${product.product_name}</a>
            </td>
            <td>${product.product_price}</td>
            <td>${product.product_sale}</td>
            <td>${product.product_sale_percent}</td>
            <td>${product.product_price - product.product_price * product.product_sale_percent/100}</td>
            <td>${product.product_inventory}</td>
            <td>
              <a class="btn bg7 cl7 btn-outline-secondary m-all--10" href="${MaruContextPath}/product/delete_process?product_idx=${product.product_idx}">삭제</a>
            </td>
          </tr>
        </c:forEach>

      </table>
      <nav aria-label="Page navigation example">
        <ul class="pagination">
          <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">다음</a></li>
        </ul>
      </nav>
    </div>

    <!-- 상품 문의 요약 -->
    <div class="container w-full txt-center bg6 p-all-30 m-b-50">
      <a href="${pageContext.request.contextPath}/admin/" class="btn bg7 cl7 btn-outline-secondary pull-left m-l--30 m-t--30 m-b-30">상품 문의</a>
      <table class="table table-bordered table-hover table-stripped">
        <thead>
          <tr class="bg1">
            <th>선택</th>
            <th>카테고리</th>
            <th>상품 문의번호</th>
            <th>아이디</th>
            <th>작성일</th>
            <th>답변 여부</th>
          </tr>
        </thead>
        <tr class="bg0">
          <td>
            <input type="checkbox" value="선택" />
          </td>
          <td>카테고리</td>
          <td>
            <a href="#" class="">1123123</a>
          </td>
          <td>djhoqs</td>
          <td>20220222</td>
          <td>답변O</td>
        </tr>
      </table>
      <nav aria-label="Page navigation example">
        <ul class="pagination">
          <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">다음</a></li>
        </ul>
      </nav>
    </div>
  </section>
  <!-- Modal -->
  <form action="${pageContext.request.contextPath}/qna/qnaisanswered" method="post" id="answer">
    <div class="modal fade" id="isanswer" role="dialog">
      <!-- 사용자 지정 부분① : id명 -->
      <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">답변 등록</h4>
            <!-- 사용자 지정 부분② : 타이틀 -->
            <button type="button" class="close" data-dismiss="modal">×</button>
          </div>
          <div class="modal-body">
            <%-- <c:forEach var="qna" items="${qnaList}" varStatus="status"> --%>
            <input type="text" name="idx" id="idx" value="${qna.idx}" />
            <input type="text" name="parent_idx" id="parent_idx" value="${qna.parent_idx}" />
            <input type="text" name="member_idx" value="${sessionScope.member_idx}">
            <%-- </c:forEach> --%>
            <input type="text" name="category" id="category" value="답변" />
            <input type="hidden" name="isanswered" id="isanswered" value="Y" />
            <textarea rows="8" cols="45" name="content" id="content" class="bor10 m-l-50">--답변--</textarea>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn bg2" data-dismiss="modal">닫기</button>
            <button type="submit" class="qna-button btn bg2">등록</button>
          </div>
        </div>
      </div>
    </div>
  </form>
  <!-- end first container -->

  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
  <!-- script -->
  <script type="text/javascript">
 function categoty(){
	    var category = $("#category = option:selected").val();
	    // $("category")의 선택한 값을 불러온다.

	     $("#category").val(category);

	    // 위에서 부른 값을 hidden값에 넣어서 DB 저장시 사용..
	 }
 </script>
  <script type="text/javascript">
 	function answer(obj){
 		let idx = $("button.qIdx").parent().prev().prev().prev().prev().children("p").val();
 		let button = $("button.qIdx");
 		
 		let idx = let button;
 	}
 </script>
</body>
</html>