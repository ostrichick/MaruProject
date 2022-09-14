<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>로그인</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
    <style>
      input {
        border: red dotted 1px;
      }
    </style>
  </head>
  <body class="animsition">
    <%@include file="/include/header.jsp"%>
    <form action="${pageContext.request.contextPath}/product/add_process" method="post" enctype="multipart/form-data">
      제품명
      <input type="text" name="product_name" placeholder="제품명" />
      <br />가격
      <input type="number" name="price" placeholder="가격" />
      <br />할인 여부
      <input type="checkbox" name="product_sale" value="Y" />
      <br />할인율
      <input type="number" name="product_sale_percent" placeholder="할인율" />
      % <br />규격
      <input type="text" name="product_size" placeholder="예시: '800x1500'" />
      <br />배송 정보
      <input type="text" name="product_delivery_info" placeholder="" />
      <br />대분류
      <select id="product_major_category" name="product_major_category">
        <option value="">대분류 선택</option>
        <option value="거실">거실</option>
        <option value="침실">침실</option>
        <option value="드레스룸">드레스룸</option>
        <option value="서재">서재</option>
        <option value="주방">주방</option>
        <option value="욕실">욕실</option>
      </select>
      <br />소분류
      <select id="product_minor_category" name="product_minor_category">
        <option value="">소분류 선택</option>
      </select>
      <br />재고
      <input type="number" name="product_inventory" placeholder="" />
      상품사진
      <input type="file" name="uploadFile" />
      상세설명
      <textarea id="summernote" name="product_detail"></textarea>

      <input type="submit" value="상품 추가" />
    </form>
    <hr style="clear: both; visibility: hidden; margin: 0" />
    <!-- Footer -->
    <%@include file="/include/footer.jsp"%> <%@include file="/include/detail.jsp"%>
    <script>
      $(function () {
        $("#product_major_category").change(function () {
          let major_category = $("#product_major_category option:selected").val();
          let print_minor_option = null;
          switch (major_category) {
            case "거실":
              $("#product_minor_category").empty();
              print_minor_option = "<option value=''>소분류 선택</option>";
              print_minor_option += "<option value=''>거실 하위분류 추가</option>";
              break;
            case "침실":
              $("#product_minor_category").empty();
              print_minor_option = "<option value=''>소분류 선택</option>";
              print_minor_option += "<option value=''>침실 하위분류 추가</option>";
              break;
            // case 4개 더 추가해서 완성시킬것
          }
          $("#product_minor_category").append(print_minor_option);
        });
      });
      $("#summernote").summernote({
        placeholder: "내용을 작성해주세요.",
        tabsize: 2,
        height: 300,
        lang: "ko-KR", // 한글 설정
        toolbar: [
          // [groupName, [list of button]]
          ["fontname", ["fontname"]],
          ["fontsize", ["fontsize"]],
          ["style", ["bold", "italic", "underline", "strikethrough", "clear"]],
          ["color", ["forecolor", "color"]],
          ["table", ["table"]],
          ["para", ["ul", "ol", "paragraph"]],
          ["height", ["height"]],
          ["insert", ["picture", "link", "video"]],
          ["view", ["fullscreen", "help"]],
        ],
        fontNames: ["Arial", "Arial Black", "Comic Sans MS", "Courier New", "맑은 고딕", "궁서", "굴림체", "굴림", "돋움체", "바탕체"],
        fontSizes: ["8", "9", "10", "11", "12", "14", "16", "18", "20", "22", "24", "28", "30", "36", "50", "72"],
        callbacks: {
          onImageUpload: function (files, editor, welEditable) {
            // 파일 업로드(다중업로드를 위해 반복문 사용)
            for (var i = files.length - 1; i >= 0; i--) {
              uploadSummernoteImageFile(files[i], this);
            }
          },
        },
      });
      function uploadSummernoteImageFile(file, el) {
        data = new FormData();
        data.append("file", file);
        $.ajax({
          data: data,
          type: "POST",
          url: "uploadSummernoteImageFile",
          contentType: false,
          enctype: "multipart/form-data",
          processData: false,
          success: function (data) {
            $(el).summernote("editor.insertImage", data.url);
          },
        });
      }
    </script>
    <!--===============================================================================================-->
    <script src="${pageContext.request.contextPath}/resources/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.js"></script>
    <script>
      $(".js-select2").each(function () {
        $(this).select2({
          minimumResultsForSearch: 20,
          dropdownParent: $(this).next(".dropDownSelect2"),
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="${pageContext.request.contextPath}/resources/vendor/slick/slick.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/slick-custom.js"></script>
    <!--===============================================================================================-->
    <script src="${pageContext.request.contextPath}/resources/vendor/parallax100/parallax100.js"></script>
    <script>
      $(".parallax100").parallax100();
    </script>
    <!--===============================================================================================-->
    <script src="${pageContext.request.contextPath}/resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
    <script>
      $(".gallery-lb").each(function () {
        // the containers for all your galleries
        $(this).magnificPopup({
          delegate: "a", // the selector for gallery item
          type: "image",
          gallery: {
            enabled: true,
          },
          mainClass: "mfp-fade",
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="${pageContext.request.contextPath}/resources/vendor/isotope/isotope.pkgd.min.js"></script>
    <!--===============================================================================================-->
    <script src="${pageContext.request.contextPath}/resources/vendor/sweetalert/sweetalert.min.js"></script>
    <script>
      $(".js-addwish-b2, .js-addwish-detail").on("click", function (e) {
        e.preventDefault();
      });

      $(".js-addwish-b2").each(function () {
        var nameProduct = $(this).parent().parent().find(".js-name-b2").html();
        $(this).on("click", function () {
          swal(nameProduct, "is added to wishlist !", "success");

          $(this).addClass("js-addedwish-b2");
          $(this).off("click");
        });
      });

      $(".js-addwish-detail").each(function () {
        var nameProduct = $(this).parent().parent().parent().find(".js-name-detail").html();

        $(this).on("click", function () {
          swal(nameProduct, "is added to wishlist !", "success");

          $(this).addClass("js-addedwish-detail");
          $(this).off("click");
        });
      });

      /*---------------------------------------------*/

      $(".js-addcart-detail").each(function () {
        var nameProduct = $(this).parent().parent().parent().parent().find(".js-name-detail").html();
        $(this).on("click", function () {
          swal(nameProduct, "is added to cart !", "success");
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="${pageContext.request.contextPath}/resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script>
      $(".js-pscroll").each(function () {
        $(this).css("position", "relative");
        $(this).css("overflow", "hidden");
        var ps = new PerfectScrollbar(this, {
          wheelSpeed: 1,
          scrollingThreshold: 1000,
          wheelPropagation: false,
        });

        $(window).on("resize", function () {
          ps.update();
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
  </body>
</html>
