<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>로그인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png" />

</head>
<body class="animsition">
  <%@include file="/include/header.jsp"%>
 

<section class="bg0 p-t-104 p-b-116">
	<div class="container">
		<div class="container flex-w flex-tr p-lr-150 p-t-150 p-b-70 box">
			<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg">
				<form action="${pageContext.request.contextPath}/member/signin_process.do" method="post">
					<h4 class="mtext-105 cl2 txt-center p-b-30">
						Login page
					</h4>

					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" id="member_id" name="member_id" placeholder="아이디를 입력해주세요">
					</div>
					<div class="bor8 m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="password" id="member_pw" name="member_pw" placeholder="패스워드를 입력해주세요">
					</div>
					<div class="flex-w m-r--5 m-t-50">
					<button type="submit" class="flex-c-m m-l-20 stext-107 cl0 size-60 bg3 bor1 hov-btn3 p-lr-35 trans-04 pointer">
						로그인
					</button>
					</br>
					<button class="flex-c-m m-l-50 stext-107 cl0 size-60 bg3 bor1 hov-btn3 p-lr-27 trans-04 pointer">
						회원가입
					</button>
					<br>
					<a href="#" class="flex-c-m m-l-40 m-t-30 stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
						아이디/비번을 잊어버리셨나요?
					</a>
				</div>
				</form>
			</div>			
		</div>
	</div>
</section>	
<hr style="clear: both; visibility: hidden; margin: 0;">

 

  <!-- Footer -->
  <%@include file="/include/footer.jsp"%>
  <%@include file="/include/detail.jsp"%>
  <%@include file="/include/script.jsp"%>
</body>
</html>