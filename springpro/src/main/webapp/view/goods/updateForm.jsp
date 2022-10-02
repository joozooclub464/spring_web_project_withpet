<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<meta charset="EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/new_join2.css" />

<br />
<br />
<br />
<br />
<!-- header -->
<div id="header">
	<h2>WITH.PET</h2>
</div>


<!-- wrapper -->
<!-- <div id="wrapper"> -->
<div class="container__join">
	<!-- content-->
	<div id="content">
		<form class="goods_form" action="update" method="post" name="f">
			<div>
			<h3 class="join_title">
				<label for="gbsName">상품명: </label> 
			</h3>
				<span class="box int_name">
				<input type="text" id="gbsName" class="int" name="gbsName" value="${goods.gbsName}">
				</span>
			</div>
			
			<div>
			<h3 class="join_title">
				<label for="gbsPrice">가격: </label> 
			</h3>
				<span class="box int_name">
				<input type="text" id="gbsPrice" class="int" name="gbsPrice" value="${goods.gbsPrice}">
				</span>
			</div>
			
			<div>
			<h3 class="join_title">
				<label for="gbsDes">상세정보: </label> 
			</h3>
				<span class="box int_name">
				<input type="text" id="gbsDes" class="int" name="gbsDes" value="${goods.gbsDes}">
				</span>
			</div>

			<!-- JOIN BTN-->
			<div class="btn_area">
				<input type="submit" class="goods_submit" value="수정완료">
			</div>
		</form>
	</div>
</div>

<br />
<br />
<br />
<br />