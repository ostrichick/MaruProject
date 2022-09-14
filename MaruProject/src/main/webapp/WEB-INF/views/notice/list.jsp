<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>공지사항</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
}

li.page-item.active>a.page-link:hover {
  background: #444;
}
</style>
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>

  <div class="container w-full m-tb-40">
    <h2 class="m-tb-30">공지사항</h2>
    <table class="table table-striped table-hover">
      <thead>
        <tr>
          <th class="text-center">번호</th>
          <th class="text-center">제목</th>
          <th class="text-center">날짜</th>
          <th class="text-center">조회수</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="notice" items="${noticeList}" varStatus="status">
          <tr>
            <td class="text-right">${notice.idx}</td>
            <td class="">
              <a href='#' onClick='fn_view(${notice.idx})'>${notice.title}</a>
            </td>
            <td class="text-center">
              <fmt:formatDate pattern="yyyy.MM.dd HH:mm" value="${notice.wdate}" />
            </td>
            <td class="text-right">${notice.hit}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
    <c:if test="${member_admin eq 'Y' }">
      <a href='#' onClick='fn_write()' class="btn btn-secondary pull-right">글쓰기</a>
    </c:if>
    <nav aria-label="Page navigation example">
      <ul class="pagination">
        <li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
        <li class="page-item active"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item"><a class="page-link" href="#">다음</a></li>
      </ul>
    </nav>
    <div></div>
  </div>
  <script>
/**글쓰기*/
      function fn_write() {
//         e.preventDefault();
        location.href = "${MaruContextPath}/notice/write";
      }
      /**글조회*/
      function fn_view(idx) {
        let url = "${MaruContextPath}/notice/view?idx=";
        url += idx;
        location.href = url;
      }
</script>
  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>