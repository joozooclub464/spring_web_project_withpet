<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- /WebContent/chap08_member/pictureimgForm.jsp --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ���� ���</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" >
</head>
<body>
<h3>���ε�</h3>
<form action="pictureimg" method="post"  name="upform"
enctype="multipart/form-data">
<input type="hidden" name="pic" id="pic+${pic}" value="${pic}">
  <input type="file" name="uploadpic">
  <input type="submit" value="�������">
</form>
</body>
</html>