<%@ page contentType="text/html; charset=utf-8"     
	pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
	<link href="/css/subStyle.css" rel="stylesheet" type="text/css">
	<script src="/js/jquery-3.3.1.min.js"></script>
	<script src="/js/script.js"></script>
	<script src="/js/summernote/summernote-lite.js"></script>
	<script src="/js/summernote/lang/summernote-ko-KR.js"></script>
	<link rel="stylesheet" href="/css/summernote/summernote-lite.css">
</head>
<body>
	<header>
        <div class="logo">
            <a href="#"><img src="/img/logo.png" width="100" alt="">
            </a>
        </div>
        <nav>
            <ul class="main">
                <li><a href="#">COMPANY</a>
                    <ul class="sub">
                        <li><a href="#">회사소개</a></li>
                        <li><a href="#">회사연혁</a></li>
                        <li><a href="#">오시는길</a></li>
                    </ul>
                </li>
                <li><a href="#">PRODUCT</a></li>
                <li>COMMUNITY
                    <ul class="sub">
                        <li><a href="../notice/list">공지사항</a></li>
                        <li><a href="#">자유게시판</a></li>
                    </ul>
                </li>
                <li><a href="#">CUSTOMER</a>
                    <ul class="sub">
                        <li><a href="#">매장안내</a></li>
                        <li><a href="#">CS Center</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="nav2">
            <ul class="main">
                <li><a href="#">COMPANY</a>
                    <ul class="sub">
                        <li><a href="#">회사소개</a></li>
                        <li><a href="#">회사연혁</a></li>
                        <li><a href="#">오시는길</a></li>
                    </ul>
                </li>
                <li><a href="#">PRODUCT</a></li>
                <li>COMMUNITY
                    <ul class="sub">
                        <li><a href="../notice/list">공지사항</a></li>
                        <li><a href="#">자유게시판</a></li>
                    </ul>
                </li>
                <li><a href="#">CUSTOMER</a>
                    <ul class="sub">
                        <li><a href="#">매장안내</a></li>
                        <li><a href="#">CS Center</a></li>
                    </ul>
                </li>
            </ul>
        </div>
            <button id="menuBtn"><i class="fas fa-bars"></i></button>
    </header>
</body>
</html>