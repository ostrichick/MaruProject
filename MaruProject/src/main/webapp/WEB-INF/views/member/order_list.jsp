<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="MaruContextPath" value="${pageContext.request.contextPath}" scope="application" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문 완료</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${MaruContextPath}/resources/images/icons/favicon.png" />

</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
  <h3 class="ml-5" style="margin-top: 150px;">êµ¬ë§¤ë´ì­</h3>
  <form class="container" style="margin-bottom: 200px;">

    <table class="table">
      <tr class="table_head">
        <th class="column-1">ì í</th>
        <th class="column-2">ì´ë¯¸ì§</th>
        <th class="column-3">ì íëª</th>
        <th class="column-4">ê°ê²©</th>
        <th class="column-5">ì íê·ê²©</th>
        <th class="column-6">ìì</th>

      </tr>

      <tr class="table_row">
        <td class="column-1">
          <div class="form-check m-5 float-left">
            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
          </div>
        </td>
        <td class="column-2">
          <div class="">
            <img src="images/product-01.jpg" width="150px" height="150px" alt="IMG">
          </div>
        </td>
        <td class="column-3">ì íëª</td>
        <td class="column-4">180,000ì</td>
        <td class="column-5">2000x1600</td>
        <td class="column-6">í°ì</td>

      </tr>
    </table>


    <div class="bg-secondary text-dark p-3" style="font-size: 18px;">
      <h3 class="col-md-4 bg-dark text-white mt-1">ì£¼ë¬¸ë´ì­</h3>
      <hr>
      <table style="padding: 20px 150px;">
        <tr>
          <td>ì£¼ë¬¸ê¸ì¡ :</td>
          <td>180,000ì</td>
        </tr>
        <tr>
          <td>ë°°ì¡ë¹ :</td>
          <td>2,500ì</td>
        </tr>
        <tr>
          <td>ì´ì£¼ë¬¸ê¸ì¡ :</td>
          <td>182,500ì</td>
        </tr>
      </table>
    </div>
    <!-- ==================== -->
    <section class="bg-secondary text-white" style="margin: 50px auto; padding: 20px 150px;">
      <!-- <form class="col-md-6 m-auto bg-secondary text-white p-5"> -->
      <h3 class="col-md-4 bg-dark mt-5">ë°°ì¡ì ë³´</h3>
      <hr>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">ì£¼ë¬¸ì</p>
        <p class="form-control col-md-10">íê¸¸ë</p>
      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">ì°ë½ì²</p>
        <p class="form-control col-md-10">010-1111-1111</p>

      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">ë°°ì¡ì£¼ì</p>
        <p class="form-control col-md-10">ì ì£¼ì ëì§êµ¬</p>

      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">ê²°ì ë°©ì</p>
        <p class="form-control col-md-10">ì ì©ì¹´ë</p>
      </div>
      <br>
      <div class="">
        <p for="exampleFormControlInput1" class="form-label">ë°°ì¡ì¼ì</p>
        <p class="form-control col-md-10">2022.08.25</p>
      </div>

      <!-- </form> -->
    </section>

    <!-- ================= -->

    <div class="mt-5">
      <button type="button" class="btn btn-outline-dark btn-lg" style="margin-left: 300px;">ì í ìí êµí/ë°í</button>
      <button type="button" class="btn bg-dark text-white ml-3 btn-lg">ì íìí ê²°ì  ì·¨ì</button>
    </div>
  </form>
  <br>

  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>