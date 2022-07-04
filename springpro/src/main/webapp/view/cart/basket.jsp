<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/basket.css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	
	$(function(){
			$("#btnList").click(function(){
				location.herf="<%=request.getContextPath()%>
	/goods/list";
			String
			msg = "";
			msg = "주문을 성공하였습니다.";
		});
	});
</script>


<br/>
<br/>
<br/>
<div class="ssall">
	<!--전체 장바구니 상품들-->
	<hr />
	<c:choose>
		<c:when test="${map.count==0 }">
		장바구니가 비어있습니다.
	</c:when>
		<c:otherwise>
			<form name="form1" id="form1" method="post" action="update">
<div class="work__projects">
				<c:forEach var="cart" items="${list}">
						<div class="project">
							<img src="<%=request.getContextPath()%>/img/${cart.picture}"
								class="project__img" />

							<div class="project_desc">
								<div>${cart.gbsName}</div>
								<br/>
								<div>
									<div><input type="number" style="width: 40px" name="cartStock"
										value="${cart.cartStock}" min="1"> <input
										type="hidden" name="gbsNum" value="${cart.gbsName }">
									&nbsp;
									<fmt:formatNumber pattern="###,###,###"
										value="${cart.gbsPrice * cart.cartStock}" /></div>
									<br/>
									<div><a href="delete?cartId=${cart.cartId}">삭제</a></div>
								</div>
							</div>
						</div>
					</c:forEach>
					</div>
				<input type="hidden" name="count" value="${map.count}">
			</form>
		</c:otherwise>
	</c:choose>
	<hr />
<div>
	<div>
		<!-- sum 출력  다시 만들기 -->
		장바구니 금액 합계 :
		<fmt:formatNumber pattern="###,###,###" value="${sum}" />
	</div>
</div>
	<div class="fff">
	<a href="<%=request.getContextPath()%>/goods/list">계속쇼핑하기</a> <a
		href="<%=request.getContextPath()%>/goods/list">주문하기 </a>

</div>
</div>
<br/>
<br/>
<br/>
<br/>
<!--장바구니상품 합계-->



<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>