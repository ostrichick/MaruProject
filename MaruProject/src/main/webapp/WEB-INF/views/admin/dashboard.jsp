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
#button {
  color: #fff;
  background-color: #6c757d;
  border-color: #6c757d;
}

#box {
  height: 600px;
  background-color: #e6e6e6;
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

.qna{
text-overflow: ellipsis;
white-space: nowrap;
overflow: hidden; 
width:300px; 
}


#mbox {
  margin: 30px auto;
}

td input[type="checkbox"] {
  float: left;
  margin: 5 auto;
  width: 100%;
}

tr, th, td {
  text-align: center;  
}

</style>
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
  <div class="container m-t-50">

    <h2>관리자 페이지</h2>
    <br>
    <div class="container" id="box">
      <a href="${pageContext.request.contextPath}/admin/memberList" class="btn btn-success m-l--15" id="button">회원관리</a>
      <table class="table table-bordered col-10" id="mbox">
        <tr class="bg1">
          <th>선택</th>
          <th>아이디</th>
          <th>이름</th>
          <th>번호</th>
          <th>주소</th>
          <th>상세주소</th>
          <th>가입일</th>
          <th>탈퇴여부</th>
        </tr>
        <tr class="bg0">
          <td>
            <input type="checkbox" value="선택" id="checkbox" />
          </td>
          <td>
            <a href="#" class="">sdifas</a>
          </td>
          <td>홍길동</td>
          <td>12341221</td>
          <td>전라북도 전주시</td>
          <td>인후동 00도로 125-21번지</td>
          <td>20221211</td>
          <td>탈퇴</td>
        </tr>
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
    <br> <br>
    <div class="container" id="box">
      <a href="${pageContext.request.contextPath}/admin/updateList" class="btn btn-success  m-l--15" id="button">상품 업데이트</a>
      <table class="table table-bordered col-9" id="mbox">
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
        <tr class="bg0">
          <td>
            <input type="checkbox" value="선택" id="checkbox" />
          </td>
          <td>
            <a href="#" class="">파란소파123</a>
          </td>
          <td>123412412</td>
          <td>50</td>
          <td></td>
          <td></td>
          <td></td>
        </tr>

        <c:forEach var="product" items="${productList}" varStatus="status">
          <tr class="bg0">
            <td>
              <input type="checkbox" value="선택" id="checkbox" />
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
              <a href="${MaruContextPath}/product/delete_process?product_idx=${product.product_idx}" class="btn btn-success  m-l--15" id="button">삭제</a>
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
    <br> <br>
    <div class="container" id="box">
      <a href="${pageContext.request.contextPath}/notice/" class="btn btn-success  m-l--15" id="button">공지사항</a>
      <table class="table table-bordered col-4" id="mbox">
        <tr class="bg1">
          <th>선택</th>
          <th>공지사항</th>
          <th>날짜</th>
          <th>조회수</th>
        </tr>
        <tr class="bg0">
          <td>
            <input type="checkbox" value="선택" id="checkbox" />
          </td>
          <td>
            <a href="#" class="">공지사항123</a>
          </td>
          <td>14553445</td>
          <td>999</td>
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
    <br> <br>
    <div class="container" id="box">
      <a href="${pageContext.request.contextPath}/" class="btn btn-success  m-l--15" id="button">1:1문의</a>
      <table class="table table-bordered col-8" id="mbox">   
        <tr class="bg1">
          <th>선택</th>
          <th>문의번호</th>
          <th>문의내용</th>
          <th>아이디</th>
          <th>날짜</th>
          <th>답변 여부</th>
        </tr>        
        
      <c:forEach var="qna" items="${qnaList}" varStatus="status">
          <tr class="bg0">
            <td>
              <input type="checkbox" value="선택" id="checkbox" />
            </td> 
            <td>
              <p>${qna.idx}</p>
            </td> 
            <td>
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                  <div class="panel-heading qna" role="tab"> 
                    <a role="button" class="qna" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false">문의</a>
                  </div>
                  <div id="collapse1" class="panel-collapse collapse" role="tabpanel">
                    <div class="panel-body">
                      <hr>
                      <div class="p-3 text-break" style="width:350px; border: 1px solid black;">   
                        <p>
                          <strong>상세내용</strong>
                        </p>
                        <br>
                        <p>${qna.content}</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
             </td> 
            <td>${qna.member_name}</td> 
            <td><fmt:formatDate pattern="yyyy.MM.dd HH:mm" value="${qna.wdate}"/></td> 
            <td>
            	<c:choose> 
            		<c:when test="${qna.isanswered eq 'N'}">
            		<button type="button" class="btn bg2" data-toggle="modal" data-target="#isanswered">답변</button>
            		</c:when>
            		<c:otherwise>YY</c:otherwise> 
            	</c:choose>
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
    <br> <br>
    <div class="container" id="box">
      <a href="${pageContext.request.contextPath}/admin/" class="btn btn-success  m-l--15" id="button">상품 문의</a>
      <table class="table table-bordered col-6" id="mbox">
        <tr class="bg1">
          <th>선택</th>
          <th>카테고리</th>
          <th>상품 문의번호</th>
          <th>아이디</th>
          <th>작성일</th>
          <th>답변 여부</th>
        </tr>
        <tr class="bg0">
          <td>
            <input type="checkbox" value="선택" id="checkbox" />
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
    <br> <br>
  </div>

<!-- Modal -->
<form action="${pageContext.request.contextPath}/qna/qna_isanswered" method="post" id="isanswer"> 
  <div class="modal fade" id="isanswered" role="dialog"> <!-- 사용자 지정 부분① : id명 -->
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
       <div class="modal-header">
        <h4 class="modal-title">답변 등록</h4> <!-- 사용자 지정 부분② : 타이틀 -->
        <button type="button" class="close" data-dismiss="modal">×</button>  
       </div> 
       <div class="modal-body"> 
		 <select name="category" id="category"><option value="답변">답변</option></select>
         <textarea rows="8" cols="45" name="content" class="bor10 m-l-50"></textarea>    
       </div> 
       <div class="modal-footer">
         <button type="button" class="btn bg2" data-dismiss="modal">닫기</button>
	     <button type="submit" class="btn bg2">등록</button>
       </div>
      </div>
    </div>
  </div>
</form>
 <!-- end first container -->
  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>