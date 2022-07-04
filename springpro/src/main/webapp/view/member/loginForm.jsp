<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/login.css" />

    <div class="page-container">
        <div class="login-form-container shadow">
            <div class="login-form-right-side">
                <img alt="left search" src="<%=request.getContextPath()%>/img/01a976e256779.png" class="picture" />
            </div>
        </div>
    </div>

    <form action="login" method="post" class="loginForm">
        <h2>Login</h2>
        <div class="idForm">
            <input type="text" class="id" placeholder="ID" name="id" />
        </div>
        <div class="passForm">
            <input type="password" class="pw" placeholder="PW" name="pass" />
        </div>
        <button type="submit" class="btn" onclick="button()">LOG IN</button>
        <div class="bottomText">
            Don't you have ID?
            <a href="joinForm" style="color: #fe918d">sign up</a> <br />
            <br />
            <br />
        </div>
        <div style="color: gray">
            당신의 행복이 함께하는 여행, 위드펫<br />우리는 당신의 행복을 지지합니다&nbsp;&nbsp;: )
        </div>
    </form>