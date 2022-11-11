<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
   href="<%=request.getContextPath()%>/assets/css/hotel_info.css" />
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=&libraries=services,clusterer,drawing"></script>

<body class="bodysize">
   <div style="text-align: center;">
      <img src="<%=request.getContextPath()%>/img/${clinic.picture}"
         class="andytest" />
   </div>
   <section id="searchbar" class=searchbar__section>
      <div class="searchbar__box">
         <div class="searchbar__container" style="border: 1px solid black;">
            <ul class="searchbar__menu nav nav-tabs" role="tab">
               <li class="searchbar__menu__item nav-item">
               <a href="\springpro/member/main?list_id=3">HOME</a></li>
               <li class="searchbar__menu__item nav-item">
               <a href="\springpro/reserveClinic/reviewform?c_num=${clinic.c_num}"
                  onclick="window.open(this.href, '', 'width=1000, height=1000, left=300, top=150'); return false;">REVIEW</a></li>
               <li class="searchbar__menu__item nav-item">
               <a href="\springpro/reserveClinic/reserveForm?c_num=${clinic.c_num}"
                  onclick="window.open(this.href, '', 'width=1000, height=1000, left=300, top=150'); return false;">BOOKINGS</a></li>
               <li class="searchbar__menu__item nav-item">
               <%-- <a href="\springpro/reserveClinic/reviewList?c_num=${clinic.c_num}"
                  onclick="window.open(this.href, '', 'width=1000, height=1000, left=300, top=150'); return false;">REVIEW LIST</a></li> --%>
            </ul>
         </div>
	
         <div>
            <div class="work__projects">
			<!-- 키워드로 장소 검색하기 헤더정보 추가 -->
               <a href="" class="project" target="" data-type="">
                  <div id="map" style="width: 420px; height: 350px;"></div> 
                  <script>
                            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                            mapOption = {
                                center : new kakao.maps.LatLng(37.5601273,
                                		126.8187133), // 지도의 중심좌표
                                level : 3
                            // 지도의 확대 레벨
                            };

                            // 지도를 생성합니다    
                            var map = new kakao.maps.Map(mapContainer,
                                    mapOption);

                            // 주소-좌표 변환 객체를 생성합니다
                            var geocoder = new kakao.maps.services.Geocoder();

                            // 주소로 좌표를 검색합니다
                            geocoder
                                    .addressSearch(
                                            '${clinic.c_location}',
                                            function (result, status) {

                                                // 정상적으로 검색이 완료됐으면 
                                                if (status === kakao.maps.services.Status.OK) {

                                                    var coords = new kakao.maps.LatLng(
                                                            result[0].y,
                                                            result[0].x);

                                                    // 결과값으로 받은 위치를 마커로 표시합니다
                                                    var marker = new kakao.maps.Marker(
                                                            {
                                                                map : map,
                                                                position : coords
                                                            });

                                                    // 인포윈도우로 장소에 대한 설명을 표시합니다
                                                    var infowindow = new kakao.maps.InfoWindow(
                                                            {
                                                                content : '<div style="width:150px;text-align:center;padding:6px 0;">${clinic.c_name}</div>'
                                                            });
                                                    infowindow
                                                            .open(map, marker);

                                                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                                                    map.setCenter(coords);
                                                }
                                            });
                        </script> 
                        
                
               </a> <a class="project_desc" data-type="front-end" target="blank">
                  <!-- <img class="project__img" src="img/a1.JPG" alt="navbar" /> -->
                  <h3 style="text-align: left; margin-left: -30px;">
                     <br>${clinic.c_name}<br> <br>
                  </h3>
                  <ul>
                     <li style="text-align: left; margin-left: -30px;">병원 위치:
                        ${clinic.c_location}</li>
                     <li style="text-align: left; margin-left: -30px;">병원 전화 번호:
                        ${clinic.c_tel}</li>
                     <li style="text-align: left; margin-left: -30px;">${clinic.park==1?'주차 가능':'주차 불가능'}</li>
                     <li style="text-align: left; margin-left: -30px;">${clinic.reserve==1?'예약 가능':'예약 불가능'}</li>
                     <li style="text-align: left; margin-left: -30px;">운영시간: ${clinic.open_hour}</li>
                     <li style="text-align: left; margin-left: -30px;">진료 가능 동물 종류 : ${clinic.pet_kind}</li>
                  </ul>
               </a>
            </div>
         </div>
      </div>

   </section>
</body>
<c:forEach var="review" items="${review}">

   <div>
      <table class="type04">
         <tr>
            <th scope="row">${review.id}</th>
            <td>${review.rv_desc}</td>
         </tr>
      </table>
   </div>
   <!-- 리뷰 띄워주기  -->
   <li>리뷰 내용 : ${review.rv_desc}</li>

</c:forEach>
<br />
<br />
<br />
<br />
