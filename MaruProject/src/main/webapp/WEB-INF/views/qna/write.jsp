<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
<title>1:1문의</title>
<style> 
#cont{
	width:700px;
}

#filename{
	margin-bottom:.5rem;
}

.filebox{
	width:500px;  
}
#fileb{ 
	margin-right:70px; 
	margin-top:5px; 
}
.filebox .upload-name {
    display: inline-block; 
    height: 40px;
    padding: 0 10px;
    vertical-align: middle;
    border: 1px solid #dddddd; 
    width: 380px;
    color: #999999; 
}
.filebox label {
    display: inline-block;
    padding: 10px 20px;
    color: #fff;
    vertical-align: middle;
    background-color: #999999;
    cursor: pointer;
    height: 40px;
}
.filebox input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
    margin-top:20px;  
}
#category{
	margin-left:100px;
}

#pile{
	margin-top:20px;  
}

#content{
	margin-top:50px; 
}
#option{ 
	margin-left:10px;
}
</style> 
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%> 

<br><br><br>
<div class="container" >
<h3 class="col-2 m-t-20" style="float:left; margin-left:19%;">1대1문의</h3> 
	<div style="float:left; margin-left:30px;">
	FAQ에서 해결하지 못한 질문이 있으시면<br>
	1:1문의에 등록해주시면 친절히 답변해드립니다.<br>
	평균 답변 시간:2~3일
	</div>
</div>
<br><br><br>
<br><br>
<div class="container text-center bor10 m-t-10" id="cont">
	<form action="re_write" method="post" id="review_write">
	<div class="row m-t-25">
	  <div class="col-2">
		*카테고리
		</div>
	<div class="col-3 m-l-10" id="option">
		<select class="form-select" aria-label="Categories">
			<option selected>카테고리를 선택해주세요</option>
			<option value="1">문의</option>
			<option value="2">환불/교환 문의</option>
			<option value="3">1:1문의</option>
			<option value="4">상품문의</option>
		</select>
	</div> 
	</div> 
	<hr>
	<div class="row">
	<div class="col-2" id="content">
		*내용 
	  </div>
	  <div class="col-9 container">
		<textarea class="bor10 m-r-45" style="width:480px; height:150px;"></textarea>
	</div>
	</div>  
	<div class="m-t-50 m-b-50"> 
	<button class="cl0 btn btn-dark bg1 m-r-30" id="qna_submit" type="submit"><span class="cl0">등록하기</span></button>
	<a id="cancle" class="cl0 btn btn-dark bg1" type="submit" ><span class="cl0">취소</span></a>
	</div> 
	</form>
	</div>  
   <br><br><br> 
 <!-- Footer -->
  <%@include file="/include/footer.jsp"%> 
  <%@include file="/include/script.jsp"%> 
  <!--=====================================================================================================-->

<script>
$("#file").on('change',function(){
  var fileName = $("#file").val();
  $(".upload-name").val(fileName);
});
</script>
<script type="text/javascript"> 
$("#cancle").on("click", function(e){ 
	location.href = "${MaruContextPath}/index";
});
</script>
<!--=============================================================================-->
</body>
</html>