<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>RESERVATION_PAGE_ss0n9version</title>

<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/reserve_copy.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" href="C:\Users\andya\Documents\카카오톡 받은 파일\clinic\css\main.css"> -->

<script>

$(document).ready(function() {
	$("#choose_room").change(function() {
		console.log("값 변경 테스트:"+$(this).val());
		$("#room_kind").val($(this).val());
	});
});
</script>
<div class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main" class="alt">

			<!-- One -->
			<section id="one">
				<div class="inner">
					<header class="major">
						<h1>${hotel.h_name}</h1>
					</header>

					<!-- Content -->
					<form action="reserve" name="f" method="post">
						<div class="row">
							<div class="col-6 col-12-small andysize">
								<h3>요청사항</h3>
								<input type="text" name="content"> 
								<input type="hidden" name="h_name" value="${hotel.h_name}"> 
								<input type="hidden" name="h_num" value="${hotel.h_num}"> 
								<input type="hidden" name="h_tel" value="${hotel.h_tel}">
								
								방 종류
								<select id="choose_room">
									<option>방 종류를 선택하세요</option>
									<option value="room_kind1">${hotel.room_kind1}</option>
									<option value="room_kind2">${hotel.room_kind2}</option>
									<option value="room_kind3">${hotel.room_kind3}</option>
									<option value="room_kind4">${hotel.room_kind4}</option>
									<option value="room_kind5">${hotel.room_kind5}</option>
								</select>
								<input type="hidden" id="room_kind" name="room_kind"/>
								<!-- <input type="text" name="room_kind"> -->

								<h3>예약일자</h3>
								<p>
									<input type="date" name="s_date">
								</p>
								<p>
									<input type="date" name="e_date">
								</p>


							</div>
							<div class="col-6 col-12-small">
								<input type="hidden" name="id" value="${member.id}">
									NAME<br> 
								<input class="box__andy" type="text" name="name" value="${member.name}"> 
									<br>How many people?<br>
								<input type="text" name="num"> 
									<br>Pet's kind<br>
								<input type="text" name="pet_kind" value="${member.pet_kind}">
									<br>How many pets?<br> 
								<input type="text" name="pet_num">
								<!-- 예약 후 확인 버튼이 수정, 취소 버튼으로 바뀜 -->
								<input type="submit" value="Submit">
							</div>
						</div>
					</form>
				</div>
				<hr class="major" />
			</section>
		</div>

		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
		</section>
	</div>
</div>