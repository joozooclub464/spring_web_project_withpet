<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>REVIEWLIST_PAGE_ss0n9version</title>
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
<!-- <link rel="stylesheet" href="C:\Users\andya\Documents\Ä«Ä«¿ÀÅå ¹ÞÀº ÆÄÀÏ\clinic\css\main.css"> -->
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=381b7bef7ae9fa02ccc12e081a8fa829&libraries=services,clusterer,drawing"></script>


<div class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->
		<div id="main" class="alt">
			<!-- One -->
			<section id="one">
				<div class="inner">
					<header class="major">
						<h1>${clinic.c_name}</h1>
					</header>
					<!-- Content -->
					<c:forEach var="review" items="${reviewList}">
					   <div>
					      <table class="type04">
					         <tr>
					            <th scope="row">${review.id}</th>
					            <td>${review.rv_desc}</td>
					         </tr>
					      </table>
					   </div>
					   <!-- ¸®ºä ¶ç¿öÁÖ±â  -->
					   <li>¸®ºä ³»¿ë : ${review.rv_desc}</li>
					
					</c:forEach>
					
			
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