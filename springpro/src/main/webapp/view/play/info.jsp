<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/playpet.css" />
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9ce7b45f5d2c8595e8ff85665c67a774&libraries=services,clusterer,drawing"></script>



<!-- ��Ӵٿ� css -->
<script src="<%=request.getContextPath()%>/assets/js/playpet.js" defer></script>
<style>
.cafecon {
	display: table;
	margin-left: auto;
	margin-right: auto;
}
</style>

<!-- Banner -->
<section id="banner" class="major inner2">
	<div class="inner">
		<header class="major">
			<h1>${playPlace.p_name}</h1>
		</header>
		<div class="content">
			<p>${playPlace.content}</p>
		</div>
	</div>
</section>
<!-- <div class="box"> -->
<br>
<br>
<br>
<br>
<br>
<div class="container scrollmenu">
	<div class="item1">
		<img id="image-container"
			src="<%=request.getContextPath()%>/img/${playPlace.p_img1}" alt="" />
	</div>
	<div class="item2">
		<img id="image-container"
			src="<%=request.getContextPath()%>/img/${playPlace.p_img2}" alt="" />
	</div>

	<div class="item3">
		<img id="image-container"
			src="<%=request.getContextPath()%>/img/${playPlace.p_img3}" alt="" />
	</div>
	<div class="item4">
		<img id="image-container"
			src="<%=request.getContextPath()%>/img/${playPlace.p_img4}" alt="" />
	</div>

	<div class="item5">
		<img id="image-container"
			src="<%=request.getContextPath()%>/img/${playPlace.p_img5}" alt="" />
	</div>
	<div class="item6">
		<img id="image-container"
			src="<%=request.getContextPath()%>/img/${playPlace.p_img6}" alt="" />
	</div>
</div>


<div class="mapinfo" style="display: flex; flex-direction: row">
	<div>
		<div id="map" style="width: 400px; height: 400px; margin-right: 15px"></div>
		<script>
			var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
			mapOption = {
				center : new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
				level : 3
			// ������ Ȯ�� ����
			};

			// ������ �����մϴ�    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
			var geocoder = new kakao.maps.services.Geocoder();

			// �ּҷ� ��ǥ�� �˻��մϴ�
			geocoder
					.addressSearch(
							'${playPlace.p_location}',
							function(result, status) {

								// ���������� �˻��� �Ϸ������ 
								if (status === kakao.maps.services.Status.OK) {

									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);

									// ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});

									// ����������� ��ҿ� ���� ������ ǥ���մϴ�
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : '<div style="width:150px;text-align:center;padding:6px 0;">${playPlace.p_name}</div>'
											});
									infowindow.open(map, marker);

									// ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
									map.setCenter(coords);
								}
							});
		</script>
	</div>
	<div class="info">
		<ul>
			<li>��ġ : ${playPlace.p_location}</li>
			<li>��ȭ : ${playPlace.p_tel}</li>
			<li>�������� : ${playPlace.park == 1 ? "��������" : "�����Ұ�"}</li>
			<li>�̿�� : ����</li>
			<li>��Ⱓ : ${playPlace.open_hour}</li>
			<li>���ǻ���</li>
			<li></li>
		</ul>
	</div>

</div>
<!-- </div> -->
<br />
<br />
<br />
<br />

