<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>RESERVATION_PAGE_ss0n9version</title>

<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/reserve_copy.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" href="C:\Users\andya\Documents\īī���� ���� ����\clinic\css\main.css"> -->

<script>
$(document).ready(function() {
	$("#choose_room").change(function() {
		console.log("�� ���� �׽�Ʈ:"+$(this).val());
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
						<h1>${reserveHotel.h_name}</h1>
					</header>

					<!-- Content -->
					<form action="edit" name="f" method="post">
						<div class="row">
							<div class="col-6 col-12-small andysize">
								<h3>��û����</h3>
								<input type="text" name="content" value="${reserveHotel.content}"> 
								<input type="hidden" name="rh_num" value="${reserveHotel.rh_num}">
								<input type="hidden" name="h_name" value="${reserveHotel.h_name}">
								<input type="hidden" name="h_num" value="${reserveHotel.h_num}">
								<input type="hidden" name="h_tel" value="${reserveHotel.h_tel}">
								<!-- <div>
                                <input type="text" placehoder="�˻��� �Է�">
                                <button>�˻�</button>
 								</div> -->

								�� ���� 
								<select id="choose_room">
									<option>���ѻ�� ������ ���̴� �� �����Դϴ�</option>
									<option value="room_kind1">${hotel.room_kind1}</option>
									<option value="room_kind2">${hotel.room_kind2}</option>
									<option value="room_kind3">${hotel.room_kind3}</option>
									<option value="room_kind4">${hotel.room_kind4}</option>
									<option value="room_kind5">${hotel.room_kind5}</option>
								</select>
								<input type="hidden" id="room_kind" name="room_kind"/>
								<!-- �Ʒ� ��ǲ�� ���� �ִ� �ڵ� -->
								<%-- <input type="text" name="room_kind" value="${reserveHotel.room_kind}"> --%>
								<input type="text" name="room_kind_before" readonly value="${reserveHotel.room_kind}">
								
								<!-- ������------------------------------------------------------------- -->
								<!-- ����� -->
								<%-- <%! String room_value = ""; %> --%>
								<!-- ��ũ���� -->
								<%-- <% 
									/* if ( ${reserveHotel.room_kind} eq "room_kind1") {
										room_value= ${hotel.room_kind1} ;
									} */

								%> --%>
								<!-- ��º� -->
									<%-- <c:choose>
										<c:when test="${reserveHotel.room_kind eq 'room_kind1'}">
											value=${hotel.room_kind1}
										</c:when>
										<c:when test="${reserveHotel.room_kind eq 'room_kind2'}">
											value=${hotel.room_kind2}
										</c:when>
										<c:when test="${reserveHotel.room_kind eq 'room_kind3'}">
											value=${hotel.room_kind3}
										</c:when>
										<c:when test="${reserveHotel.room_kind eq 'room_kind4'}">
											value=${hotel.room_kind4}
										</c:when>
										<c:otherwise>
											value=${hotel.room_kind5}
										</c:otherwise>
									</c:choose> --%>
 								<!-- ������------------------------------------------------------------- -->

								<h3>��������</h3>
								<p>
									<input type="date" name="s_date" value="${reserveHotel.s_date}">
								</p>
								<p>
									<input type="date" name="e_date" value="${reserveHotel.e_date}">
								</p>


							</div>
							<div class="col-6 col-12-small">
								<input type="hidden" name="id" value="${reserveHotel.id}">
								NAME<br> 
								<input class="box__andy" type="hidden" name="name" value="${reserveHotel.name}">
									${reserveHotel.name} <br>How many people?<br> 
								<input type="text" name="num" value="${reserveHotel.num}"> 
									<br>Pet's kind<br>
								<input type="text" name="pet_kind" value="${reserveHotel.pet_kind}"> 
									<br>How many pets?<br> 
								<input type="text" name="pet_num" value="${reserveHotel.pet_num}">
								<!-- ���� �� Ȯ�� ��ư�� ����, ��� ��ư���� �ٲ� -->
								<input type="submit" value="Submit">

							</div>
						</div>
					</form>
				</div>
				</section>
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
		
	</div>
</div>