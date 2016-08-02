<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="header">
	<div class="navbar">
		<h1 class="logo"><a href="<c:url value='/'/>"><img src="<c:url value='/resources/images/logo.png'/>"></a></h1>
		<ul class="gnb">
			<li>
				<a href="<c:url value='/view/companyOverview/companyInformation'/>"><spring:message code="menu.overview"/></a>
				<ul class="lnb">
					<li><a href="<c:url value='/view/companyOverview/companyInformation'/>"><spring:message code="submenu.info"/></a></li>
					<li><a href="<c:url value='/view/companyOverview/companyProfile'/>"><spring:message code="submenu.profile"/></a></li>
					<li><a href="<c:url value='/view/companyOverview/companyChart'/>"><spring:message code="submenu.chart"/></a></li>
					<li><a href="<c:url value='/view/companyOverview/companyNetwork'/>"><spring:message code="submenu.network"/></a></li>
					<li><a href="<c:url value='/view/companyOverview/companyLocation'/>"><spring:message code="submenu.location"/></a></li>
				</ul>
			</li>

			<li>
				<a href="<c:url value='/view/service/serviceAirFreight'/>"><spring:message code="menu.service"/></a>
				<ul class="lnb">
					<li><a href="<c:url value='/view/service/serviceAirFreight'/>"><spring:message code="submenu.air"/></a></li>
					<li><a href="<c:url value='/view/service/serviceSeaFreight'/>"><spring:message code="submenu.sea"/></a></li>
					<li><a href="<c:url value='/view/service/serviceSupply'/>"><spring:message code="submenu.manage"/></a></li>
					<li><a href="<c:url value='/view/service/serviceExpress'/>"><spring:message code="submenu.service"/></a></li>
				</ul>
			</li>
			<li id="contactLi"><a href="<c:url value='/view/contact'/>"><spring:message code="menu.contact"/></a></li>
			<li><a href="<c:url value='/view/service/serviceSupply'/>"><spring:message code="submenu.biz"/></a></li>
			<li class="_blank"><a href="http://express.mnci.co.kr" target="_blank"><spring:message code="submenu.track"/></a></li>
			<li class="_blank"><a href="http://hiworks.mnci.co.kr/" target="_blank"><spring:message code="menu.intranet"/></a></li> 
		</ul>
		<div class="language">							
			<div id='lang' >
				<a href="#" class="on">ENGLISH</a> / <a href="#">KOREAN</a> 				
			</div>			
		</div>
	</div>			
</div>
<script type="text/javascript">


keepUpLanguageHtml();  //페이지 변경시 HTML 언어변경 태그의 active상태를 유지해주는 코드
setUrlLanguageTag();   //HTML 언어변경 a태그의 href를 적용하는 코드  

function keepUpLanguageHtml(){
	//세션에 저장되있는 언어
	var lang = '<c:out value="${sessionScope.lang}"/>';
	var languages = (lang == 'ko') ? 'KOREAN': 'ENGLISH';
	var currentLangDiv = $("#lang").children("a:contains("+languages+")");

	$("#lang").children().attr('class','off');
	currentLangDiv.attr('class', 'on');
}

function setUrlLanguageTag(){
	var koreanLangDiv = $("#lang").children("a:contains('KOREAN')");
	var englishLangDiv = $("#lang").children("a:contains('ENGLISH')");

	koreanUrl = createLanguageUrl('ko');
	englishUrl = createLanguageUrl('en');

	koreanLangDiv.attr('href', koreanUrl);
	englishLangDiv.attr('href', englishUrl);

}

// 언어변경 url 생성코드
function createLanguageUrl(language){
	var pathName = location.pathname;
	var pathLength = pathName.length;
	if(pathName.substring(pathLength-1) == '/'){
		pathName = pathName.substring(0,pathLength-1);
	}
	var url = 'http://'+location.host+pathName+'?lang='+language;

	return url;
}
</script>


