<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>로그인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />
<style type="text/css">
	#sign{  
		width:340px;
		text-align:center;  
	}
</style>
</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
<br><br><br>
<h2 style="text-align:center;">Maru</h2>
<br>
<div class="container bor10" style="width:400px;">   
<br>
	 <div class="container">   
		<form action="${pageContext.request.contextPath}/member/signin_process.do" method="post">
			<div class="bor8 m-b-20 how-pos4-parent">
					<input class="form-control" type="text" id="member_id" name="member_id" placeholder="아이디를 입력해주세요">
			</div>
			<div class="bor8 m-b-20 how-pos4-parent">
				<input class="form-control" type="password" id="member_pw" name="member_pw" placeholder="패스워드를 입력해주세요">
			</div>
			<div class="flex-w m-t-30"> 
			<button type="submit" class="btn btn-outline-secondary bg7 cl7" id="sign">
				로그인 
			</button>
		</div>
		</form>
		<div class="m-t-20"> 
			<button class="btn btn-dark bg2 cl6" onclick="signup()" id="sign">
				회원가입 
			</button>
		</div>
		<div class="m-t-20">
			<a href="#" class="btn bg2 cl6 btn-dark" id="sign"> 
				아이디/비밀번호 찾기
			</a>
			</div>
	 </div>
	 <br>
</div>
<br><br><br> 
<hr style="clear: both; visibility: hidden; margin: 0;">
<script type="text/javascript">
function signup() {
    location.href = "${MaruContextPath}/member/signup";
  }
</script>
 

  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>