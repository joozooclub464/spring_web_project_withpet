<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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



<!-- title -->
<div class="title">
	<h3>Cafe & Playground</h3>
	<!-- <h5>���̵�� �Բ� �� �� �ִ� ���̽ü��� Ȯ���ϼ��� �ݷ����� ������, �ְ�ī�� �� �پ��� �ü��� �����帳�ϴ�.</h5> -->
</div>

<div id="banner" class="main"></div>
<c:if test="${id eq 'admin'}">
	<h3 style="text-align: right; margin-right: 50px; font-weight: bold;">
		<a href="registForm">[���̽ü� ���]</a>
	</h3>
</c:if>


<section id="searchbar" class=searchbar__section>
	<div class="searchbar__box">
		<div class="searchbar__container">
			<ul class="searchbar__menu nav nav-tabs" role="tab">
				<!-- <li class="searchbar__menu__item nav-item">���� �ϻ��� �Բ� ����ϰ� <br>���� ���� ��ġ�� �ѹ��� �˾ƺ���<br> With.Stay</li> -->
				<!-- <li class="searchbar__menu__item nav-item"><a role="tab"
					data-toggle="tab" href="list">All</a></li> -->
				<li class="searchbar__menu__item nav-item"><a role="tab"
					data-toggle="tab" href="list?playid=1">CAFE</a></li>
				<li class="searchbar__menu__item nav-item"><a role="tab"
					data-toggle="tab" href="list?playid=2">PLAY_GROUND</a></li>
				<li class="searchbar__menu__item nav-item"><a role="tab"
					data-toggle="tab" href="list?playid=3">DINING</a></li>
			</ul>
		</div>
		<div>
			<!-- list���� -->
			<h3>
				<c:if test="${playid==1}">
  				CAFE
    		</c:if>
				<c:if test="${playid==2}">
  				PLAY_GROUND
    		</c:if>
				<c:if test="${playid==3}">
  				DINING
    		</c:if>
			</h3>
			<!-- list���� -->
			<div class="work__projects">
				<c:if test="${playPlace.p_num != 0 }">
					<c:forEach var="playPlace" items="${list}">
						<a href="info?p_num=${playPlace.p_num}" class="project"
							data-type="front-end"> <img
							src="<%=request.getContextPath()%>/img/${playPlace.p_img1}"
							class="project__img" />

							<div class="project__description">
								<h3>${playPlace.p_name}</h3>
								<span>Stay with our story</span>
							</div>
						</a>
						<div class="project_desc" data-type="front-end" target="blank">
							<h3 style="text-align: left;">
								<br>${playPlace.p_name}<br> <br> <br>
							</h3>
							<h4 style="text-align: left;">${playPlace.content}<br>
							</h4>
							<ul>
								<li style="text-align: left;">��ð� : ���� 10:00 - 18:00 ����
									������ �޹�</li>
								<!-- ��ð��� ���̺� �÷� �߰��ϱ� -->
								<li>�ּ� : ${playPlace.p_location}</li>
								<li>��ȭ : ${playPlace.p_tel}</li>
								<li>�������� : ${playPlace.park == 1 ? "��������" : "�����Ұ�"}</li>
								<c:if test="${id eq 'admin'}">
									<h3
										style="text-align: right; margin-right: 50px; font-weight: bold; color: black;">
										<a class="aaaaa" href="updateForm?p_num=${playPlace.p_num}">[���̽ü�
											����]</a>
									</h3>
								</c:if>
								<c:if test="${id eq 'admin'}">
									<h3
										style="text-align: right; margin-right: 50px; font-weight: bold;">
										<a href="delete?p_num=${playPlace.p_num}">[���̽ü� ����]</a>
									</h3>
								</c:if>
							</ul>
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>

	</div>
</section>



