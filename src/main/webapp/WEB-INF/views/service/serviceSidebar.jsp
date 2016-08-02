<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>

<!--LEFT : side navigataion-->	
<nav id="side_nav">
	<h2><spring:message code="menu.service"/></h2>
	<img src="<c:url value='/resources/images/header/lnb_menu02.png/'/>" >
	<ul>
		<li id="submenu_air">
			<a href="<c:url value='/view/service/serviceAirFreight'/>">
				<span class="cd-dot"></span>
				<span class="cd-label"><spring:message code="submenu.air"/></span>
			</a>
		</li>
		<li id="submenu_sea">
			<a href="<c:url value='/view/service/serviceSeaFreight'/>">
				<span class="cd-dot"></span>
				<span class="cd-label"><spring:message code="submenu.sea"/></span>
			</a>
		</li>
		<li id="submenu_manage">
			<a href="<c:url value='/view/service/serviceSupply'/>">
				<span class="cd-dot"></span>
				<span class="cd-label"><spring:message code="submenu.manage"/></span>
			</a>
		</li>
		<li id="submenu_service">
			<a href="<c:url value='/view/service/serviceExpress'/>">
				<span class="cd-dot"></span>
				<span class="cd-label"><spring:message code="submenu.service"/></span>
			</a>
		</li>					
	</ul>
</nav>

<script type="text/javascript">
	/* 사이드 메뉴에 on클래스 지정 메소드 --> script.js */
	menusetOn();
</script>