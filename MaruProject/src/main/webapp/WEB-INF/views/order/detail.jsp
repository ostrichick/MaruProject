<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="MaruContextPath" value="${pageContext.request.contextPath}" scope="application" />
<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문 상세 내역</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${MaruContextPath}/resources/images/icons/favicon.png" />

</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
  <!-- breadcrumb -->
  <div class="container">
    <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
      <a href="${MaruContextPath}/" class="stext-109 cl8 hov-cl1 trans-04"> 메인화면 <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
      </a> <a href="${MaruContextPath}/member/myinfo" class="stext-109 cl8 hov-cl1 trans-04"><span class="stext-109 cl4"> 내 정보 </span> <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i></a> <a href="${MaruContextPath}/member/myinfo#order_list" class="stext-109 cl8 hov-cl1 trans-04"><span class="stext-109 cl4"> 주문 목록 </span> <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i></a> <span class="stext-109 cl4"> 주문 상세 내역 </span>
    </div>
  </div>

  <!-- Shoping Cart -->
  <section class="container">
    <form class="m-b-50">
      <h3 class="m-tb-50 m-l-50">주문 상세 내역</h3>
      <div class="wrap-table-shopping-cart">
        <table class="table-shopping-cart txt-center">
          <tr class="table_head">
            <th class="col-1">선택</th>
            <th class="col-6" colspan="2">상품</th>
            <th class="col-1">수량</th>
            <th class="col-2 ">총가격</th>
            <th class="col-1">리뷰</th>
          </tr>

          <c:forEach var="orderProduct" items="${orderProductList }" varStatus="status">

            <tr class="table_row">
              <td class="">
                <div class="form-check">
                  <input class="input-lg form-check-input dis-inline-block" type="checkbox" value="" id="delete_item">
                </div>
              </td>
              <td class="col-2">
                <div class="">
                  <img class="img-fluid img-thumbnail" src="${MaruContextPath}/resources/upload/s_${orderProduct.file_original}" width="150" alt="IMG">
                </div>
              </td>
              <td class="col-4 p-l-30 txt-left">${orderProduct.product_name}</td>
              <td class="">${orderProduct.order_quantity}</td>
              <td class=" txt-right p-r-30">
                <fmt:formatNumber value="${orderProduct.product_price }" type="currency" currencySymbol="₩" pattern="###,###,###" />
                ₩
              </td>
              <td class="">



                <button type="button" class="btn bg7 cl7" data-toggle="modal" data-target="#idx${orderProduct.product_idx }">리뷰작성</button>
                <div class="modal fade" id="idx${orderProduct.product_idx }" tabindex="-1" role="dialog" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title">답변 작성하기</h5>
                        <a type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span>
                        </a>
                      </div>
                      <div class="modal-body">
                        <textarea class="form-control idx${orderProduct.product_idx }" name="content" id="content" cols="30" rows="10"></textarea>
                      </div>
                      <div class="modal-footer">
                        <input type="hidden" name="member_idx" value="${orderProduct.member_idx }" />
                        <input type="hidden" name="product_idx" value="${orderProduct.product_idx }" />
                        <a type="button" class="btn bg6 btn-outline-secondary" data-dismiss="modal">취소</a>
                        <input type="button" class="btn bg7 cl7 btn-outline-dark" value="등록" onclick="writeReview('${orderProduct.member_idx}','${orderProduct.product_idx }', this)">
                      </div>
                    </div>
                  </div>
                </div>

              </td>
            </tr>
          </c:forEach>
        </table>
      </div>

      <div class="bg8 text-dark p-l-150 p-tb-40 fs-18 ">
        <p class="fs-20 p-tb-10">
          <strong>[ 주문내역 ]</strong>
        </p>
        <table class="txt-right table-hover">
          <tr>
            <td>결제금액 :</td>
            <td>
              <fmt:formatNumber value="${orderProductList[0].order_total_price }" type="currency" currencySymbol="₩" pattern="###,###,###" />
              ₩
            </td>
          </tr>
        </table>
      </div>
      <div class="mt-5 txt-center">
        <a href="order_refund?order_idx=" type="button" class="btn bg7 cl7 btn-outline-dark btn-lg m-lr-30">선택 상품 환불/결제 취소</a>
        <!--         <button type="button" class="btn bg7 cl7 btn-outline-dark btn-lg m-lr-30">선택 상품 교환</button> -->
      </div>
    </form>
  </section>
  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
  <script>
      function writeReview(member_idx, product_idx, obj) {
        console.log(obj);
        event.preventDefault();

        let content = $("textarea.idx" + product_idx).val();
        console.log(content);
        if ($("input#reply_content").val() !== "") {
          $.ajax({
            type : "post",
            url : "../product/review/write?product_idx=" + product_idx,
            data : {
              product_idx : product_idx,
              member_idx : member_idx,
              content : content,
            },
            success : function(result) {
              console.log(result);
              console.log("작성 성공");
              $("textarea").val("");
              $(".modal").modal("hide");
              console.log($(obj).parent().parent().parent().parent().parent().parent());
              $(obj).parent().parent().parent().parent().parent().find("button").remove();
              $(obj).parent().parent().parent().parent().parent().prepend("작성완료");
            },
            error : function(request, status, error) {
              alert("status:" + status + "\n\n" + "code:" + request.status + "\n\n" + "message:" + request.responseText + "\n\n" + "error:" + error);
              console.log(status);
              console.log(request);
              console.log(error);
            },
          });
        }
      }
    </script>
</body>
</html>