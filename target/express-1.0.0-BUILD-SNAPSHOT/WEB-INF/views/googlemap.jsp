<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>



<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
	<meta charset="euc-kr">
	<title>구글맵 API 활용하기</title>
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="<spring:message code='googlemap.central.src'/>"></script>
	<script>
		function initialize() {
			var tabId = $(top.document).find(".tabcont").children(".on").children(".map_area").children("iframe").attr("id");

			// /*
			// 	http://openapi.map.naver.com/api/geocode.php?key=f32441ebcd3cc9de474f8081df1e54e3&encoding=euc-kr&coord=LatLng&query=서울특별시 강남구 강남대로 456
   //              위와같이 링크에서 뒤에 주소를 적으면 x,y 값을 구할수 있습니다.
			// */
			var Y_point			= "";		// Y 좌표
			var X_point			= "";		// X 좌표
			var location 		= "";
			var src 			= "";
			switch(tabId){
				case "central" : 
					Y_point = "<spring:message code='googlemap.central.Y_point'/>";
					X_point = "<spring:message code='googlemap.central.X_point'/>";
					location = "<spring:message code='googlemap.central.location'/>";
					src = "<spring:message code='googlemap.central.src'/>";
					break;
				case "incheon" :
					Y_point = "<spring:message code='googlemap.incheon.Y_point'/>";
					X_point = "<spring:message code='googlemap.incheon.X_point'/>";
					location = "<spring:message code='googlemap.incheon.location'/>";
					src = "<spring:message code='googlemap.incheon.src'/>";
					break;
				case "express" :
					Y_point = "<spring:message code='googlemap.express.Y_point'/>";
					X_point = "<spring:message code='googlemap.express.X_point'/>";
					location = "<spring:message code='googlemap.express.location'/>";
					src = "<spring:message code='googlemap.express.src'/>";
					break;
				case "LA" : 
					Y_point = "<spring:message code='googlemap.LA.Y_point'/>";
					X_point = "<spring:message code='googlemap.LA.X_point'/>";
					location = "<spring:message code='googlemap.LA.location'/>";
					src = "<spring:message code='googlemap.LA.src'/>";
					break;
			}
			
			


			// var Y_point			= 37.548738;		// Y 좌표
			// var X_point			= 126.923270;		// X 좌표


			var zoomLevel		= 16;						// 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼

			var markerTitle		= "MNC INTERNATIONAL";				// 현재 위치 마커에 마우스를 오버을때 나타나는 정보
			var markerMaxWidth	= 300;						// 마커를 클릭했을때 나타나는 말풍선의 최대 크기

			// 말풍선 내용
			var contentString	= '<img src="../../resources/images/logo.png">'+'<div>' +
			'<p>'+location+'</p>' +
			//'<a href="http://www.daegu.go.kr" target="_blank">http://www.daegu.go.kr</a>'+ //링크도 넣을 수 있음
			'</div>';

			var myLatlng = new google.maps.LatLng(Y_point, X_point);
			
			//구글 맵 옵션 설정
			var mapOptions = { 
				zoom : 16, //기본 확대율
				center : new google.maps.LatLng(Y_point, X_point), // 지도 중앙 위치
				scrollwheel : false, //마우스 휠로 확대 축소 사용 여부
				mapTypeControl : true, //맵 타입 컨트롤 사용 여부					
				zoomControl: true, // 줌 컨트롤
				scaleControl: true, // 축척 컨트롤
				streetViewControl: true, // 스트리트뷰 컨트롤
				mapTypeId: google.maps.MapTypeId.ROADMAP // 지도 유형을 일반지도로 설정
			};
			
			//구글 맵을 사용할 타겟 
			var map = new google.maps.Map(document.getElementById('map_view'), mapOptions); 

			var image = new google.maps.MarkerImage( 'http://www.larva.re.kr/home/img/boximage3.png',
                            new google.maps.Size(X_point, Y_point),
                            '',
                            '',
                            new google.maps.Size(X_point, Y_point));

			 //마커 설정
			var marker = new google.maps.Marker({
				position: myLatlng, //마커 위치
				map: map,
				title: markerTitle
			});

			var infowindow = new google.maps.InfoWindow(
														{
															content: contentString,
															maxWidth: markerMaxWidth
														}
			);

			//google.maps.event.addListener(marker, 'mouseover', function() {
				infowindow.open(map, marker);
			//});
		}
	</script>
</head>

<body onload="initialize()" style="padding:0; margin:0;">
	<div id="map_view" style="width:100%; height:500px;"></div>
</body>
</html>