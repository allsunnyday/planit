<%@page import="com.earth.planit.service.PlannerDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
/**************************/	
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
		//displayPlaceInfo(place);
	
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
	
	
    var keyword;
	// 키워드 검색을 요청하는 함수입니다
	function searchPlaces() {
		/* ******************************검색 관련 함수*******************************/
		if (!currCategory ) {			
			ps = new daum.maps.services.Places();
		    keyword = document.getElementById('keyword').value;
		    console.log("keyword: "+keyword);
		    if (!keyword.replace(/^\s+|\s+$/g, '')) {
		        alert('키워드를 입력해주세요!');	        
		        return false;
		    }
			
		    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
		    ps.keywordSearch(keyword, placesSearchCB);
		    //ps.keywordSearch(keyword);
		    console.log("keyword: "+keyword);
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
	   // ps.categorySearch(currCategory, {useMapBounds:true});
	    /* ******************************카테고리 관련 함수*******************************/
	}
	
	
	
	
	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
		//console.log('data: '+ data); // 뭐들음?
	    if (status === daum.maps.services.Status.OK) {
	        displayPlaces(data);	        // 정상적으로 검색이 완료됐으면 검색 목록과 마커를 표출합니다
	    } else if (status === daum.maps.services.Status.ZERO_RESULT) {
	        
	    	alert('검색 결과가 존재하지 않습니다.');       return;

	    } else if (status === daum.maps.services.Status.ERROR) { 
	        alert('검색 결과 중 오류가 발생했습니다.');	        return;
	    }
	}	 
	
	var planposition;	// 플랜 좌표를 담을 포지션 객체
	
	// 검색 결과 목록과 마커를 표출하는 함수입니다
	function displayPlaces(places) {
		/* **************** 검색 키워드 출력 *************** */
		    var listEl = document.getElementById('placesList'), 
		    menuEl = document.getElementById('menu_wrap'),
		    fragment = document.createDocumentFragment(), 
		    bounds = new daum.maps.LatLngBounds(), 
		    listStr = '';	    
		    removeMarker();	    // 지도에 표시되고 있는 마커를 제거합니다
	    /* **************** 검색 키워드 출력 *************** */
		
		    /* **************** 카테 고리별 검색 *************** */
	    if(currCategory){	
		    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
		    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
		    var order = document.getElementById(currCategory).getAttribute('data-order');
	    }
	    /* **************** 카테 고리별 검색 *************** */
	    
	    for ( var i=0; i<places.length; i++ ) {
//    	for ( var i=0; i<planmapinfo.length; i++ ) {
	    	if(!currCategory){
		    	/* ************************************************* 키워드로 장소검색하고 목록으로 표출하기 ***************************************** */
		        // 마커를 생성하고 지도에 표시합니다
		        var placePosition = new daum.maps.LatLng(places[i].y, places[i].x)
		    	,marker = addMarker(placePosition, null, i); // 검색 결과 항목 Element를 생성합니다		            
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해  LatLngBounds 객체에 좌표를 추가합니다
		        bounds.extend(placePosition);		       
		        (function(marker, place) {
                	var clickcount1 = 0;
	                daum.maps.event.addListener(marker, 'click', function() {
	                    //displayPlaceInfo(place);											// 포커스 아웃시 닫아야함.	                    
	                	if(clickcount1 ==0){ 
	                		displayPlaceInfo(place);	                		
	                		planposition = marker.getPosition();
	                		console.log('planposition: '+planposition);
	                		clickcount1=1;
                		} // 좌표 얻엇다.
						else if(clickcount1 ==1){ displayPlaceInfo(""); clickcount1=0; }
	                });	
	                //console.log("dmld?");
	            })(marker, places[i]);
		        //console.log(marker.getPosition());
		        map.setBounds(bounds);	    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		       
		        /* ************************************************* 키워드로 장소검색하고 목록으로 표출하기 ***************************************** */
    		}
	    	if(currCategory){	    		
		    	/* ******************************************* 카테 고리 검색 ***************************************** */
		    	// 마커를 생성하고 지도에 표시합니다		    	
// 	            var marker = addMarker(new daum.maps.LatLng(places[i].y, places[i].x), order, null);
		    	console.log('카테고리를 클릭했다.')
		    	/* $.each(data, function(index, content) {
	    			//console.log(content['mapx']+'//'+content['mapy']);
	    			console.log()
	    			mapx.push(content['mapx']);
	    			mapy.push(content['mapy']);
	    			
    			}); */
		    	var marker = addMarker(new daum.maps.LatLng(mapy[i], mapx[i]), order, null);
		    	//console.log('planmapinfo///'+mapy +'//'+mapx);
	            // 마커와 검색결과 항목을 클릭 했을 때
	            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
	            (function(marker, place) {
	            	var clickcount = 0;
	                daum.maps.event.addListener(marker, 'click', function() {	                	
						//displayPlaceInfo(place);												// 포커스 아웃시 닫아야함.
						if(clickcount ==0){
							displayPlaceInfo(place);
							planposition = marker.getPosition();
	                		//console.log('planposition: '+planposition);
							clickcount=1;}
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
		/////////////////////////////////////////////////////////////
		else{
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
		///////////////////////////////////////////
		 
		    marker.setMap(map); // 지도 위에 마커를 표출합니다
		    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
	
		    return marker;
	}
	
	// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
	function displayPlaceInfo (place) {
	    var content = '<div class="placeinfo">' +
	                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '" id="plantitle">' + place.place_name + '</a>';   

	    if (place.road_address_name) {
	        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
	                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
	    }  else {
	        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
	    }                
	   
	    content += '    <span class="tel">' + place.phone + '</span>' +
	    			'<a href="javascript:planplusActionplus()" id="planplus"><img src="/Planit/images/plan/planplus.png" id="planrouteplusimg"></a>'+				//상세보기 + 버튼구현 // <img src="/Planit/images/plan/planplus.png" id="planrouteplusimg">
					'</div>' +
	                
	                '<div class="after"></div>';  
	    contentNode.innerHTML = content;
	    placeOverlay.setPosition(new daum.maps.LatLng(place.y, place.x));
	    placeOverlay.setMap(map);  
	}
		
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

<!--*********************************** plan 상세여행 정보 추가 시작 ***********************************-->
<script>
	/********************** 마커 선연결하기 *********************/	
	// 마커를 표시할 위치와 title 객체 배열입니다 
	var positions = [] ;
	// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
	var linePath = [];
	/********************** 마커 선연결하기 *********************/
	/********************** 마커 거리 얻어온다  *********************/
	var distance; // 마커와 마커 사이의 거리 정보?
	var temp=0; // 마커 와 마커 이전거리 저장용
	var walkkTime=0; // 사람이 걷는 거리의 소요 시간
	var carhourTime; // 자동차가 이동하는데 소요 되는 시간 ( 시간)
	var carTime=0; // 자동차가 이동하는데 소요 되는 시간 ( 분) 
	var plancase = 0; // 여행 상세일정 전체 카운트?
	var planmarking= []; // 사용자가 플랜으로 등록한 마커를 삭제하기 위한 함수	 
	var days = document.getElementById("days").value; // location 에서 지정한 여행 일자 얻기
	var polyline ; // 라인정보 담는 변수
	/* ******************** 여행 계획 추가 하기 관련 함수  ******************** */
	function planplusActionplus(index){
		console.log("planplusActionplus() : 이상무");		
		//positions.push({title:document.getElementById('plantitle').title, latlng:planposition}); // 마크와 타이틀 저장
		positions.push({title:document.getElementById('titleforNewInfo_'+index).html, latlng:planposition}); // 마크와 타이틀 저장
		linePath.push(planposition); // 사용자가 일정 추가로 등록한 일정의 라인을 구성하기 위한 좌표저장
		console.log(linePath.length); // 마커 좌표가 배열로 추가 되는지 확인
		//plancase ++; // 여행일정 추가시 카운트 증가		
		//routeInfoPlusAction(plancase); // 버튼 클릭시 상세 여행일정에 추가 되는 함수		
		/* **************** 사용자가 추가한 마커 이미지 생성  ***************** */		
		planmarkingsave();
		/* **************** 사용자가 추가한 마커 이미지 생성  ***************** */
		if(polyline != null) polyline.setMap(null);
		// 지도에 표시할 선을 생성합니다
		polyline = new daum.maps.Polyline({
		    path: linePath, // 선을 구성하는 좌표배열 입니다
		    strokeWeight: 5, // 선의 두께 입니다
		    strokeColor: '#FF5E00', // 선의 색깔입니다
		    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		    strokeStyle: 'solid', // 선의 스타일입니다
		    endArrow:true
		});
        
       console.log("polyline======"+polyline);
        
        
		/* *****************사람및 자동차가 움직이는 시간 계산 ***************** */		
		if(Math.round(polyline.getLength() ==0)){
			distance = Math.round(polyline.getLength());
			temp = distance;
		}
		else if(Math.round(polyline.getLength() !=0)){
			distance = Math.round(polyline.getLength()) - temp;
			walkkTime = distance / 67 | 0;
			carTime = distance / 1000 | 0;
			temp = distance;
		}
		console.log("walkkTime: "+ walkkTime);
		console.log("carTime: "+ carTime);
		/* *****************사람및 자동차가 움직이는 시간 계산 ***************** */
		
		/* **************** 사용자가 추가한 마커 이미지 생성  ***************** */
		plancase ++; // 여행일정 추가시 카운트 증가
		var diveplus=plancase-1;
		routeInfoPlusAction( index, diveplus); // 버튼 클릭시 상세 여행정보에 추가 되는 함수
		polyline.setMap(map);  
		//removeMarker(); // 계획 일정 추가시 지도에 표시된 카테고리 마커 삭제
		//displayPlaceInfo(""); //계획 일정 추가후 상세보기 닫기
		currCategory = keyword; // 사용자가 선택한 지역유지를 위한 변수 설정
        //changeCategoryClass(); // on 상태인 카테고리 마크를 off 설정
		infowindow.close(); //인포윈도우 닫기
	}
	/* ******************** 여행 계획 추가 하기 관련 함수  ******************** */
	
	
	
	/* **************** 사용자가 추가한 마커 이미지 생성  ***************** */
	function planmarkingsave(){
		var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 		    
		for (var i = 0; i < positions.length; i ++) {		    
		    // 마커 이미지의 이미지 크기 입니다
		    var imageSize = new daum.maps.Size(24, 35); 		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 		    
		    // 마커를 생성합니다
		    var marking = new daum.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		    planmarking.push(marking); // 삭제를 위한 마킹 복사
		}
	}
	/* **************** 사용자가 추가한 마커 이미지 생성  ***************** */
	
	/* ************* 추가 버튼 클릭시 추가 되는 함수 시작  ************** */	
	//var diveplus=0; // 여행계획 추가 다이브 번호 생성
	function routeInfoPlusAction(index,diveplus){
			
		 var content;
		console.log('routeInfoPlusAtion 463] plancase]'+plancase+'   diveplus]'+diveplus);
		if(plancase == 0){
			//diveplus=0; // 여행계획 추가 다이브 번호 생성
			/*content ='';
			content +=  '<div id="nocityrute" style="background-color: cyan; ">';
				content += '<br><br><font style="font-size:9pt" color="#c0c0c0"><b>입력된 도시가 없습니다.</b></font><br><br><br>';
			content +='</div>'; */
		}		
		if(plancase != 0){		
			$('#nocityrute').remove();
			content ='';
			content +='<div id="" class="planroute_'+diveplus+'" style="height: 105px; width:100%;">';
				content += '<div class="col-md-4 col-sm-4 col-xs-12 text-center" style="margin-top:15px; height:auto">';					
					content += '<div class="btn-group" style="height: auto; border: 4px solid #3ad195; padding: 4px;">';
						content += '<a href="" id="" class="dmbutton dropdown-toggle" data-toggle="dropdown" style="color:black;"> 일차 <span id="caret" class="caret"></span></a>';
						content += '<ul class="dropdown-menu" id="planselectday">';
						for(var i=1; i<=days; i++){
							if(days==1){
								content += '<li> 당일치기 </li>';
							}
							else {content += '<li>'+i+'일차</li>';}
						}
						content += '</ul>';
					content +='</div>';
				content += '</div>';
				content += '<div class="col-md-8 col-sm-8 col-xs-12">';
					content += '<div style="float:left; width: auto; display:block; margin-top: 8px;">';
						content += '<div class="text-left">';
							content += '<label>지역:</label>&nbsp;<font>'+keyword+'</font><br/>';
							content += '<label>관광지: </label><font class="">'+ document.getElementById('titleforNewInfo_'+index).title +'</font>&nbsp;<a class="btnDel deletePlanRoute_'+diveplus+'" href="javascript:" onclick="deletePlanRoute('+diveplus+')" id=""  title="'+diveplus+'" >';
							content += '<font style="font-size: 9pt; color: #c0c0c0"><i class="fa fa-times-circle"></i></font></a><br/>';//<input type="hidden" id="deleteplanroute">
							content += '<label> 거리: </label>&nbsp;<font class="planroadtext">'+distance+'m</font> ';
							if(walkkTime > 60) {content += '&nbsp;<label> 도보: </label>&nbsp;<font class="planwalktime"> 1시간이상 </font> <br/>';} // 도보 한시간 이상일떄							
							else {content += '&nbsp;<label> 도보: </label>&nbsp;<font class="planwalktime"> '+ walkkTime +' 분</font> <br/>';} // 도보가 한시간 미만 일때
							if(carTime <= 0){content += '&nbsp;<label> 승용차: </label>&nbsp;<font class="plancartime"> 1분 미만 </font>';}
							else if(carTime >= 60){
								carhourTime = Math.floor(carTime/60);
								carTime = carTime %60;
								content += '&nbsp;<label> 승용차: </label>&nbsp;<font class="plancartime"> '+ carhourTime +'시간 '+ carTime+'분 </font>';
							}
							else 							
								content += '&nbsp;<label> 승용차: </label>&nbsp;<font class="plancartime"> 최소'+ carTime*2 +' 분 소요 </font>';
						content += '</div>';
					content += '</div>';
				content += '</div>';
			content += '</div>';
			//diveplus++; // div 생성 번호			
		}
		$('#cityroute').append(content);
		console.log('diveplus(1) '+ diveplus + '// plancase(1) '+ plancase);
		//polyline.setMap(null);
		/*  */
		
		/*  */
	}
	/* ************* 추가 버튼 클릭시 추가 되는 함수 종료 ************** */	
	
	/* **************** plan route div 삭제 함수 시작 ***************** */
	function deletePlanRoute(diveplus){	
		
		if(diveplus == plancase){ diveplus = plancase-1; }		
		var diveplusFortitle = $('.deletePlanRoute_'+diveplus).attr('title');  // 
		
		if(diveplus > plancase) { diveplusFortitle = plancase-1; diveplus = diveplusFortitle;}
		
		console.log('diveplus(2) '+ diveplus + '//plancase(2) '+ plancase+"//diveplusFortitle※: "+ diveplusFortitle);				
		
		for(var i=0; i<planmarking.length; i++){
			planmarking[i].setMap(null);			
		}// 삭제할 플랜 정보의 마커 삭제
		
		console.log("positions전: "+positions.length+"//positions[diveplus]: "+ positions[diveplus].title);
		polyline.setMap(null);// 맵에 그려진 라인 삭제
		positions.splice(diveplus, 1);//좌표 삭제
		linePath.splice(diveplus, 1);
		//linePath =[];//라인을 구성하는 좌표 정보 삭제
		//linePath.push(planposition);
		console.log("positions후: "+positions.length);		
		polyline = new daum.maps.Polyline({
		    path: linePath, // 선을 구성하는 좌표배열 입니다
		    strokeWeight: 5, // 선의 두께 입니다
		    strokeColor: '#FF5E00', // 선의 색깔입니다
		    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		    strokeStyle: 'solid' // 선의 스타일입니다
		});
		planmarkingsave();//기존 마커 재등록
		polyline.setMap(map);// 라인 재생성
		
		
		$('.planroute_'+diveplusFortitle).remove(); // 해당---------------- 다이브 삭제
		plandivCountdown(diveplus, diveplusFortitle) // 다이브에 부여 한 넘버를 가져감.
		plancase--;
		console.log(plancase);
		/* ****************** 마커 삭제후 여행거리 재산출하여 수정 ******************* */
		//거리 font class name = planroadtext
		//도보 font class name = planwalktime
		//자동자 font class name = plancartime
		//변수 
		//	거리정보 = distance
		//	도보정보 = walkkTime
		//	승용차	  = carhourTime (시간)
		//		  	= carTime (분)
		// 사용자가 플랜으로 등록한 마커삭제시 라인을 삭제하기위한 함수
		for(var i=1; i < plancase; i++){
			console.log('포지션 정보로 거리 얻기..?'+i+': '+linePath[i]);
			var twoLinePath = [];
			twoLinePath.push(linePath[i]);
			twoLinePath.push(linePath[i-1]);
			var repolyline =  new daum.maps.Polyline({
				path: twoLinePath
			});				
			console.log('거리나오냐?'+i+' : '+repolyline.getLength());
			var redistance = Math.round(repolyline.getLength());
			/* if(positions.length <=1){ //마커와 마커 사이를 계산하기위한 변수
				redistance = Math.round(repolyline.getLength());
				temp = redistance;
			}  */
			if(Math.round(repolyline.getLength() !=0)){
				temp = 0;
				redistance = Math.round(repolyline.getLength()) - temp;
				walkkTime = redistance / 67 | 0;
				carTime = redistance / 1000 | 0;
				temp = redistance;
			}
			console.log('1)'+redistance+' 2) walkkTime'+walkkTime+' 3) '+carTime);
			$('.planroute_'+i+' font.planroadtext').html(redistance+' m');
			if(walkkTime > 60){ $('.planroute_'+i+' font.planwalktime').html('1시간 이상'); }
			else {$('.planroute_'+i+' font.planwalktime').html(walkkTime+' 분');}
			if(carTime >=60){
				carhourTime = Math.floor(carTime/60);
				carTime = carTime %60;
				$('.planroute_'+i+' font.plancartime').html(carhourTime+'시간'+carTime+'분');
			}
			else { $('.planroute_'+i+' font.plancartime').html(carTime+' 분'); }
			
		}
		if(positions.length ==1){
			$('.planroute_0 font.planroadtext').html(' 0 m');
			$('.planroute_0 font.planwalktime').html(' 0 분');
			$('.planroute_0 font.plancartime').html(' 0 분');
			temp=0;
		}
		/* ****************** 마커 삭제후 여행거리 재산출하여 수정 ******************* */
		/* *************** 여행 계획 리스트가 없을시 여행계획 정보가 없다는 div 추가 *************** */
		if(plancase == 0){
			content ='';
			content +=  '<div id="nocityrute">';
				content += '<br><br><font style="font-size:9pt" color="#c0c0c0"><b>입력된 도시가 없습니다.</b></font><br><br><br>';
			content +='</div>';
			$('#cityroute').append(content);			
		}
		/* *************** 여행 계획 리스트가 없을시 여행계획 정보가 없다는 div 추가 *************** */		
	}
	
	/* ************** 중간의 div 삭제후 div id 재지정 함수 ************** */
	function plandivCountdown(diveplusFortitle){
		//console.log('diveplus(3)== '+ diveplus + '//plancase(3)== '+ plancase +'//title!! '+diveplusFortitle);
		console.log('//plancase(3)== '+ plancase +'//title!! '+diveplusFortitle);
		/**************사용자가 추가한 여행일적 계획 삭제시 남아있는 div 의 번호 재정렬 ************  */
		
		for(var i=diveplusFortitle; i<plancase; i++){									
			var redivcount= $('.planroute_'+(i+1));
			var recount = $('.deletePlanRoute_'+(i+1));
			if(redivcount != null){
				if(i >= 0){
					redivcount.attr('class','planroute_'+i);//id 재부여
					recount.attr('title',i); // title 재부여
					recount.attr('class', 'btnDel deletePlanRoute_'+i);
				}
			}
			else {continue;}
		}// 여행일정 div number 재정비
		/**************사용자가 추가한 여행일정 계획 삭제시 남아있는 div 의 번호 재정렬 ************  */		
		
		//console.log('plancase: '+plancase+'/diveplus: '+diveplus+'/diveplusFortitle: '+diveplusFortitle);
		//diveplus = plancase-1;
		
	}
	/* ************** 중간의 div 삭제후 div id 재지정 함수 ************** */
	/* **************** plan route div 삭제 함수 종료 ***************** */
</script>
<!--*********************************** plan 상세여행 정보 추가 종료***********************************-->
<!-- ************************루트 상세 정보 계획 자바 스크립트 시작****************** -->
<!-- ********************************* 상세 일정 페이지 달력 출력 시작 *************************************** -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- ********************************* 상세 일정 페이지 달력 출력 종료 *************************************** -->
<script>
	
	$(function() {
		/* **************** location 의 도시 정보 검색  **************** */		
		//searchPlaces(); //  새로 고침 시에 "키워드를 입력하세요" 라는 문구를 뜨지 않도록 함수 작성해야함.
		searchaction();	
		function searchaction(){
			ps = new daum.maps.services.Places();
			keyword = document.getElementById('keyword').value;
			document.getElementById('keyword').value = "";
			//ps.keywordSearch(keyword, displayPlaces);
			//console.log(mapy, mapx);
			/* ******************* location 에서 사용자가 선택한 지역으로 자동 서치 ****************** */		
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new daum.maps.services.Geocoder();
			console.log(keyword);
			// 주소로 좌표를 검색합니다
			geocoder.addressSearch(keyword, function(result, status) {	
			    // 정상적으로 검색이 완료됐으면 
			     if (status === daum.maps.services.Status.OK) {	
			        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
			       
			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			    } 
			});
			/* ******************* location 에서 사용자가 선택한 지역으로 자동 서치 ****************** */
		}
		/* **************** location 의 도시 정보 검색  **************** */
		
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
	
	var jsonforTourInfo;
	$(function() {
		var mapx=[];
		var mapy=[];
		/* <c:forEach items="${planmapinfo}" var="planmapinfo">
	        var map_x = '${planmapinfo.mapx}';
	        var map_y = '${planmapinfo.mapy}';
	        mapx.push(map_x);
	        mapy.push(map_y);
    	</c:forEach>
    	console.log(mapx, mapy); */
    	
    
    	//console.log('check info for  first !!!!!!!!!!!'+checkInfo);
    	//var jsonInfo = JSON.parse(checkInfo);
    	
   
    	
    	$('.routecategory').click(function() {    		
    		console.log('들어옴1: '+$(this).val());    		
	    	$.ajax({
				url: "<c:url value='/planner/plan/routecategory.it'/>",
				//url:"<c:url value='http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=NCPqTyv3znqjQjXg0mr6tqFnxmLBJcm10iYsAe66egVkZa%2F28tT1iJSvoKaq9Y8P92LAcQaoxcD5I5kTY%2Bn%2Buw%3D%3D&contentTypeId=&areaCode=&sigunguCode=&MobileOS=ETC&MobileApp=TEST&type=_json'/>",
				dataType: 'json',
				data:{contenttype:$(this).val()},
				success: successPlanmapdata,
				error: function(request, status, error){
					console.log(request, status, error);
				}
			});///ajax   	
    	});
    	
    	var successPlanmapdata = function(data){
    		console.log(JSON.stringify(data));
    		//jsonforTourInfo = data;
    		$.each(data, function(index, content) {    			
    			mapx.push(content['mapx']);
    			mapy.push(content['mapy']);
    			//console.log('mapx.size: '+mapx.size+'//mapy.size: '+mapy.size);
    			//////////////////////////////////////////
    			var order = 1;
    			var marker = addMarker(new daum.maps.LatLng(content['mapy'], content['mapx']), order, null);
		    	//console.log('planmapinfo///'+mapy +'//'+mapx);
	            // 마커와 검색결과 항목을 클릭 했을 때
	            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
	             /* (function(marker, place) {
	            	var clickcount = 0;
	                daum.maps.event.addListener(marker, 'click', function() {	                	
						//displayPlaceInfo(place);												// 포커스 아웃시 닫아야함.
						if(clickcount ==0){
							displayPlaceInfo(place);
							planposition = marker.getPosition();
	                		console.log('planposition: '+planposition);
							clickcount=1;}
						else if(clickcount ==1){ displayPlaceInfo(""); clickcount=0; }
						
	                });
	            })(marker, places[i]);  */
	            
	            
	            marker.setMap(map);
	           // console.log('index?'+index);
	         	// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
	            var iwContent = '<div class="placeinfo_wrap placeinfo">'
	            +'<div style="padding:5px;"><span id="titleforNewInfo_'+index+'" title="'+content['title']+'">'+content['title'] +'</span>'
	            +'<span title="' + content['addr1'] + '">' + content['addr1'] + '</span>'
	            +'  <span class="jibun" title="' + content['zipcode'] + '">(지번 : ' + content['zipcode'] + ')</span>';
	            if(content['tel'] != null){ iwContent += '<span class="tel">' + content['tel']+ '</span>';}
	            iwContent += '<a href="javascript:planplusActionplus('+index+')" id="planplus"><img src="/Planit/images/plan/planplus.png" id="planrouteplusimg"></a>'
	            +'</div>'
	            +'</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	            iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

	            // 인포윈도우를 생성합니다
	            var infowindow = new daum.maps.InfoWindow({
	                content : iwContent,
	                removable : iwRemoveable
	            });
	            // 마커에 클릭이벤트를 등록합니다
	            daum.maps.event.addListener(marker, 'click', function() {	            	
	            
	            	planposition = marker.getPosition();
	            	console.log('planposition: '+planposition);
	            	// 마커 위에 인포윈도우를 표시합니다
	                infowindow.open(map, marker);  
	            });	            
	            /////////////////////////
    		});            
    	};
    	
    	
	});	

	
</script>
<!-- ****************************************************루트 상세 정보 계획 자바 스크립트 종료************************************************************ -->

