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
			<p1>����� �ݷ�������<br>
			���� ��� ������ ����, ������</p1>
		</div>
		<div class="content__desc2" style="padding: 0px 130px 0px 0px">
			<p4>������ ������ �Ⱥθ� ���� �̾߱⸦ ���� ������. ������ ���� ���� �پ��� ��ɵ� �غ�Ǿ� �ֽ��ϴ�.<br>
			������ ���� ���� ���� ���塯�ϰ� �ε�� ������.</p4>
		</div>
		<ul class="actions">
			<li><a href="<%=request.getContextPath()%>/view/single/about.jsp" class="button next scrolly"> <p2>�ڼ���
					����</p2>
			</a> <!-- <button class=detail type="button"><p2>�ڼ��� ����</p2></button> -->
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
				'�ݷ����� �޽İ���' ������Ȳ. 5���� �������� ��, ������� �Բ� ���ο� ������ ��������:)<br> ���� ��Ȳ��
				��Ȳ�� ���� ����������.
			</p>
			<div class="skillset">
				<div class="skillset__left">
					<h3 class="skillset__title">Status</h3>
					<div class="skill">
						<div class="skill__description">
							<span>���</span> <span>99%</span>
						</div>
						<div class="skill__bar">
							<div class="skill__value" style="width: 99%;"></div>
						</div>
					</div>
					<div class="skill">
						<div class="skill__description">
							<span>����</span> <span>90%</span>
						</div>
						<div class="skill__bar">
							<div class="skill__value" style="width: 90%;"></div>
						</div>
					</div>
					<div class="skill">
						<div class="skill__description">
							<span>���</span> <span>90%</span>
						</div>
						<div class="skill__bar">
							<div class="skill__value" style="width: 90%;"></div>
						</div>
					</div>
					<div class="skill">
						<div class="skill__description">
							<span>�泲</span> <span>80%</span>
						</div>
						<div class="skill__bar">
							<div class="skill__value" style="width: 80%;"></div>
						</div>
					</div>
					<div class="skill">
						<div class="skill__description">
							<span>����</span> <span>88%</span>
						</div>
						<div class="skill__bar">
							<div class="skill__value" style="width: 88%;"></div>
						</div>
					</div>
					<div class="skill">
						<div class="skill__description">
							<span>���</span> <span>77%</span>
						</div>
						<div class="skill__bar">
							<div class="skill__value" style="width: 77%;"></div>
						</div>
					</div>
				</div>
				<div class="skillset__right">
					<div class="tools">
						<h3 class="skillset__title">4�� �ִ뿹�� ����</h3>
						<ul class="tools__list">
							<br>

							<li><span>���������嵶</span></li>
							<li><span>�ҳ���</span></li>
							<li><span>�����̰���</span></li>
							<li><span>���ڽ�����</span></li>
							<li><span>���� �۸��÷��̽�</span></li>
						</ul>
					</div>
					<div class="etc">
						<h3 class="skillset__title">New OPEN</h3>
						<ul class="etc__list">
							<br>
							<li><span>���׶����&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
							<li><span>����&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
							<li><span>����ó��&nbsp;&nbsp;&nbsp;&nbsp;</span></li>
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
					(��)������<br /> ����Ư���� ������ �������1�� 10 ������� 3�� | ��ǥ�� : ss0n9 | ����ڵ�Ϲ�ȣ :
					211-29-99102 | ����Ǹž��Ű�:�� 2018-���ﰭ��-2635ȣ | ������������� :
					privacy@woohaha.co.kr <br />| ���޹��� : partnership@woohaha.co.kr |
					���������� : loveyou@withpet.co.kr | ȣ���� ������: ������ �ֽ�ȸ��
				</p>
			</div>
		</div>
		<div class="company__body">
			<div></div>
			<div>
				<p class="contact__bottom">
					<br /> (��)�������� ����Ǹ��߰����̸� ����Ǹ��� ����ڰ� �ƴմϴ�. ���� ��ǰ/ �ŷ����� �� �ŷ��� �����Ͽ�
					ġŲ�ǹ����� ��ϵ� �Ǹ����� ���� �Ǵ� ���Ƿ� �Һ��ڿ��� �߻��ϴ� ���ؿ� ���� (��)�������� å���� ���� �ʽ��ϴ�. ��ǰ
					�� �ŷ��� ���Ͽ� ���� ��Ȯ�� ������ �ش� �Ǹ��ڿ��� ���� Ȯ���Ͽ� �ֽñ� �ٶ��ϴ�. <br /> Copyright
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