<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%> 

<br><br><br><br><br><br>
<div class="container" >
<h3 class="col-3" style="float:left ;">1대1문의수정</h3>
<div style="border-left:100;"></div>
	<div style="float:left;">
	FAQ에서 해결하지 못한 질문이 있으시면 1:1문의에 등록해주시면 친절히 답변해드립니다.<br>
	평균 답변 시간:2~3일
	</div> 
</div>
<br>
<br>
<div class="container text-center" style="border-style:solid; margin-top:10px;">
	<div class="row" style="margin-top: 25px;">
	  <div class="col-2">
		*카테고리
		</div>
	<div class="col-2">
		<select class="form-select" aria-label="Categories">
			<option selected>상품의 카테고리를 선택해주세요</option>
			<option value="1">거실</option>
			<option value="2">침실</option>
			<option value="3">드레스룸</option>
			<option value="4">서재</option>
			<option value="5">주방</option>
			<option value="6">욕실</option> 
		</select>
	</div>
	</div>
	<hr>
	<div class="row">
	<div class="col-2">
		*내용
	  </div>
	  <div class="col-8">
		<textarea style="border-style:solid; width:400px; height:150px;">
				
		</textarea>
	</div>
	</div>
	<hr>
	<div class="row">
	<div class="col-2">
		파일첨부
	 </div>
	<div class="col-8" style="margin-bottom:30px;">
	<div class="filebox">
		<input class="upload-name" value="첨부파일" placeholder="첨부파일">
		<label for="file">파일찾기</label> 
		<input type="file" id="file">
	</div>
	</div>
	</div>
</div>
<div style="margin-left:40%; margin-top:50px; margin-bottom:50px;">
<input id="button" class="btn btn-primary" type="submit" value="수정" style="margin-right:30px ;">
<input id="button" class="btn btn-primary" type="reset" value="취소">
</div>
  

 <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/script.jsp"%>
  <!--=====================================================================================================-->
<style>
.filebox .upload-name {
    display: inline-block;
    height: 40px;
    padding: 0 10px;
    vertical-align: middle;
    border: 1px solid #dddddd;
    width: 78%;
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
    margin-left: 10px;
}
.filebox input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}
#button {
	    color: #fff; 
    background-color: #6c757d;
    border-color: #6c757d;
   
}
</style> 
<script>
$("#file").on('change',function(){
  var fileName = $("#file").val();
  $(".upload-name").val(fileName);
});


</script>

<!--=============================================================================-->
</body>
</html>