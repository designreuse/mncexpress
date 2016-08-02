<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>MNC INTERNATIONAL </title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/style.css'/>" />
<%-- 	<link rel="stylesheet" type="text/css" href="<c:url value=""/>/resources/css/style.css"> --%>
	<!--[if lt IE 9]><script src="../../js/www/library_iehtml5css3.js"></script><![endif]-->
	
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="<c:url value='/resources/js/script.js/'/>"></script>	
</head>

<script type="text/javascript">
	/* 환율정보를 받아옴 */
	$.getJSON("/crawring", {
	},function (data) {
		setExchange(data);
	});
	
	/* 받아온 환율 값을 적용하는 함수 */
	function setExchange(data) {
		var keys = Object.keys(data);
		for(var i in keys) {
			$("#exchange_"+keys[i]).text(data[keys[i]]);
		}
	}
</script>

<body class="<spring:message code="body.css"/>">
	<div class="wrap">
		<!--GNB HEADER -->
		<jsp:include page="header.jsp" />
		
		<!--contents area-->
		<div id="contents">
			<div class="main_visual">
				<video autoplay="autoplay" muted="muted" preload="auto" loop="loop" poster="video.jpg" style="display:none">
				  <source src="<c:url value='/resources/images/main.mp4/'/>" type="video/mp4">
				</video>		
				<div class="bg_slider">
					<div class="bg-slider__item" style="background-image: url(<c:url value='/resources/images/slide/slide01.jpg'/>);"></div>
					<div class="bg-slider__item" style="background-image: url(<c:url value='/resources/images/slide/slide02.jpg'/>);"></div>
					<div class="bg-slider__item" style="background-image: url(<c:url value='/resources/images/slide/slide03.jpg'/>);"></div>      
					<div class="bg-slider__item" style="background-image: url(<c:url value='/resources/images/slide/slide04.jpg'/>);"></div>
					<div class="bg-slider__item" style="background-image: url(<c:url value='/resources/images/slide/slide05.jpg'/>);"></div>							 
				</div>		
			</div>
			<!--cargo area--> 
			<div class="cargo">
				<h2 class="tit_c">CARGO CAMPUS</h2>
				<ul>
					<li>
						<a href="http://cargo.koreanair.com/kor/InterNet/campus/campus_terminal01.jsp?menu1=m1&menu2=m01-0" target="_blank">
							<img src="<c:url value='/resources/images/icon/airfreight.png/'/>" alt="Airfreight">
							<span>Airfreight</span>
						</a>
					</li>
					<li>
						<a href="http://www.hanjin.com/hanjin/CUP_HOM_1160.do?sessLocale=ko"  target="_blank">
							<img src="<c:url value='/resources/images/icon/seafreight.png/'/>" alt="seafreight">
							<span>seafreight</span>
						</a>
					</li>
				</ul>
			</div>			
			<!--exchange area--> 
			<div class="exchange">
				<h2 class="tit_c"><spring:message code="index.rate"/></h2>
				<ul>
					<li>
						<img src="<c:url value='/resources/images/nation/usd.png/'/>" alt="USD">
						<label><spring:message code="index.USD"/></label>
						<span id="exchange_USD">Loading..</span>						
					</li>       
					<li>
						<img src="<c:url value='/resources/images/nation/jpy.png/'/>" alt="JPY">
						<label><spring:message code="index.JPY"/></label>
						<span id="exchange_JPY">Loading..</span>						
					</li>
					<li>
						<img src="<c:url value='/resources/images/nation/cny.png/'/>" alt="CNY">
						<label><spring:message code="index.CNY"/></label>
						<span id="exchange_CNY">Loading..</span>						
					</li>
					<li>
						<img src="<c:url value='/resources/images/nation/eur.png/'/>" alt="EUR">
						<label><spring:message code="index.EUR"/></label>
						<span id="exchange_EUR">Loading..</span>						
					</li>
					<li>
						<img src="<c:url value='/resources/images/nation/vnd.png/'/>" alt="VND">
						<label><spring:message code="index.VND"/></label>
						<span id="exchange_VND">Loading..</span>						
					</li>
					<li>
						<img src="<c:url value='/resources/images/nation/hkd.png/'/>" alt="HKD">
						<label><spring:message code="index.HKD"/></label>
						<span id="exchange_HKD">Loading..</span>						
					</li>
				</ul>
				<div class="updateinfo">
					<span id="time">Loading...</span>
					<a href="http://fx.keb.co.kr/FER1101C.web" class="more" title="더보기"  target="_blank"><span>+MORE</span></a>
				</div>
			</div>
		</div>
		
		<!--footer area-->
		<div id="footer">
			<div class="footer_wrap">
				<div class="pos_left">
					<p class="located">LOHAS Tower 48, Wausan-ro, Mapo-gu, Seoul, Korea (Zip Code:04068)</p>
					<p class="copyright">Copyright © 2016 MNC International Co., Ltd. All rights reserved.</p>
				</div>
				<div class="pos_right">
					<a class="sendemail" href="mailto:someone@yoursite.com">MAIL TO WEBMASTER</a>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	
	var date = new Date();

	
	var now = date.getFullYear()+'.'+(date.getMonth()+1)+'.'+date.getDate()+' '
			+date.getHours()+':'+date.getMinutes();
	$('#time').text(now);
	</script>
	
	
</body>
</html>
