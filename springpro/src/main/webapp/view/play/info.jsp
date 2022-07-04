<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/playpet.css" />
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9ce7b45f5d2c8595e8ff85665c67a774&libraries=services,clusterer,drawing"></script>



<!-- 드롭다운 css -->
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
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();

			// 주소로 좌표를 검색합니다
			geocoder
					.addressSearch(
							'${playPlace.p_location}',
							function(result, status) {

								// 정상적으로 검색이 완료됐으면 
								if (status === kakao.maps.services.Status.OK) {

									var coords = new kakao.maps.LatLng(
											result[0].y, result[0].x);

									// 결과값으로 받은 위치를 마커로 표시합니다
									var marker = new kakao.maps.Marker({
										map : map,
										position : coords
									});

									// 인포윈도우로 장소에 대한 설명을 표시합니다
									var infowindow = new kakao.maps.InfoWindow(
											{
												content : '<div style="width:150px;text-align:center;padding:6px 0;">${playPlace.p_name}</div>'
											});
									infowindow.open(map, marker);

									// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
									map.setCenter(coords);
								}
							});
		</script>
	</div>
	<div class="info">
		<ul>
			<li>위치 : ${playPlace.p_location}</li>
			<li>전화 : ${playPlace.p_tel}</li>
			<li>주차여부 : ${playPlace.park == 1 ? "주차가능" : "주차불가"}</li>
			<li>이용료 : 무료</li>
			<li>운영기간 : ${playPlace.open_hour}</li>
			<li>유의사항</li>
			<li></li>
		</ul>
	</div>

</div>
<!-- </div> -->
<br />
<br />
<br />
<br />

