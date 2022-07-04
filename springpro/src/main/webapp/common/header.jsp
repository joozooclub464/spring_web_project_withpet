<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap" rel="stylesheet" />
    <title>Nav bar</title>
    <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
    <script src="<%=request.getContextPath()%>/assets/js/main.js" defer></script>
</head>

<body>
    <!-- Nav container -->
    <nav class="navbar">
        <!-- Logo with text -->
        <div class="navbar__logo">
            <i class="fab fa-accusoft"></i>
            <a href="<%=request.getContextPath()%>/member/main?list_id=3">WITH.PET</a>
        </div>

        <!-- Menu -->
        <ul class="navbar__menu">
            <li><a href="<%=request.getContextPath()%>/member/main?list_id=3">Home</a></li>
            <li><a href="<%=request.getContextPath() %>/view/single/about.jsp">Contact</a></li>
            <li><a href="<%=request.getContextPath()%>/hotel/list">Stay</a></li>
            <li><a href="<%=request.getContextPath()%>/play/list?playid=1">Play</a></li>
            <li><a href="<%=request.getContextPath()%>/clinic/list">Care</a></li>
            <li><a href="<%=request.getContextPath()%>/board/list">Board</a></li>
            <li><a href="<%=request.getContextPath()%>/goods/list">Goods</a></li>            
        </ul>
        <!-- Icons -->
        <ul class="navbar__icons">
            <li><i class="fab fa-twitter"></i></li>
            <li><i class="fab fa-facebook-f"></i></li>
        </ul>
        <!-- Toggle button -->
        <a href="#" class="navbar__toggleBtn">
            <i class="fas fa-bars"></i>
        </a>
    </nav>