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
    

<body class="<spring:message code="body.sub.css"/>">
	<div class="wrap">
		<!--GNB HEADER -->
		<!-- 현재 메뉴에 CLASS="ON"추가 (1DEPTH만)--> 
		<jsp:include page="../header.jsp" />
		
		
		
		<!--contents area-->
		<div id="contents" >
			<div class="cont_wrap">
				<div class="visual">
					<span>Service and Solutions</span>
					<img src="<c:url value='/resources/images/header/visual_2.png/'/>" >			
				</div>
				<div class="divide">
					<!--LEFT : side navigataion-->		
					<jsp:include page="serviceSidebar.jsp" />	
					
					<!--RIGHT: contents-->
					<div class="right_cont">
						<!--section1-->
						<div class="section" id="seafreight">
							<h2><spring:message code="service.sea0"/></h2>
							<div class="image_text">
								<div class="img_area">
									<img src="<c:url value='/resources/images/service/sea.jpg/'/>" >	
								</div>
								<p>
									<spring:message code="service.sea1"/>
								</p>								
							</div>
							<div class="detail_text">
								<ul>									
									<spring:message code="service.sea2"/>
								</ul>
							</div>
						</div>
						<!--//section1-->
					</div>
				</div>
			</div>
		</div>
		<!-- //contents area-->
		
		<!--footer area-->
		<jsp:include page="../footer.jsp" />
		
	</div>
</body>

</html>
