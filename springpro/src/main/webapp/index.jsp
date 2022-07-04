<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>With.pet`</title>
<meta charset="euc-kr">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/main.css" />

</head>

<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Header -->
		<header id="header" class="alt">
			<a href="<%=request.getContextPath()%>/member/main?list_id=3" class="logo"><strong>With</strong>
				<span>. pet</span></a>
			<nav>
				<a href="#menu">Menu<i class="fa fa-bars"></i></a>
			</nav>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<ul class="links">
				<li><a href="<%=request.getContextPath()%>/member/main?list_id=3">Home</a></li>
				<li><a href="<%=request.getContextPath()%>/hotel/list">Stay</a></li>
				<li><a href="<%=request.getContextPath()%>/play/list?playid=1">Play</a></li>
				<li><a href="<%=request.getContextPath()%>/clinic/list">Care</a></li>
				<li><a href="<%=request.getContextPath()%>/board/list">Board</a></li>
				<li><a href="<%=request.getContextPath()%>/goods/list">Goods</a></li>
				<c:if test="${id ne null}">
				<li><a href="<%=request.getContextPath()%>/cart/cartlist">Cart</a></li>
				</c:if>
			</ul>
			<ul class="actions stacked">
				<c:if test="${id eq null}">
					<li><a href="<%=request.getContextPath()%>/member/loginForm"
						class="button fit">Log In</a></li>
				</c:if>
				<c:if test="${id eq 'admin'}">
					<li><a href="<%=request.getContextPath()%>/member/memberList"
						class="button primary fit">Member List</a></li>
				</c:if>
				<c:if test="${id ne null}">
					<li><a href="<%=request.getContextPath()%>/member/myPage"
						class="button primary fit">Mypage</a></li>
					<li><a href="<%=request.getContextPath()%>/member/logout"
						class="button fit">Log Out</a></li>
				</c:if>
			</ul>
		</nav>
		<video src="<%=request.getContextPath()%>/video\xodus.mp4" autoplay
			class="preview" loop muted>
			<source src="<%=request.getContextPath()%>/video\xodus.mp4"
				type="video/mp4">
		</video>
	<div class="content__2">
		<div class="content__desc" style="padding: 0px 50px 0px 0px">
			<p1>사람과 반려동물을<br>
			향한 모든 연결의 시작, 위드펫</p1>
		</div>
		<div class="content__desc2" style="padding: 0px 130px 0px 0px">
			<p4>소중한 가족과 안부를 묻고 이야기를 나눠 보세요. 여행의 편리를 돕는 다양한 기능도 준비되어 있습니다.<br>
			세상을 향해 열린 문을 ‘톡’하고 두드려 보세요.</p4>
		</div>
		<ul class="actions">
			<li><a href="<%=request.getContextPath()%>/view/single/about.jsp" class="button next scrolly"> <p2>자세히
					보기</p2>
			</a> <!-- <button class=detail type="button"><p2>자세히 보기</p2></button> -->
			</li>
		</ul>
	</div>

	<section id="searchbar" class=searchbar__section>
		<div class="searchbar__box">
			<div class="searchbar__container">
				<ul class="searchbar__menu nav nav-tabs" role="tab">
					<li class="searchbar__menu__item nav-item"><a role="tab"
						data-toggle="tab"
						href="<%=request.getContextPath()%>/member/main?list_id=1">PLAY</a></li>
					<li class="searchbar__menu__item nav-item"><a role="tab"
						data-toggle="tab"
						href="<%=request.getContextPath()%>/member/main?list_id=2">CARE</a></li>
					<li class="searchbar__menu__item nav-item"><a role="tab"
						data-toggle="tab"
						href="<%=request.getContextPath()%>/member/main?list_id=3">STAY</a></li>
				</ul>
			</div>
			<div>
				<div class="work__projects">
					<c:if test="${h_rank_list ne null}">
						<c:forEach var="hotel" items="${h_rank_list}">
							<a
								href="<%=request.getContextPath()%>/hotel/info?h_num=${hotel.h_num}"
								class="project" data-type="front-end"> <img
								src="<%=request.getContextPath()%>/img/${hotel.picture}"
								alt="Youtube" class="project__img" />
								<div class="project__description">
									<h3>${hotel.h_name}</h3>
									<span>${hotel.h_location}</span>
								</div>
							</a>
						</c:forEach>
					</c:if>
					<c:if test="${p_rank_list ne null}">
						<c:forEach var="playplace" items="${p_rank_list}">
							<a
								href="<%=request.getContextPath()%>/play/info?p_num=${playplace.p_num}"
								class="project" data-type="front-end"> <img
								src="<%=request.getContextPath()%>/img/${playplace.p_img1}"
								alt="Youtube" class="project__img" />
								<div class="project__description">
									<h3>${playplace.p_name}</h3>
									<span>${playplace.p_location}</span>
								</div>
							</a>
						</c:forEach>
					</c:if>
					<c:if test="${c_rank_list ne null}">
						<c:forEach var="clinic" items="${c_rank_list}">
							<a
								href="<%=request.getContextPath()%>/clinic/info?c_num=${clinic.c_num}"
								class="project" data-type="front-end"> <img
								src="<%=request.getContextPath()%>/img/${clinic.picture}"
								alt="Youtube" class="project__img" />
								<div class="project__description">
									<h3>${clinic.c_name}</h3>
									<span>${clinic.c_location}</span>
								</div>
							</a>
						</c:forEach>
					</c:if>
				</div>
			</div>
		</div>
	</section>


	<!-- Skills -->
	<section id="reservation_status" class="section">
		<div class="section__container">
			<!-- <h2    >Reservation</h2> -->
			<h2>Reservation & Status</h2>
			<p>
				'반려가족 휴식공간' 예약현황. 5월은 개린이의 달, 위드펫과 함께 새로운 여행을 떠나세요:)<br> 예약 현황은
				상황에 따라 변동가능함.
			</p>
			<div class="skillset">
				<div class="skillset__left">
					<h3 class="skillset__title">Status</h3>
					<div class="skill">
						<div class="skill__description">
							<span>경기</span> <span>99%</span>
						</div>
						<div class="skill__bar">
							<div class="skill__value" style="width: 99%;"></div>
						</div>
					</div>
					<div class="skill">
						<div class="skill__description">
							<span>서울</span> <span>90%</span>
						</div>
						<div class="skill__bar">
							<div class="skill__value" style="width: 90%;"></div>
						</div>
					</div>
					<div class="skill">
						<div class="skill__description">
							<span>충북</span> <span>90%</span>
						</div>
						<div class="skill__bar">
							<div class="skill__value" style="width: 90%;"></div>
						</div>
					</div>
					<div class="skill">
						<div class="skill__description">
							<span>충남</span> <span>80%</span>
						</div>
						<div class="skill__bar">
							<div class="skill__value" style="width: 80%;"></div>
						</div>
					</div>
					<div class="skill">
						<div class="skill__description">
							<span>제주</span> <span>88%</span>
						</div>
						<div class="skill__bar">
							<div class="skill__value" style="width: 88%;"></div>
						</div>
					</div>
					<div class="skill">
						<div class="skill__description">
							<span>경북</span> <span>77%</span>
						</div>
						<div class="skill__bar">
							<div class="skill__value" style="width: 77%;"></div>
						</div>
					</div>
				</div>
				<div class="skillset__right">
					<div class="tools">
						<h3 class="skillset__title">4월 최대예약 숙소</h3>
						<ul class="tools__list">
							<br>

							<li><span>스테이위드독</span></li>
							<li><span>소노펫</span></li>
							<li><span>스테이감동</span></li>
							<li><span>또자스테이</span></li>
							<li><span>제주 멍멍플레이스</span></li>
						</ul>
					</div>
					<div class="etc">
						<h3 class="skillset__title">New OPEN</h3>
						<ul class="etc__list">
							<br>
							<li><span>도그라운지&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
							<li><span>멜팅&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
							<li><span>네이처독&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Contact -->
	<section id="contact" class="section bot">
		<div class="company">
			<img src="<%=request.getContextPath()%>/img/logo_withpet.png"
				alt="logo__withpet" class="brand__logo" />

			<div>
				<p class="contact__rights">
					(유)위드펫<br /> 서울특별시 강남구 테헤란로1길 10 세경빌딩 3층 | 대표자 : ss0n9 | 사업자등록번호 :
					211-29-99102 | 통신판매업신고:제 2018-서울강남-2635호 | 개인정보담당자 :
					privacy@woohaha.co.kr <br />| 제휴문의 : partnership@woohaha.co.kr |
					고객만족센터 : loveyou@withpet.co.kr | 호스팅 제공자: 위드펫 주식회사
				</p>
			</div>
		</div>
		<div class="company__body">
			<div></div>
			<div>
				<p class="contact__bottom">
					<br /> (유)위드펫은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 상품/ 거래정보 및 거래와 관련하여
					치킨의민족에 등록된 판매자의 고의 또는 과실로 소비자에게 발생하는 손해에 대해 (유)위드펫은 책임을 지지 않습니다. 상품
					및 거래에 관하여 보다 정확한 정보는 해당 판매자에게 직접 확인하여 주시기 바랍니다. <br /> Copyright
					WOOHAHA. All Rights Reserved.
				</p>
			</div>
		</div>
	</section>

</body>
<!-- Main -->
<div id="main">
	<!-- Scripts -->
	<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.scrolly.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.scrollex.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/browser.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/breakpoints.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/util.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
	</body>
</html>