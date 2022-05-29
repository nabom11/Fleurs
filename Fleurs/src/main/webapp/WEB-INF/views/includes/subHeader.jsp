<%@ page contentType="text/html; charset=utf-8"     
	pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
                <li><a href="#">COMMUNITY</a>
                    <ul class="sub">
                        <li><a href="../notice/list.jsp">공지사항</a></li>
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
                <li><a href="#">COMMUNITY</a>
                    <ul class="sub">
                        <li><a href="#">공지사항</a></li>
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