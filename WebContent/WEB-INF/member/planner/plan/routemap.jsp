<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>	
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션			
			center: new daum.maps.LatLng(37.47868488487008, 126.87946377805068), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
	};				
	var map = new daum.maps.Map(container, options);//지도를 생성합니다
	//container.style.height = '800px';/* map 의 레이아웃 설정 */
	map.relayout();/* map 의 레이아웃 설정 */
	
	//지도를 클릭한 위치에 표출할 마커입니다
	var marker = new daum.maps.Marker({ 
		// 지도 중심좌표에 마커를 생성합니다 
 		//position: map.getCenter()
	}); 
	marker.setMap(map);		//지도에 마커를 표시합니다
	marker.setDraggable(true); // 마커 드래그 가능하도록 설정
	
	//지도에 클릭 이벤트를 등록합니다
	//지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {
		// 클릭한 위도, 경도 정보를 가져옵니다 
		var latlng = mouseEvent.latLng; 		
		// 마커 위치를 클릭한 위치로 옮깁니다
		marker.setPosition(latlng);
		/* var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
	message += '경도는 ' + latlng.getLng() + ' 입니다'; */				
	});	
	
	//지도타입 컨트롤의 지도 또는 스카이뷰 버튼을 클릭하면 호출되어 지도타입을 바꾸는 함수입니다
	function setMapType(maptype) { 
		var roadmapControl = document.getElementById('btnRoadmap');
		var skyviewControl = document.getElementById('btnSkyview'); 
		if (maptype === 'roadmap') {
			map.setMapTypeId(daum.maps.MapTypeId.ROADMAP);    
			roadmapControl.className = 'selected_btn';
			skyviewControl.className = 'sky_btn';
		} else {
			map.setMapTypeId(daum.maps.MapTypeId.HYBRID);    
			skyviewControl.className = 'selected_btn';
			roadmapControl.className = 'sky_btn';
		}
	}
	
	//지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomIn() { map.setLevel(map.getLevel() - 1); }	
	//지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomOut() { map.setLevel(map.getLevel() + 1); } 
	
	/******************************************** 키워드로 장소검색하고 목록으로 표출하기 시작 **************************************************/
	var markers = [];	// 마커를 담을 배열입니다
	//var ps = new daum.maps.services.Places();  	// 장소 검색 객체를 생성합니다
	var ps;
	var infowindow = new daum.maps.InfoWindow({zIndex:1});	// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다	
	
	
	// 키워드 검색을 요청하는 함수입니다
	function searchPlaces() {
		/* ******************************검색 관련 함수*******************************/
		if (!currCategory ) {			
			ps = new daum.maps.services.Places();
		    var keyword = document.getElementById('keyword').value;
			//if(document.getElementById('searchmap').value !='검색'){
		    if (!keyword.replace(/^\s+|\s+$/g, '')) {
		        alert('키워드를 입력해주세요!');	        
		        return false;
		    }
			//}
			
		    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
		    ps.keywordSearch(keyword, placesSearchCB);
		    document.getElementById('keyword').value = "";
	        return;
	    }
		/* ******************************검색 관련 함수*******************************/
		/* ******************************카테고리 관련 함수*******************************/
		ps = new daum.maps.services.Places(map);
	    // 커스텀 오버레이를 숨깁니다 
	    placeOverlay.setMap(null);
	    // 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker();
	    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true});	    
	    /* ******************************카테고리 관련 함수*******************************/
	}
	
	
	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
	    if (status === daum.maps.services.Status.OK) {
	        displayPlaces(data);	        // 정상적으로 검색이 완료됐으면 검색 목록과 마커를 표출합니다
	    } else if (status === daum.maps.services.Status.ZERO_RESULT) {
	        alert('검색 결과가 존재하지 않습니다.');       return;

	    } else if (status === daum.maps.services.Status.ERROR) { 
	        alert('검색 결과 중 오류가 발생했습니다.');	        return;
	    }
	}	
	
	// 검색 결과 목록과 마커를 표출하는 함수입니다
	function displayPlaces(places) {
		
		    var listEl = document.getElementById('placesList'), 
		    menuEl = document.getElementById('menu_wrap'),
		    fragment = document.createDocumentFragment(), 
		    bounds = new daum.maps.LatLngBounds(), 
		    listStr = '';	    
		    removeMarker();	    // 지도에 표시되고 있는 마커를 제거합니다    
		
	    if(currCategory){	
	    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
	    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
	    var order = document.getElementById(currCategory).getAttribute('data-order');
	    }
	    
	     
	    for ( var i=0; i<places.length; i++ ) {
	    	if(!currCategory){
		    	/* ************************************************* 키워드로 장소검색하고 목록으로 표출하기 ***************************************** */
		        // 마커를 생성하고 지도에 표시합니다
		        var placePosition = new daum.maps.LatLng(places[i].y, places[i].x),
		            marker = addMarker(placePosition, null, i); // 검색 결과 항목 Element를 생성합니다		            
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해  LatLngBounds 객체에 좌표를 추가합니다
		        bounds.extend(placePosition);
		        // 마커와 검색결과 항목에 mouseover 했을때 해당 장소에 인포윈도우에 장소명을 표시합니다
		        // mouseout 했을 때는 인포윈도우를 닫습니다
		        /* (function(marker, title) {
		            daum.maps.event.addListener(marker, 'mouseover', function() {
		                displayInfowindow(marker, title);
		            });
		            daum.maps.event.addListener(marker, 'mouseout', function() {
		                infowindow.close();
		            });	            
		        })(marker, places[i].place_name); */
		        (function(marker, place) {
	                daum.maps.event.addListener(marker, 'click', function() {
	                    //displayPlaceInfo(place);											// 포커스 아웃시 닫아야함.
	                	var clickcount = 0;
	                	if(clickcount ==0){ displayPlaceInfo(place); clickcount=1;}
						else if(clickcount ==1){ displayPlaceInfo(""); clickcount=0; }
	                });	
	            })(marker, places[i]);
		     	
		        map.setBounds(bounds);	    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		        /* ************************************************* 키워드로 장소검색하고 목록으로 표출하기 ***************************************** */
    		}
	    	if(currCategory){
		    	/* ******************************************* 카테 고리 검색 ***************************************** */
		    	// 마커를 생성하고 지도에 표시합니다
	            var marker = addMarker(new daum.maps.LatLng(places[i].y, places[i].x), order, null);	
	            // 마커와 검색결과 항목을 클릭 했을 때
	            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
	            (function(marker, place) {
	            	var clickcount = 0;
	                daum.maps.event.addListener(marker, 'click', function() {
						//displayPlaceInfo(place);												// 포커스 아웃시 닫아야함.
						if(clickcount ==0){ displayPlaceInfo(place); clickcount=1;}
						else if(clickcount ==1){ displayPlaceInfo(""); clickcount=0; }
	                });
	            })(marker, places[i]);
	            /* ******************************************* 카테 고리 검색 ***************************************** */
	    	}
	    }	    	
	}	
	
	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	}
	
	
	// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	// 인포윈도우에 장소명을 표시합니다
	function displayInfowindow(marker, title) {
	    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
	    infowindow.setContent(content);
	    infowindow.open(map, marker);
	}	
	 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
	function removeAllChildNods(el) {   
	    while (el.hasChildNodes()) {
	        el.removeChild (el.lastChild);
	    }
	}
	/******************************************** 키워드로 장소검색하고 목록으로 표출하기 종료 **************************************************/
	/************************************************ 카테고리별 장소 검색하기 시작  **********************************************************/
	// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
	var placeOverlay = new daum.maps.CustomOverlay({zIndex:1}), 
	    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
	    markers = [], // 마커를 담을 배열입니다
	    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
	
	// 장소 검색 객체를 생성합니다
    //var ps = new daum.maps.services.Places(map); 
	
    if(currCategory){
	// 지도에 idle 이벤트를 등록합니다
    	daum.maps.event.addListener(map, 'idle', searchPlaces);
    }
	// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
    contentNode.className = 'placeinfo_wrap';
	
	// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
	// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 daum.maps.event.preventMap 메소드를 등록합니다 
	addEventHandle(contentNode, 'mousedown', daum.maps.event.preventMap);
	addEventHandle(contentNode, 'touchstart', daum.maps.event.preventMap);
	
	// 커스텀 오버레이 컨텐츠를 설정합니다
	placeOverlay.setContent(contentNode);
	
	// 각 카테고리에 클릭 이벤트를 등록합니다
	addCategoryClickEvent();
	
	// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
	function addEventHandle(target, type, callback) {
	    if (target.addEventListener) {
	        target.addEventListener(type, callback);
	    } else {
	        target.attachEvent('on' + type, callback);
	    }
	}	
	
	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, order, idx) {
		 var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new daum.maps.Size(36, 37),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
	            spriteOrigin : new daum.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new daum.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new daum.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });
		if(currCategory){			
		    var imageSrc = '/Planit/images/plan/css_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다 // http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png
		        imageSize = new daum.maps.Size(31, 31),  // 마커 이미지의 크기
		        imgOptions =  {
		            spriteSize : new daum.maps.Size(70, 197), // 스프라이트 이미지의 크기
		            spriteOrigin : new daum.maps.Point(38, (order*33)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
		            offset: new daum.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
		        },
		        markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
		            marker = new daum.maps.Marker({
		            position: position, // 마커의 위치
		            image: markerImage 
		        });		
		}
		
		    marker.setMap(map); // 지도 위에 마커를 표출합니다
		    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
	
		    return marker;
	}
	
	// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
	function displayPlaceInfo (place) {
	    var content = '<div class="placeinfo">' +
	                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   

	    if (place.road_address_name) {
	        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
	                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
	    }  else {
	        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
	    }                
	   
	    content += '    <span class="tel">' + place.phone + '</span>' +
	    			'<a href="#" id="planplus"><img src="/Planit/images/plan/planplus.png" ></a>'+				//상세보기 + 버튼구현
	                '</div>' +
	                
	                '<div class="after"></div>';

	    contentNode.innerHTML = content;
	    placeOverlay.setPosition(new daum.maps.LatLng(place.y, place.x));
	    placeOverlay.setMap(map);  
	}
	
	/*******************************************/
	
	/*******************************************/
	
	
	// 각 카테고리에 클릭 이벤트를 등록합니다
	function addCategoryClickEvent() {
	    var category = document.getElementById('category'),
	        children = category.children;

	    for (var i=0; i<children.length; i++) {
	        children[i].onclick = onClickCategory;
	    }
	}
	
	// 카테고리를 클릭했을 때 호출되는 함수입니다
	function onClickCategory() {
	    var id = this.id,
	        className = this.className;

	    placeOverlay.setMap(null);

	    if (className === 'on') {
	        currCategory = '';
	        changeCategoryClass();
	        removeMarker();
	    } else {
	        currCategory = id;
	        changeCategoryClass(this);
	        searchPlaces();
	    }
	}	
	
	// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
	function changeCategoryClass(el) {
	    var category = document.getElementById('category'),
	        children = category.children,
	        i;
	    for ( i=0; i<children.length; i++ ) {
	        children[i].className = '';
	    }
	    if (el) {
	        el.className = 'on';
	    } 
	} 
	
	/************************************************ 카테고리별 장소 검색하기 종료  **********************************************************/
	
	
</script>

<!--**************************************************************************************************************************-->
<!--**************************************************************************************************************************-->
<!--**************************************************************************************************************************-->
<!--**************************************************************************************************************************-->
<!--**************************************************************************************************************************-->


<!-- ************************루트 상세 정보 계획 자바 스크립트 시작****************** -->
<!-- ********************************* 상세 일정 페이지 달력 출력 시작 *************************************** -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- ********************************* 상세 일정 페이지 달력 출력 종료 *************************************** -->
<script>

	$(function() {
	/* ************************************* 상세정보 입력 란의 달력 정보 출력 시작 ******************************************* */
		 $.datepicker.setDefaults({
		        dateFormat: 'yy년 mm월 dd일',
		        prevText: '이전 달',
		        nextText: '다음 달',
		        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		        showMonthAfterYear: true,
		        yearSuffix: '년 '
		    });
		$("#thedate").datepicker({ minDate: 0});
	/* ************************************* 상세정보 입력 란의 달력 정보 출력 종료 ******************************************* */

		/********************  이미지 선택 박스 출력 시작 *******************/		
		$('#peopletype li > a > img').on('click', function(){
			//alert($(this).attr('alt'));//오 읽어온다.
			$('#tourtypeimage').attr('src',$(this).attr('src')).attr('alt',$(this).attr('alt')).css('height',80);
			$('#caret').attr('class','');
			$('#tourtype').css('padding',0).css( 'height' ,'auto');
		});
		/********************  이미지 선택 박스 출력 시작 *******************/
		
	});

		

	/* ************************************* 상세정보 입력 란의 오늘 일자 정보 출력 시작 ******************************************* */
	function autoDate () {
		var tDay = new Date();
		var tMonth = tDay.getMonth()+1;
		var nowdate = tDay.getDate();
		if ( tMonth < 10) tMonth = "0"+tMonth;
		if ( nowdate < 10) nowdate = "0"+nowdate;
		document.getElementById("nowdate").value = tDay.getFullYear()+"년 "+tMonth+"월 "+nowdate+"일";
	 }
	
	
	function addLoadEvent(func) {
		var oldonload = window.onload;
		if (typeof window.onload != 'function') {
			window.onload = func;
		} else {
			window.onload = function() {
				if (oldonload) {
					oldonload();
				}
				func();
			}
		}
	}

	addLoadEvent(function() {
		autoDate();
	});
	/* ************************************* 상세정보 입력 란의 오늘 일자 정보 출력 종료 ******************************************* */
	
	function(){
		
	}
	
</script>
<!-- ****************************************************루트 상세 정보 계획 자바 스크립트 종료************************************************************ -->

