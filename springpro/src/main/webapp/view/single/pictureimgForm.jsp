<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- /WebContent/chap08_member/pictureimgForm.jsp --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 사진 등록</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/main.css" >
</head>
<body>
<h3>업로드</h3>
<form action="pictureimg" method="post"  name="upform"
enctype="multipart/form-data">
<input type="hidden" name="pic" id="pic+${pic}" value="${pic}">
  <input type="file" name="uploadpic">
  <input type="submit" value="사진등록">
</form>
</body>
</html>