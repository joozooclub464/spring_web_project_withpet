<%@page import="dao.MemberDaoMybatis"%>
<%@page import="mybatis.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Mypage_NDversion</title>
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/img/favicon.png" />
<script src="https://kit.fontawesome.com/9eb162ac0d.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/style copy 2.css" />
<script>
	function win_delete() {
		var op = "width=1000, height=500, left=300, top=150";
		open("deleteForm?id=${member.id}", "", op);
	}
	function win_Hedit(rh_num) {
		var op = "width=1000, height=700, left=300, top=150";
		open("<%=request.getContextPath()%>/reserveHotel/editForm?rh_num="+rh_num, "", op);
	}function win_Cedit(rc_num) {
		var op = "width=1000, height=700, left=300, top=150";
		open("<%=request.getContextPath()%>
	/reserveClinic/editForm?rc_num="
				+ rc_num, "", op);
	}
</script>
<br />
<br />
<br />
<br />

<div id="home2">
	<!-- Home -->
	<section style="justify-content: center;">
		<div class="contatiner__info" style="align-content: center;">
			<div class="text">
				<h3>������ ����</h3>
			</div>
			<div class="text">
				<h4>������</h4>
				<h4>�����꿡 ����� �������� ���񽺿��� Ȱ��˴ϴ�.</h4>
			</div>
			<div style="display: flex;" class="text">
				<div>
					<img src="<%=request.getContextPath() %>/img/${member.picture}"
						class="home__avatar">
				</div>
				<div class="text_pictext">
					<span>${member.id}</span>
				</div>
			</div>

			<div class="text">
				<h4>�α��� ����</h4>
				<h4>������ �α��ο� ���Ǵ� �����Դϴ�</h4>
			</div>
			<div class="text">
				<span>${member.name}</span>
			</div>
			<div class="text">
				<span>${member.email}</span>
			</div>

			<div class="text">
				<h4>����ó ����</h4>
				<h4>����ó�� �˸��� �����ų�, ����/��й�ȣ ã��, ���� �������� ���˴ϴ�.</h4>
			</div>
			<div class="text">
				<span>${member.tel}</span>
			</div>
			<div class="text">
				<h4>������</h4>
				<h4>��Ű� �Բ��ϴ� ������ ���� �����Դϴ�.</h4>
			</div>
			<div class="text">
				<span>${member.pet_name}</span>
			</div>
			<div class="text">
				<span>${member.pet_age}</span>
			</div>
			<div>
				<a href="\springpro/member/updateForm?id=${member.id}">[����]</a> <a
					href="javascript:win_delete()">[Ż��]</a>
			</div>
		</div>
	</section>
</div>




<!-- Work -->
<section id="work" class="section__bottom">
	<div class="section__container__bottom">
		<!-- <h1>With.Pet</h1>
            <h3>Pieces</h3> -->
		<div class="work__categories">
			<a href="\springpro/reserveHotel/list">
				<button class="category__btn selected" data-filter="*">
					STAY <span class="category__count">${rhCount}</span>
				</button>
			</a> <a href="\springpro/reserveClinic/list">
				<button class="category__btn" data-filter="front-end">
					CARE <span class="category__count">${rcCount}</span>
				</button>
			</a><a href="\springpro/reserveClinic/pastList">
				<button class="category__btn" data-filter="back-end">
					HISTORY <span class="category__count">${phCount+pcCount}</span>
				</button>
			</a>
			<a href="\springpro/reserveHotel/listreview">
			<button class="category__btn" data-filter="mobile">
				REVIEW <span class="category__count">${h_rv_count}</span>
			</button>
			</a>
			<!-- ���� �ϼ��Ǹ� �߰� ���� -->
		</div>
		<table class="type09">
			<c:if test="${rhList ne null}">
				<thead>
					<tr>
						<th scope="cols">ȣ�ڸ�</th>
						<th scope="cols">��ü ����ó</th>
						<th scope="cols">��û����</th>
						<th scope="cols">�Խǳ�¥</th>
						<th scope="cols">��ǳ�¥</th>
						<th scope="cols">�������</th>
						<th scope="cols">�������</th>
					</tr>
				</thead>
			</c:if>
			<tbody>
				<c:forEach var="reserveHotel" items="${rhList}">
					<tr>
						<th scope="row">${reserveHotel.h_name}</th>
						<td>${reserveHotel.h_tel}</td>
						<td>${reserveHotel.content}</td>
						<td>${reserveHotel.s_date}</td>
						<td>${reserveHotel.e_date}</td>
						<td><a href="javascript:win_Hedit(${reserveHotel.rh_num})">����</a></td>
						<td><a
							href="\springpro/reserveHotel/cancel?rh_num=${reserveHotel.rh_num}">���</a></td>
					</tr>
				</c:forEach>
			</tbody>
			<c:if test="${rcList ne null}">
				<thead>
					<tr>
						<th scope="cols">������</th>
						<th scope="cols">���� ����ó</th>
						<th scope="cols">��û����</th>
						<th scope="cols">���೯¥</th>
						<th scope="cols">����ð�</th>
						<th scope="cols">�������</th>
						<th scope="cols">�������</th>
					</tr>
				</thead>
			</c:if>
			<tbody>
				<c:forEach var="reserveClinic" items="${rcList}">
					<tr>
						<th scope="row">${reserveClinic.c_name}</th>
						<td>${reserveClinic.c_tel}</td>
						<td>${reserveClinic.problem}</td>
						<td>${reserveClinic.date1}</td>
						<td>${reserveClinic.time1}</td>
						<td><a href="javascript:win_Cedit(${reserveClinic.rc_num})">����</a></td>
						<td><a
							href="\springpro/reserveClinic/cancel?rc_num=${reserveClinic.rc_num}">���</a></td>
					</tr>
				</c:forEach>
			</tbody>
			<c:if test="${phList ne null}">
				<thead>
					<tr>
						<th scope="cols">ȣ�ڸ�</th>
						<th scope="cols">��ü ����ó</th>
						<th scope="cols">��û����</th>
						<th scope="cols">�Խǳ�¥</th>
						<th scope="cols">��ǳ�¥</th>
					</tr>
				</thead>
			</c:if>
			<tbody>
				<c:forEach var="reserveHotel" items="${phList}">
					<tr>
						<th scope="row">${reserveHotel.h_name}</th>
						<td>${reserveHotel.h_tel}</td>
						<td>${reserveHotel.content}</td>
						<td>${reserveHotel.s_date}</td>
						<td>${reserveHotel.e_date}</td>
					</tr>
				</c:forEach>
			</tbody>
			<c:if test="${pcList ne null}">
				<thead>
					<tr>
						<th scope="cols">������</th>
						<th scope="cols">���� ����ó</th>
						<th scope="cols">��û����</th>
						<th scope="cols">���೯¥</th>
						<th scope="cols">����ð�</th>
					</tr>
				</thead>
			</c:if>
			<tbody>
				<c:forEach var="reserveClinic" items="${pcList}">
					<tr>
						<th scope="row">${reserveClinic.c_name}</th>
						<td>${reserveClinic.c_tel}</td>
						<td>${reserveClinic.problem}</td>
						<td>${reserveClinic.date1}</td>
						<td>${reserveClinic.time1}</td>
					</tr>
				</c:forEach>
			</tbody>
			<c:if test="${h_reviewList ne null}">
				<thead>
					<tr>
						<th scope="cols">ȣ�ڸ�</th>
						<th>����</th>
					</tr>
				</thead>
			</c:if>
			<tbody>
				<c:forEach var="h_review" items="${h_reviewList}">
					<tr>
						<th scope="row">${h_review.h_name}</th>
						<td>${h_review.rv_desc}</td>
					</tr>
				</c:forEach>
			</tbody>
			<c:if test="${c_reviewList ne null}">
				<thead>
					<tr>
						<th scope="cols">������</th>
						<th>����</th>
					</tr>
				</thead>
			</c:if>
			<tbody>
				<c:forEach var="c_review" items="${c_reviewList}">
					<tr>
						<th scope="row">${c_review.c_name}</th>
						<td>${c_review.rv_desc}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</section>
<br />
<br />
<br />
<br />
