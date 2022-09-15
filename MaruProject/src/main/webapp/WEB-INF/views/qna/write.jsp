<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
<title>1:1문의</title>
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%> 

<br><br><br>
<div class="container" >
<h3 class="col-2" style="float:left ;">1대1문의</h3> 
<div style="border-left:100;"></div>
	<div style="float:left; margin-left:50px;">
	FAQ에서 해결하지 못한 질문이 있으시면 1:1문의에 등록해주시면 친절히 답변해드립니다.<br>
	평균 답변 시간:2~3일
	</div>
</div>
<br><br><br>

<div class="container text-center" style="border-style:solid; margin-top:10px;">
	<div class="row" style="margin-top: 25px;">
	  <div class="col-2">
		*카테고리
		</div>
	<div class="col-3" id="option">
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
		<textarea style="border:1px solid #666; width:500px; height:150px;">  
				
		</textarea>
	</div>
	</div>
	<hr>
	<div class="row">
	<div class="col-2" id="pile">
		파일첨부
	 </div>
	<div class="col-7" style="margin-bottom:30px;">
	<div class="filebox" id="fileb">
		<input class="upload-name" value="첨부파일" placeholder="첨부파일">
		<label for="file" class="bg1">파일찾기</label> 
		<input class="bg1" type="file" id="file">
	</div> 
	</div> 
	</div>
</div>
<div style="margin-left:40%; margin-top:50px; margin-bottom:50px;">
<a class="btn btn-primary bg1" type="submit"  style="margin-right:30px;"><p class="cl0">등록하기</p></a>
<a class="btn btn-primary bg1" type="reset" ><p class="cl0">취소</p></a>   
</div>  
  
 <!-- Footer -->
  <%@include file="/include/footer.jsp"%> 
  <%@include file="/include/script.jsp"%>
  <!--=====================================================================================================-->
<style> 
.filebox{
	width:600px;  
}
#fileb{ 
	margin-left:35px;
}
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
<script>
$("#file").on('change',function(){
  var fileName = $("#file").val();
  $(".upload-name").val(fileName);
});

</script>
<!--=============================================================================-->
</body>
</html>