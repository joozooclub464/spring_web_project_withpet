<%@page import="dao.ClinicDaoMybatis"%>
<%@page import="mybatis.Clinic"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/playpet copy.css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- ��Ӵٿ� css -->
<script src="playpet.js" defer></script>
<style>
.cafecon {
	display: table;
	margin-left: auto;
	margin-right: auto;
}
</style>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9ce7b45f5d2c8595e8ff85665c67a774&libraries=services,clusterer,drawing"></script>

<br />
<br />
<div>
	<c:if test="${id eq 'admin'}">
		<h3 style="text-align: right; margin-right: 50px; font-weight: bold;">
			<a href="registForm">[���� ���]</a>
		</h3>
	</c:if>
</div>

<br />

<div class="title">
	<h2 style="text-align: center;">Care your pets here</h2>
</div>

<br />
<br />

<c:forEach var="clinic" items="${list}">
	<div class="work__projects">

		<a href="info?c_num=${clinic.c_num}" class="project"
			data-type="front-end"> <img
			src="<%=request.getContextPath()%>/img/${clinic.picture}"
			width=380px height=350px alt="Youtube" class="project__img" />
			<div class="project__description">
				<h3>${clinic.c_name}</h3>
				<span>Cure your pets here</span>
			</div>
		</a> <a class="project_desc" data-type="front-end" target="blank">
			<h3 style="text-align: left;">
				<br>${clinic.c_name}<br> <br> <br>
			</h3>
			<ul>
				<li style="text-align: left;">${clinic.c_location}</li>
				<li>${clinic.c_tel}</li>
				<li>${clinic.park==1?"��������":"���� �Ұ���"}</li>
				<li>${clinic.reserve==1?"���డ��":"���� �Ұ���"}</li>
				<li>���� ���� ����: ${clinic.pet_kind}</li>
			</ul>
		</a>
		<div>
			<c:if test="${id eq 'admin'}">
				<h3
					style="text-align: right; margin-right: 50px; font-weight: bold;">
					<a href="updateForm?c_num=${clinic.c_num}">[���� ����]</a> <a
						href="delete?c_num=${clinic.c_num}">[���� ����]</a>
				</h3>
			</c:if>
		</div>
	</div>
</c:forEach>
<br />
<br />
<br />
<br />
