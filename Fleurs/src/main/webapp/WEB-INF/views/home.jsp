<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Fleurs</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
	<link href="/css/style.css" rel="stylesheet" type="text/css">
	<script src="/js/jquery-3.3.1.min.js"></script>
	<script src="/js/script.js"></script>
</head>
<body>
    
	<%@include file="includes/header.jsp" %>
	
    <div class="scroll_cts">
        <div id="contents">
            <div class="today">
                <h2>Today Flower</h2>
                <a href="#"><span class="more">more</span></a>
                <ul>
                    <li><a href="#">
                        <img src="img/today/today01.jpg" width="250" alt="">    
                    </a></li>
                    <li><a href="#">
                        <img src="img/today/today02.jpg" width="250" alt="">    
                    </a></li>
                    <li><a href="#">
                        <img src="img/today/today03.jpg" width="250" alt="">    
                    </a></li>
                </ul>
            </div>
            <div class="notice">
                <h2>NOTICE</h2>
                <a href="#"><span class="more">more</span></a>
                <ul>
                    <li><a href="#">설날 연휴 안내 <span>2019-01-29</span></a></li>
                    <li><a href="#">예약주문시 10% 할인 <span>2019-01-20</span></a></li>
                    <li><a href="#">신년 맞이 탄생화 20% 할인 <span>2019-01-01</span></a></li>
                    <li><a href="#">배송 서비스 변경점 안내 <span>2018-12-17</span></a></li>
                </ul>
            </div>
        </div>
        
        <div id="birth">
            <h2>Birth Flower</h2>
            <div class="pic">
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/birth/birth01.jpg);"></div>
                        <div class="text">
                            <h3>1월 히아신스</h3>
                            <p>유희, 겸손한 사랑</p>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/birth/birth02.jpg);"></div>
                        <div class="text">
                            <h3>2월 물망초</h3>
                            <p>나를 잊지 마세요</p>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/birth/birth03.jpg);"></div>
                        <div class="text">
                            <h3>3월 데이지</h3>
                            <p>희망, 평화</p>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/birth/birth04.jpg);"></div>
                        <div class="text">
                            <h3>4월 금잔화</h3>
                            <p>겸손, 인내</p>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/birth/birth05.jpg);"></div>
                        <div class="text">
                            <h3>5월 민들레</h3>
                            <p>행복</p>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/birth/birth06.jpg);"></div>
                        <div class="text">
                            <h3>6월 장미</h3>
                            <p>애정</p>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/birth/birth07.jpg);"></div>
                        <div class="text">
                            <h3>7월 라벤더</h3>
                            <p>기대</p>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/birth/birth08.jpg);"></div>
                        <div class="text">
                            <h3>8월 해바라기</h3>
                            <p>숭배, 기다림</p>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/birth/birth09.jpg);"></div>
                        <div class="text">
                            <h3>9월 용담</h3>
                            <p>슬픈 그대가 좋아</p>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/birth/birth10.jpg);"></div>
                        <div class="text">
                            <h3>10월 국화</h3>
                            <p>당신을 사랑합니다</p>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/birth/birth11.jpg);"></div>
                        <div class="text">
                            <h3>11월 초롱꽃</h3>
                            <p>감사</p>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/birth/birth12.jpg);"></div>
                        <div class="text">
                            <h3>12월 스노우<br>플레이크</h3>
                            <p>아름다움</p>
                        </div>
                    </a>
                </article>
            </div>
        </div>
        
        <div id="cs">
            <div class="store">
                <img src="img/cs/cs01.jpg"  width="800" alt="">
                <div class="text">
                    <h3>STORE</h3>
                    <h2>매장찾기</h2>
                    <input type="text" id="search">
                    <a href="#"><p>Search</p></a>
                </div>
            </div>
            <div class="center">
                <img src="img/cs/cs02.jpg" width="800" alt="">
                <div class="text">
                    <h3>C/S CENTER</h3>
                    <h2>문의사항</h2>
                    <h4>070-111-2222</h4>
                    <a href="#"><p>MORE</p></a>
                </div>
            </div>
        </div>
        
        <div id="sns">
            <h2>SNS 둘러보기</h2>
            <div class="sns-1">
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/sns/sns01.jpg);"></div>
                        <div class="text">
                            <p>친구 생일에 꽃다발 선물!</p>
                            <strong>#생일<br>#꽃<br>#Fleurs</strong>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/sns/sns02.jpg);"></div>
                        <div class="text">
                            <p>꽃과 함께한 웨딩 사진 한장~</p>
                            <strong>#웨딩사진<br>#장미<br>#Fleurs</strong>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/sns/sns03.jpg);"></div>
                        <div class="text">
                            <p>선물 받은 꽃으로 해본 인테리어</p>
                            <strong>#꽃선물<br>#커튼<br>#Fleurs</strong>
                        </div>
                    </a>
                </article>
                <article>
                    <a href="#">
                        <div class="photo" style="background-image: url(img/sns/sns04.jpg);"></div>
                        <div class="text">
                            <p>꽃과 양초로 식탁을 화사하게~</p>
                            <strong>#꽃<br>#양초<br>#Fleurs</strong>
                        </div>
                    </a>
                </article>
            </div>
        </div>
        
        
		<%@include file="includes/footer.jsp" %>
    </div>

</body>
</html>