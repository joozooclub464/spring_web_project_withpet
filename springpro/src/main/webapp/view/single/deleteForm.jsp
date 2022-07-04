<%@page import="dao.MemberDaoMybatis"%>
<%@page import="mybatis.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/delete_2.css" />
    
<div class="page-container">
        <div class="login-form-container shadow">
            <div class="login-form-right-side">
                <img alt="left search" src="<%=request.getContextPath()%>/img/4c3f4b754e167.jpg" class="picture" />
            </div>
        </div>
    </div>

    <form action="delete" method="post" class="loginForm">
        <h2>Good Bye WITH.PET</h2>
        <div class="idForm">
            <input type="hidden" class="id" value="${id} name="id" />${id}
        </div>
        <div class="passForm">
            <input type="password" class="pw" placeholder="password" name="pass" />
        </div>
        <input type="submit" class="btn" value="Drop Out">
        <div class="bottomText">
            <a href="main" style="color: #fe918d">Do you want to STAY?</a> <br />
            <br />
            <br />
        </div>
        <div style="color: gray">
            당신의 행복이 함께하는 여행, 위드펫<br />우리는 당신의 행복을 지지합니다&nbsp;&nbsp;: )
            <br />
        </div>
    </form>