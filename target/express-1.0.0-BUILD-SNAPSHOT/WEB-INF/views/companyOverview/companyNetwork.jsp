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
	<link rel="shortcut icon"  type="image/x-icon" href="<c:url value='/resources/images/favicon.ico'/>" />
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="<c:url value='/resources/js/script.js/'/>"></script>	
</head>



<!--sub 페이지 body에 "sub" 클래스 추가 --> 
<body class="<spring:message code="body.sub.css"/>">
	<div class="wrap">
		<!--GNB HEADER -->
		<!-- 현재 메뉴에 CLASS="ON"추가 (1DEPTH만)--> 
		<jsp:include page="../header.jsp" />
		
		
		<!--contents area-->
		<div id="contents" >
			<div class="cont_wrap">
				<div class="visual">
					<span>Company Overview</span>
					<img src="<c:url value='/resources/images/header/visual_1.png/'/>" >				
				</div>
				<div class="divide">
					<!--LEFT : side navigataion-->		
					<jsp:include page="companySidebar.jsp" />
					
					<!--RIGHT: contents-->
					<div class="right_cont">
						<!--section3-->
						<div class="section">
							<h2><spring:message code="submenu.network"/></h2>
							<div class="map">
								<img src="<c:url value='/resources/images/company/map.png'/>" class="bg_map">
								<div class="n_america">
									<h3>North America</h3>
									<ul>
										<li>L.A, U.S.A</li>
										<li>New York, U.S.A</li>
										<li>Chicago, U.S.A</li>
										<li>Dallas, U.S.A</li>
										<li>Vancouver, Canada</li>
										<li> Montreal, Canada</li>										
									</ul>
								</div>
								<div class="c_america">
									<h3>Central America</h3>
									<ul>
										<li>Mexico City, Mexico</li>
										<li>Monterrey, Mexico </li>
									</ul>
								</div>
								<div class="s_america">
									<h3>South America</h3>
									<ul>
										<li>Sao Paulo, Brasil</li> 
										<li>Santiago, Chile</li> 
										<li>Arica, Chile</li> 
										<li>Rima, Peru</li> 
										<li>Bogota, Colombia</li>
										<li>Lapaz, Bolivia</li>
									</ul>									 
								</div>
								<div class="europe"> 
									<h3>EUROPE </h3>
									<ul>
										 <li>Frankfurt, Germany</li>
										 <li>Hamburg, Germany</li>
										 <li>Warsaw, Poland</li>
										 <li>Paris, France</li>
										 <li>Amsterdam, Netherland</li>
										 <li>Helsinki, Filand</li>
										 <li>London, U.K</li>
										 <li> Milano, Italy</li>
										 <li> Genoa, Italy</li>
										 <li> Istanbul, Turkey</li>										
									</ul>
								</div>
								<div class="china">
									<h3>CHINA</h3>  
									<ul>
										<li>Shanghai, China</li>		
										<li>Beijing, China</li>		
										<li>Qingdao, China</li>		
										<li>Guangzhou, China</li>		
										<li> Shenzhen, China</li>		
										<li>Xiamen, china</li>		
										<li> Hongkong</li>		
									</ul>
								</div>
								<div class="india">   
									<h3>INDIA </h3>  
									<ul>
										<li> Mumbai, India</li>
										 <li> New Delhi, India</li>
										 <li> Chennai, India</li>  
									</ul>
								</div>
								<div class="asia">
									<h3> East/South ASIA </h3>  
									<ul>
										<li>Jakarta, Indonesia</li>  
										 <li>Hochiminh, Vietnam</li>  
										 <li>Hanoi, Vietnam</li>  
										 <li>Manila, Philipines</li>  
										<li> Singapore</li>  
										 <li>Yangon, Myanmar</li>  
										 <li>Bangkok, Thailand</li>  
										 <li>Taipei, China</li>  
									</ul> 
								</div>
								<div class="australia">
									<h3>Australia/ New Zealand </h3>  
									<ul>
										<li> Sydney, Austrailia</li> 
										 <li> Melbourne, Austrailia</li> 
										<li>  Auckland, Newzealand</li> 

									</ul> 
								</div>
							</div>
						</div>
						<!--//section3-->
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		<!--footer area-->
		<jsp:include page="../footer.jsp" />
		
	</div>
	
	
	
</body>
<script type="text/javascript">
	var target = "${target}";
	if(target != "default") {
		document.location.href="#"+target;
	}
</script>
</html>
