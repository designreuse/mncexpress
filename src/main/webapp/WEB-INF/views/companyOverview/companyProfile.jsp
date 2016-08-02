<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>MNC INTERNATIONAL information</title>
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
			<!--cont_wrap-->
			<div class="cont_wrap">
				
				<!--visual-->
				<div class="visual">
					<span>Company Overview</span>
					<img src="<c:url value='/resources/images/header/visual_1.png/'/>" >				
				</div>
				
				
				<div class="divide">
					<!--LEFT : side navigataion-->		
					<jsp:include page="companySidebar.jsp" />
					
					<!--RIGHT: contents-->
					<div class="right_cont">
					
						<!--section1-->
						<div class="section" id="about">
							<h2><spring:message code="overview.info.greetings"/></h2>
							<div class="ceoment">
								<spring:message code="overview.info.sayhello"/>
							</div>			
						</div>
						<!--//section1-->
					</div>
				</div>
			</div>
			<!--//cont_wrap-->
		</div>
		<!--//contents area-->		
		
				
		<!--footer area-->
		<jsp:include page="../footer.jsp" />
	</div>
	
	
	
</body>
</html>
