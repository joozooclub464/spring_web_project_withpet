<%@page import="dao.MemberDaoMybatis"%>
<%@page import="mybatis.Member"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/change_pw.css" />
<script type="text/javascript">
function inchk(f){
	if(f.chgpass.value != f.chgpass2.value){
		alert("���� ��й�ȣ�� ���Է��� �ٸ��ϴ�.");
		f.chgpass2.value="";
		f.chgpass2.focus();
		return false;
	}
	return true;
}
</script>

<div class="page-container">
        <div class="login-form-container shadow">
            <div class="login-form-right-side">
                <img alt="left search" src="<%=request.getContextPath() %>/img/4c3f4b754e167.jpg" class="picture" />
            </div>
        </div>
    </div>

    <form action="login.jsp" method="post" class="loginForm">
        <h2>Change PASSWORD</h2>
        <div class="idForm">
            <input type="password" class="pw" placeholder="Current PASSWORD" name="id" />
        </div>
        <div class="passForm">
            <input type="password" class="pw" placeholder="New PASSWORD" name="pass" />
        </div>
        <div class="passForm">
            <input type="password" class="pw" placeholder="New PASSWORD" name="pass" />
        </div>
        <button type="submit" class="btn" onclick="button()">Change</button>
        <div class="bottomText">
            Don't you wanna STAY?
            <a href="joinForm.html" style="color: #fe918d"></a> <br />
            <br />
            <br />
        </div>
        <div style="color: gray">
            ����� �ູ�� �Բ��ϴ� ����, ������<br />�츮�� ����� �ູ�� �����մϴ�&nbsp;&nbsp;: )
            <br />
            <br />
        </div>
    </form>