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
body {
  background-color: #eee;
}

.bdge {
  height: 21px;
  background-color: orange;
  color: #fff;
  font-size: 11px;
  padding: 8px;
  border-radius: 4px;
  line-height: 3px;
}

.comments {
  text-decoration: underline;
  text-underline-position: under;
  cursor: pointer;
}

.dot {
  height: 7px;
  width: 7px;
  margin-top: 3px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
}

.hit-voting:hover {
  color: blue;
}

.hit-voting {
  cursor: pointer;
}
</style>
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
  <div class="container" style="margin: 30px auto;">
    <div class="container my-1">
      <div class="row">
        <table class="table table-bordered">
          <thead>
            <tr class="table-active">
              <th scope="col" class="col-6"><h3>${boardVo.title}</h3></th>
              <th scope="col" class="col-6 text-right"><fmt:formatDate pattern="yyyy.MM.dd HH:mm" value="${boardVo.wdate}" /><br />조회 : ${boardVo.hit}</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td colspan="2">
                <pre>${boardVo.content}</pre>
                <br>
                <%-- <c:if test="${not empty boardVo.file_original}">
                  <img src="${pageContext.request.contextPath}/resources/upload/s_${boardVo.file_original}" style="width: 300px; height: 200px;" />
                  <img src="${pageContext.request.contextPath}/resources/upload/${boardVo.file_original}" />
                  <img src="${pageContext.request.contextPath}/resources/upload/${boardVo.file_system}" />
                </c:if> --%>
              </td>
            </tr>
          </tbody>
        </table>

        <div class="coment-bottom bg-white p-2 px-4">
          <div class="d-flex flex-row add-comment-section mt-4 mb-4">
             <input type="text" class="form-control mr-3" placeholder="댓글을 작성해주세요.">
            <button class="btn btn-primary" type="button">Comment</button>
          </div>
          <div class="commented-section mt-2">
            <div class="d-flex flex-row align-items-center commented-user">
              <h5 class="mr-2">보더콜리</h5>
              <span class="dot mb-1"></span><span class="mb-1 ml-2">2022.10.06</span>
            </div>
            <div class="comment-text-sm">
              <span>아무말 아무 말 아무말 아 무말 아무말 아무 말 아무말 아 무말 아무말 아무 말 아무말 아 무말 아무말 아무 말 아무말 아 무말 아무말 아무 말 아무말 아 무말 아무말 아무 말 아무말 아 무말 아무말 아무 말 아무말 아 무말 </span>
            </div>
            <div class="reply-section">
              <div class="d-flex flex-row align-items-center voting-icons">
                <i class="fa fa-sort-up fa-2x mt-3 hit-voting"></i><i class="fa fa-sort-down fa-2x mb-3 hit-voting"></i><span class="ml-2">10</span><span class="dot ml-2"></span>
                <h6 class="ml-2 mt-1">
                  <span>수정 </span> <span> 삭제</span>
                </h6>
              </div>
            </div>
          </div>
        </div>
      </div>


    </div>
    <div class="txt-right">
      <button onClick='toList()' class="toList btn btn-secondary mb-3">목록으로</button>
      <c:if test="${member_admin eq 'Y' }">
        <button onClick='toEdit()' class="toEdit btn btn-secondary mb-3">수정</button>
        <button onClick='toDelete()' class="toDelete btn btn-secondary mb-3">삭제</button>
      </c:if>
    </div>
  </div>
  <script>
      function toList() {
        location.href = "${MaruContextPath}/notice/list";
      }
      function toEdit() {
        let url = "${MaruContextPath}/notice/edit?idx=";
        let idx = "${boardVo.idx}"
        url += idx;
        location.href = url;
      }
      function toDelete() {
        let url = "${MaruContextPath}/notice/delete?idx=";
        let idx = "${boardVo.idx}"
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