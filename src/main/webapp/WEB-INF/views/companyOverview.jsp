<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>MNC INTERNATIONAL </title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/style.css'/>" />
	<!--[if lt IE 9]><script src="../../js/www/library_iehtml5css3.js"></script><![endif]-->
	
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="<c:url value='/resources/js/script.js/'/>"></script>	
</head>



<!--sub 페이지 body에 "sub" 클래스 추가 --> 
<body class="<spring:message code="body.sub.css"/>">
	<div class="wrap">
		<!--GNB HEADER -->
		<!-- 현재 메뉴에 CLASS="ON"추가 (1DEPTH만)--> 
		<jsp:include page="header.jsp" />
		
		<!--contents area-->
		<div id="contents" >
			<!--side navigataion-->		
			<nav id="side_nav">
				<h2><spring:message code="menu.overview"/></h2>
				<ul>
					<li>
						<a href="#about" data-number="1">
							<span class="cd-dot"></span>
							<span class="cd-label"><spring:message code="submenu.info"/></span>
						</a>
					</li>
					<li>
						<a href="#orgchart" data-number="2">
							<span class="cd-dot"></span>
							<span class="cd-label"><spring:message code="submenu.chart"/></span>
						</a>
					</li>
					<li>
						<a href="#global" data-number="3">
							<span class="cd-dot"></span>
							<span class="cd-label"><spring:message code="submenu.network"/></span>
						</a>
					</li>
					<li>
						<a href="#location" data-number="4">
							<span class="cd-dot"></span>
							<span class="cd-label"><spring:message code="submenu.location"/></span>
						</a>
					</li>				
				</ul>
			</nav>
		
			<!--section1-->
			<div class="section" id="about">
				<h2>기엉일반정보<spring:message code="submenu.info"/></h2>
				<table class="aboutmnc">
					<colgroup>
						<col width="30%">
						<col width="70%">
					</colgroup>
					
					<tbody>
						<tr>
							<th><spring:message code="overview.key.name"/></th>
							<td><spring:message code="overview.info.name"/></td>
						</tr>
						<tr>
							<th><spring:message code="overview.key.ceo"/></th>
							<td><spring:message code="overview.info.ceo"/></td>
						</tr>
						<tr>
							<th><spring:message code="overview.key.establish"/></th>
							<td><spring:message code="overview.info.establish"/></td>
						</tr>
						<tr>
							<th><spring:message code="overview.key.capital"/></th>
							<td><spring:message code="overview.info.capital"/></td>
						</tr>
						<tr>
							<th><spring:message code="overview.key.employee"/></th>
							<td><spring:message code="overview.info.employee"/></td>
						</tr>
					</tbody>					
				</table>				
			</div>
			<!--section2-->
			<div class="section" id="orgchart">
				<h2><spring:message code="submenu.chart"/></h2>
				<div class="orgchart">
					<label>CEO</label>
					<ul>
						<li>
							<span>사업1부</span>
							<ul>
								<li><span>해운사업팀</span></li>
								<li><span>항공사업팀</span></li>
							</ul>
						</li>
						<li>
							<span>사업2부</span>
							<ul>
								<li><span>선용품팀</span></li>
								<li><span>인천공항사무소</span></li>
							</ul>
						</li>
						<li>
							<span>사업3부</span>
							<ul>
								<li><span>특송팀</span></li>
								<li><span>L.A 지사</span></li>
							</ul>
						</li>
						<li>
							<span>사업4부</span>
							<ul>
								<li><span>경영지원팀</span></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<!--section3-->
			<div class="section" id="global">
				<h2><spring:message code="submenu.network"/></h2>
				<div class="map">
					<img src="<c:url value='/resources/images/company/map.png'/>" class="bg_map">
					<div class="n_america">
						<h3>North America</h3>
						<ul>
							<li>MNC L.A</li>
							<li>MNC New York </li>
							<li>Transgroup </li>
							<li>TPL</li>
							<li>BNX</li>
							<li>CNC USA </li>
						</ul>
					</div>
					<div class="c_america">
						<h3>Central America</h3>
						<ul>
							<li>CNC Mexico</li>
						</ul>
					</div>
					<div class="s_america">
						<h3>South America</h3>
						<ul>
							<li>SUNTRANS BRASIL</li> 
							<li>INFINITY</li> 
							<li>CNC CHILE</li> 
							<li>CNC PERU</li> 
						</ul>
					</div>
					<div class="europe"> 
						<h3>EUROPE </h3>
						<ul>
							<li>EUKO LOGIS</li> 
							<li>WGL Poland</li> 
							<li>NADO</li> 
							<li>ABC LOGIS</li>   
							<li>ALPHA GLOBAL</li>   
							<li>AIF Europe</li>  
						</ul>
					</div>
					<div class="china">
						<h3>CHINA</h3>  
						<ul>
							<li>MNC China</li> 
							<li>KING FREIGHT</li> 
							<li>KORCHINA</li> 
							<li>PANAKOR</li>   
							<li>TRANSTAR</li>
						</ul>
					</div>
					<div class="india">   
						<h3>INDIA </h3>  
						<ul>
							<li>EAST-WEST FREIGHT</li> 
							<li>GORDON</li> 
							<li>PDP INT'L</li> 
							<li>TRANS ASIA</li>   
						</ul>
					</div>
					<div class="asia">
						<h3> East/South ASIA </h3>  
						<ul>
							<li>SPL LOGISTICS</li> 
							<li>KORNET</li> 
							<li>BESCON</li> 
							<li>ZIMMOAH</li>   
							<li>STREAMLINE</li>   
						</ul> 
					</div>
					<div class="australia">
						<h3>Australia/ New Zealand </h3>  
						<ul>
							<li>PNL AUSTRAILIA</li> 
							<li>DAMCO AUSTRAILIA</li> 
						</ul> 
					</div>
				</div>
			</div>
			<div class="section" id="location">
				<h2><spring:message code="submenu.location"/></h2>
				<div class="googlemap">
					<iframe src="<c:url value='/view/googlemap/'/>" class="mapFrame"></iframe>
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
	
	
	
</body>
<!-- <script type="text/javascript">
	var target = "${target}";
	if(target != "default") {
		document.location.href="#"+target;
	}
</script> -->
</html>
