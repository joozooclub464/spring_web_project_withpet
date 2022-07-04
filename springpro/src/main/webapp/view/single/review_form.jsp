<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Login</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/review_form.css" />
<script src="https://kit.fontawesome.com/51db22a717.js"
	crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Alata&display=swap"
	rel="stylesheet" />
</head>


<body>
	<div class="page-container">
		<div class="login-form-container shadow">
			<div class="login-form-right-side">
				<img alt="left search" src="<%=request.getContextPath()%>/img/about3.png" class="picture" />
			</div>
		</div>
	</div>

	<div>
		<form action="review" method="post" class="loginForm">
			<input type="text" name="id" value="${review.id}"> <input
				type="text" name="h_num" value="${review.h_num}"> <br />
			<h2>${hotel.h_name}</h2>
			<br />
			<textarea name="rv_desc" cols="45" rows="20"
				style="border: 1px solid #eeeeee;"> </textarea>
			<br /> <br />
			<input type="submit" class="btn" value="REVIEW">

			<div style="color: gray">
				당신의 목소리를 들려주세요: )<br />우리는 당신을 존중합니다&nbsp;&nbsp;&nbsp;&nbsp;: ) <br />
				<br />
			</div>
		</form>
	</div>

</body>

</html>