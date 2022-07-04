<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/goods_register.css" />
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<title>상품 등록</title>
<script>
	function win_upload() {
		var op = "width=500, height=150, left=50, top=150";
		open("pictureimgForm", '', op);
	}
</script>
<!-- Container (Contact Section) -->
<div id="contact_gbs" class="container">
	<form action="regist" method="post" enctype="multipart/form-data"
		class="goods_form" name="f">
		<div class="row">
			<div class="col-md-8-center">
				<div class="row">
					<div class="col-sm-8 form-group">
						<label for="gbsImg">상품 이미지</label> <input type="hidden"
							name="picture" value=""> <img src="" width="100"
							height="120" id="pic"><br> <font size="1"><a
							href="javascript:win_upload()">사진등록</a></font>
					</div>
					<div class="col-sm-8 form-group">
						<label for="gdsName">상품명</label> <input class="form-control"
							id="gbsName" name="gbsName" type="text" value="">
					</div>
					<div class="col-sm-8 form-group">
						<label for="gdsPrice">상품가격</label> <input class="form-control"
							id="gbsPrice" name="gbsPrice" type="text" value="">
					</div>

				</div>
				<label for="gbsDes">상품소개</label>
				<textarea class="form-control" id="gbsDes" name="gbsDes" rows="5"></textarea>
				<br>


				<div class="row">
					<div class="col-md-12 form-group">
						<input type="submit" value="등록">
					</div>
				</div>
			</div>
		</div>
		<br>
	</form>
</div>
<br />
<br />
<br />