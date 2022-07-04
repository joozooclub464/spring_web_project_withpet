<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<title>RESERVATION_PAGE_ANDYversion</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/reserve_copy.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" href="C:\Users\andya\Documents\카카오톡 받은 파일\clinic\css\main.css"> -->

<script>
	function cancel(rc_num) {
		if (confirm("예약을 취소하겠습니까?")) {
			location.href = "cancel?rc_num=" + rc_num;
		}
		self.close();
	}
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
						<h1>${reserveClinic.c_name}</h1>
					</header>

					<!-- Content -->
					<div class="row">
						<div class="col-6 col-12-small andysize">
							<h3>요청사항</h3>
							<input type="hidden" name="problem"
								value="${reserveClinic.problem}">${reserveClinic.problem}<br />
							<br /> <input type="hidden" name="c_name"
								value="${reserveClinic.c_name}"> <input type="hidden"
								name="c_num" value="${reserveClinic.c_num}"> <input
								type="hidden" name="c_tel" value="${reserveClinic.c_tel}">
							<!-- <div>
                                <input type="text" placehoder="검색어 입력">
                                <button>검색</button>

                            </div> -->

							<!-- <div class="dropdown">
									<button class="dropbtn">타입</button>
									<div class="dropdown-content">
										<a href="#">항목2</a> <a href="#">항목3</a> <a href="#">항목4</a> <a
											href="#">항목5</a>
											
									</div>
								</div> -->

							<h3>예약일자</h3>
							<p>
								<input type="hidden" name="date1" value="${reserveClinic.date1}">${reserveClinic.date1}
							</p>
							<p>
								<input type="hidden" name="time1" value="${reserveClinic.time1}">${reserveClinic.time1}
							</p>


						</div>
						<div class="col-6 col-12-small">
							<input type="hidden" name="id" value="${reserveClinic.id}">
							NAME<br> <input class="box__andy" type="hidden" name="name"
								value="${reserveClinic.name}">${reserveClinic.name} <br>Pet's
							kind<br> <input type="hidden" name="pet_kind"
								value="${reserveClinic.pet_kind}">${reserveClinic.pet_kind}
							<br>Pet's name<br> <input type="hidden" name="pet_name"
								value="${reserveClinic.pet_name}">${reserveClinic.pet_name}<br>Pet's
							age<br> <input type="hidden" name="pet_age"
								value="${reserveClinic.pet_age}">${reserveClinic.pet_age}
							<br /> <br /> <br /> <br /> <a
								href="editForm?rc_num=${reserveClinic.rc_num}">예약수정</a> <a
								href="javascript:cancel('${reserveClinic.rc_num}')">예약취소</a>

						</div>

					</div>
					<hr class="major" />
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