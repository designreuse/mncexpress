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
		<jsp:include page="header.jsp" />
		
		
		
		
		
		<!--contents area-->
		<div id="contents" >
			<div class="cont_wrap">
				<div class="visual">
					<span>Contact Us</span>
					<img src="<c:url value='/resources/images/header/visual_3.png/'/>" >			
				</div>
				<div class="divide">
					<!--LEFT : side navigataion-->						
					<nav id="side_nav">
						<h2><spring:message code="menu.contact"/></h2>
						<img src="<c:url value='/resources/images/header/lnb_menu03.png/'/>" >			
						
						<ul>
							<li class="on">
								<a href="contact.html" data-number="1">
									<span class="cd-dot"></span>
									<span class="cd-label"><spring:message code="menu.contact"/></span>
								</a>
							</li>											
						</ul>
					</nav>
					
					<!--RIGHT: contents-->
					<div class="right_cont">
						<!--section1-->
						<div class="section">
							<h2><spring:message code="menu.contact"/></h2>
							<table class="contact">
								<colgroup>
									<col width="20%">
									<col width="20%">
									<col width="20%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th>Service</th>
										<th>P.I.C</th>
										<th>Telephone</th>
										<th>Fax</th>
										<th>E-mail</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th rowspan="2"><spring:message code="contact.service1"/></th>
										<td><spring:message code="contact1"/></td>
										<td>02-711-0874</td>
										<td>02-711-0889</td>
										<td><a class="sendemail" href="mailto:kylee@mnci.co.kr">kylee@mnci.co.kr</a></td>
									</tr>
									<tr class="underline">
										<td><spring:message code="contact2"/></td>
										<td>02-711-0835</td>
										<td>02-711-0889</td>
										<td><a class="sendemail" href="mailto:bgpark@mnci.co.kr">bgpark@mnci.co.kr</a></td>
									</tr>	
									<tr>
										<th rowspan="3"><spring:message code="contact.service2"/></th>
										<td><spring:message code="contact3"/></td>
										<td>02-711-0869</td>
										<td>02-711-0889</td>
										<td><a class="sendemail" href="mailto:hklee@mnci.co.kr">hklee@mnci.co.kr</a></td>
									</tr>
									<tr class="underline">
										<td><spring:message code="contact9"/></td>
										<td>02-711-0838</td>
										<td> 02-711-0889</td>
										<td><a class="sendemail" href="mailto:neil@mnci.co.kr">neil@mnci.co.kr</a></td>
									</tr>	
									<tr class="underline">
										<td><spring:message code="contact4"/></td>
										<td>02-711-0871</td>
										<td>02-711-0889</td>
										<td><a class="sendemail" href="mailto:jhlee@mnci.co.kr">jhlee@mnci.co.kr</a></td>
									</tr>
									<tr>
										<th rowspan="2"><spring:message code="contact.service3"/></th>
										<td><spring:message code="contact5"/></td>
										<td>02-711-0873</td>
										<td>02-711-0889</td>
										<td><a class="sendemail" href="mailto:kbkim@mnci.co.kr">kbkim@mnci.co.kr</a></td>
									</tr>
									<tr class="underline">
										<td><spring:message code="contact6"/></td>
										<td>02-711-0872</td>
										<td>02-711-0889</td>
										<td><a class="sendemail" href="mailto:celina@mnci.co.kr">celina@mnci.co.kr</a></td>
									</tr>
									<tr>
										<th rowspan="2"><spring:message code="contact.service4"/></th>
										<td><spring:message code="contact7"/></td>
										<td>02-322-8070</td>
										<td>02-711-0889</td>
										<td><a class="sendemail" href="mailto:kbkim@mnci.co.kr">dsjung@mnci.co.kr</a></td>
									</tr>
									<tr>
										<td><spring:message code="contact8"/></td>
										<td>02-322-8070</td>
										<td>02-711-0889</td>
										<td><a class="sendemail" href="mailto:celina@mnci.co.kr">jeajinsuk@mnci.co.kr</a></td>
									</tr>
								</tbody>						
															
								
							</table>
						</div>
						<!--//section1-->
					</div>
				</div>
			</div>	
		</div>		
		
		
		<!--footer area-->
		<jsp:include page="footer.jsp" />
		
	</div>
	
	
	
</body>
</html>
