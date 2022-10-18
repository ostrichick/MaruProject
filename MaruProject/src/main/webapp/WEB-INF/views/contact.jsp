<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>오시는 길</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
<body class="animsition">
  <%@include file="/include/header.jsp"%>
  <!-- Title page -->
  <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('${pageContext.request.contextPath}/resources/images/bg-01.jpg');">
    <h2 class="ltext-105 cl0 txt-center">오시는 길</h2>
  </section>
  <div class="map">
    <div class="size-303" id="google_map" data-map-x="35.8402932" data-map-y="127.1325622" data-pin="${pageContext.request.contextPath}/resources/images/icons/pin.png" data-scrollwhell="0" data-draggable="1" data-zoom="18"></div>
  </div>
  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
  <!--===============================================================================================-->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
  <script src="${pageContext.request.contextPath}/resources/js/map-custom.js"></script>
  <!--===============================================================================================-->
</body>
</html>