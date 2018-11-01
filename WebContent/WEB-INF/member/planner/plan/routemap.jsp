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
		level: 6 //지도의 레벨(확대, 축소 정도)
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
	//marker.setMap(map);      //지도에 마커를 표시합니다
	marker.setDraggable(true); // 마커 드래그 가능하도록 설정   
   
	//지도에 클릭 이벤트를 등록합니다
	//지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {
		// 클릭한 위도, 경도 정보를 가져옵니다 
		//var latlng = mouseEvent.latLng;       
		// 마커 위치를 클릭한 위치로 옮깁니다
		//marker.setPosition(latlng);
	});
   
	//지도타입 컨트롤의 지도 또는 스카이뷰 버튼을 클릭하면 호출되어 지도타입을 바꾸는 함수입니다
	function setMapType(maptype) { 
		var roadmapControl = document.getElementById('btnRoadmap');
		var skyviewControl = document.getElementById('btnSkyview'); 
		if (maptype === 'roadmap') {
			map.setMapTypeId(daum.maps.MapTypeId.ROADMAP);    
			roadmapControl.className = 'selected_btn';
			skyviewControl.className = 'sky_btn';
		}
		else {
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
	var markers = [];   // 마커를 담을 배열입니다
	//var ps = new daum.maps.services.Places();     // 장소 검색 객체를 생성합니다
	var ps;
	var infowindow = new daum.maps.InfoWindow({zIndex:1});   // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다   
   
   
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
		//ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true});       
		ps.categorySearch(currCategory, {useMapBounds:true});
		/* ******************************카테고리 관련 함수*******************************/
	}
   
	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
		//console.log('data: '+ data); // 뭐들음?
		if (status === daum.maps.services.Status.OK) {
			displayPlaces(data);           // 정상적으로 검색이 완료됐으면 검색 목록과 마커를 표출합니다
		}
		else if(status === daum.maps.services.Status.ZERO_RESULT || order == null) {           
			alert('검색 결과가 존재하지 않습니다.');       return;
		} 
		else if (status === daum.maps.services.Status.ERROR) { 
			alert('검색 결과 중 오류가 발생했습니다.');           return;
		}
	}    
   
	var planposition;   // 플랜 좌표를 담을 포지션 객체   
	// 검색 결과 목록과 마커를 표출하는 함수입니다
	function displayPlaces(places) {
		/* **************** 검색 키워드 출력 *************** */
		var listEl = document.getElementById('placesList'), 
			menuEl = document.getElementById('menu_wrap'),
			fragment = document.createDocumentFragment(), 
			bounds = new daum.maps.LatLngBounds(), 
			listStr = '';       
		removeMarker();       // 지도에 표시되고 있는 마커를 제거합니다
		/* **************** 검색 키워드 출력 *************** */
      
		/* **************** 카테 고리별 검색 *************** */
		/* if(currCategory){   
			// 몇번째 카테고리가 선택되어 있는지 얻어옵니다
			// 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
			var order = document.getElementById(currCategory).getAttribute('data-order');
		} */
       /* **************** 카테 고리별 검색 *************** */
       
		for ( var i=0; i<places.length; i++ ) {
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
					//displayPlaceInfo(place);                                 // 포커스 아웃시 닫아야함.                       
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
			map.setBounds(bounds);       // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
             
			/* ************************************************* 키워드로 장소검색하고 목록으로 표출하기 ***************************************** */
			}
			if(currCategory){             
			/* ******************************************* 카테 고리 검색 ***************************************** */
				// 마커를 생성하고 지도에 표시합니다             
				//var marker = addMarker(new daum.maps.LatLng(places[i].y, places[i].x), order, null);
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
					//displayPlaceInfo(place);                                    // 포커스 아웃시 닫아야함.
						if(clickcount ==0){
							displayPlaceInfo(place);
							planposition = marker.getPosition();
							//console.log('planposition: '+planposition);
							clickcount=1;
						}
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
		}
		else {
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
						'   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '" id="plantitle">' + place.place_name + '</a>';   
		if (place.road_address_name) {
			content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
					'  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
		}
		else {
			content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
		}
		content += '    <span class="tel">' + place.phone + '</span>' +
			//'<a href="javascript:planplusActionplus()" id="planplus"><img src="/Planit/images/plan/planplus.png" id="planrouteplusimg"></a>'+            //상세보기 + 버튼구현 // <img src="/Planit/images/plan/planplus.png" id="planrouteplusimg">
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
		}
		else {
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
   
   
	if(document.getElementById("days").value == ""){
		alert('세션정보가 만료 되었습니다.');
		location.replace("<c:url value='/Planit/Before/Location.it'/>");      
	}
   /* ******************** 여행 계획 추가 하기 관련 함수  ******************** */
	var infowindowarr =[];
	function planplusActionplus(index){
		bookmarkmarker.setMap(null);      //즐겨찾기 마커 제거
		console.log("planplusActionplus() : 이상무");      
		//positions.push({title:document.getElementById('plantitle').title, latlng:planposition}); // 마크와 타이틀 저장
		positions.push({title:document.getElementById('titleforNewInfo_'+index).title,latlng:planposition}); // 마크와 타이틀 저장
		infowindowarr.push({content:infowindowexit.Ub}); //
		
		linePath.push(planposition); // 사용자가 일정 추가로 등록한 일정의 라인을 구성하기 위한 좌표저장
		console.log(linePath.length); // 마커 좌표가 배열로 추가 되는지 확인      
		/* **************** 사용자가 추가한 마커 이미지 생성  ***************** */      
		planmarkingsave();
		/* **************** 사용자가 추가한 마커 이미지 생성  ***************** */
		if(polyline != null) { polyline.setMap(null); }
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
		var diveplus=plancase-1; // 여행계획 추가 다이브 번호 생성 <<<<, 필요 없어질듯 하고
		
		console.log('■■■■■ planplusActionplus ■■■> index]'+index+'  diveplus]'+diveplus);
		//버튼을 추가하는 함수
		routeInfoPlusAction( index, diveplus); // 버튼 클릭시 상세 여행정보에 추가 되는 함수

		polyline.setMap(map);		
		infowindowexit.close();//인포윈도우 닫기		
		//removeMarker(); // 계획 일정 추가시 지도에 표시된 카테고리 마커 삭제
		//displayPlaceInfo(""); //계획 일정 추가후 상세보기 닫기
		currCategory = keyword; // 사용자가 선택한 지역유지를 위한 변수 설정
		//changeCategoryClass(); // on 상태인 카테고리 마크를 off 설정
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
				
				
				var markinginfowindow = new daum.maps.InfoWindow({
			        content: infowindowarr[i].content // 인포윈도우에 표시할 내용
			    });
				
				//infowindowarr.push(infowindowexit);
				/* daum.maps.event.addListener(marking, 'mouseover', function() {
					// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
				    infowindowexit.open(map, marking);
				});
	
				// 마커에 마우스아웃 이벤트를 등록합니다
				daum.maps.event.addListener(marking, 'mouseout', function() {
				    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
				    infowindowexit.close();
				}); */
				daum.maps.event.addListener(marking, 'mouseover', makeOverListener(map, marking, markinginfowindow));
			    daum.maps.event.addListener(marking, 'mouseout', makeOutListener(markinginfowindow));				
			}
		}
		/* **************** 사용자가 추가한 마커 이미지 생성  ***************** */		
		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marking, markinginfowindow) {
		    return function() {
		    	markinginfowindow.open(map, marking);
		    };
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(markinginfowindow) {
		    return function() {
		    	markinginfowindow.close();
		    };
		}
		
		
		/* ************* 추가 버튼 클릭시 추가 되는 함수 시작  ************** */
		function routeInfoPlusAction(index,diveplus){
		console.log('○○○○○○○○○○○○○○○○○○○○○○ routeInfoPlusAction 시작 ○○○○○○○○○○○○○○○○○○○○○')
		var content;
		//console.log('routeInfoPlusAtion 463] plancase]'+plancase+'   diveplus]'+diveplus);
		/* if(plancase == 0){
			//diveplus=0; // 여행계획 추가 다이브 번호 생성
			content ='';
			content +=  '<div id="nocityrute" style="background-color: cyan; ">';
			   content += '<br><br><font style="font-size:9pt" color="#c0c0c0"><b>입력된 도시가 없습니다.</b></font><br><br><br>';
			content +='</div>';
         
      	}  */     
		if(plancase != 0){      
			$('#nocityrute').remove();
			content ='';
			content +='<div id="" class="planroute_'+diveplus+'" style="height: 105px; width:100%;">';
				content +='<div class="row" style="margin-left:5px;">';
					content += '<div class="col-md-4 col-sm-4 col-xs-12 text-center" style="margin-top:15px; height:auto">';               
					/* content += '<div class="btn-group" style="height: auto; border: 4px solid #3ad195; padding: 4px;">';
					if(days==1){ 
						content += '<a href="#" id="planselect" class="dmbutton" style="color:black;"> 당일치기 </a>';				  
						//content += '<select id="planselect" class="dmbutton"><option value="1">당일치기</option></select>';
					}
					else {
						content += '<a href="#" id="planselect" class="dmbutton dropdown-toggle" data-toggle="dropdown" style="color:black;"> 1일차 </a>';               
						content += '<ul class="dropdown-menu" id="planselectday">';
						for(var i=2; i<=days; i++){                     
							content += '<li>'+i+'일차</li>';
						}
						content += '<li> 숙박</li>';
						content += '</ul>';
					}
					content +='</div>'; */
					content += '<div class="dayselect text-center" style="height: 75px; border: 4px solid #3ad195; padding: 4px; ">';	               
						content +='<select name="dayselect" id="dayselect" class="dmbutton">';
						for(var i=1; i<=days; i++){ content += '<option value="'+i+'">♬ '+i+'일차</option>'; }
						//if(days!=1){ content += '<option value="">숙 박</option>'; }
						content +='</select>';	               
					content += '</div>';
				content += '</div>';
				content += '<div class="col-md-8 col-sm-8 col-xs-12">';
					content += '<div style="float:left; width: auto; display:block; margin-top: 8px;">';
						content += '<div class="text-left">';
							content += '<label>지역:</label>&nbsp;<font>'+keyword+'</font><input type="hidden" class="areacode" value="'+$('#paldoNcity').val()+'"><input type="hidden" class="sigungucode" value="'+$('#paldoNcityColumn').val()+'"><br/>';
							content += '<input type="hidden" class="contentnumber" value="'+document.getElementById('contentid_'+index).value+'">';
							content += '<label>관광지: </label><font class="contentTitle">'+ document.getElementById('titleforNewInfo_'+index).title+'</font>&nbsp;<a class="btnDel deletePlanRoute_'+diveplus+'" href="javascript:deletePlanRoute('+diveplus+')" id=""  title="'+diveplus+'" >'; // <a class="btnDel deletePlanRoute_'+diveplus+'" href="javascript:" onclick="deletePlanRoute('+diveplus+')" id=""  title="'+diveplus+'" >';
							content += '<font style="font-size: 9pt; color: #c0c0c0"><i class="fa fa-times-circle"></i></font></a><br/>';//<input type="hidden" id="deleteplanroute">
							content += '<label> 거리: </label>&nbsp;<font class="planroadtext">'+distance+'m</font><input type="hidden" class=contenttype value="'+document.getElementById('contenttype').value+'">';
							if(walkkTime > 60) {content += '&nbsp;<label> 도보: </label>&nbsp;<font class="planwalktime"> 1시간이상 </font> <br/>';} // 도보 한시간 이상일떄                     
							else {content += '&nbsp;<label> 도보: </label>&nbsp;<font class="planwalktime"> '+ walkkTime +' 분</font> <br/>';} // 도보가 한시간 미만 일때
							if(carTime <= 0){content += '&nbsp;<label> 승용차: </label>&nbsp;<font class="plancartime"> 0분 </font>';}
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
		content += '</div>';
		//diveplus++; // div 생성 번호         
		}
		$('#cityroute').append(content);
		console.log('diveplus(1) '+ diveplus + '// plancase(1) '+ plancase);
	}
	/* ************* 추가 버튼 클릭시 추가 되는 함수 종료 ************** */
	
	/* **************** plan route div 삭제 함수 시작 ***************** */
	function deletePlanRoute(diveplus){   
		console.log('○○○○○○○○○○○○○○○○○○○○○○ deletePlanRoute 시작 ○○○○○○○○○○○○○○○○○○○○○');
		console.log('deletePlanRoute // diveplus = delete함수로 보낸 값(2전) '+ diveplus + '//plancase(2전) '+ plancase);
		var diveplusFortitle = $('.deletePlanRoute_'+diveplus).attr('title');
		console.log('diveplus(2후) '+ diveplus + '//plancase(2후) '+ plancase+"//diveplusFortitle※: "+ diveplusFortitle);
		for(var i=0; i<planmarking.length; i++){
			planmarking[i].setMap(null);         
		}// 삭제할 플랜 정보의 마커 삭제
      
		console.log("positions전: "+positions.length+"//positions[diveplus]: "+ positions[diveplus].title);
		polyline.setMap(null);// 맵에 그려진 라인 삭제
		positions.splice(diveplus, 1);//좌표 삭제
		linePath.splice(diveplus, 1); // 라인 삭제
		infowindowarr.splice(diveplus,1); // infowindow 삭제 
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
		
		// 지금 삭제한 다이브의 번호를 보낸다. 
		plandivCountdown(diveplus, diveplusFortitle) // 다이브에 부여 한 넘버를 가져감.
		
		//[기존에있던 코드 ]
		//plancase--;
		//console.log(plancase);
      
      
		/* ****************** 마커 삭제후 여행거리 재산출하여 수정 ******************* */
		//거리 font class name = planroadtext
		//도보 font class name = planwalktime
		//자동자 font class name = plancartime
		//변수 
		//   거리정보 = distance
		//   도보정보 = walkkTime
		//   승용차     = carhourTime (시간)
		//           = carTime (분)
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
		if(positions.length ==1 || $('.planroute_0')){
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
	function plandivCountdown(diveplus, diveplusFortitle){
		console.log('○○○○○○○○○○○○○○○○○○○○○○ plandivCountdown 시작 ○○○○○○○○○○○○○○○○○○○○○')      
		console.log('plandivCountdown//plancase(3)== '+ plancase +'//diveplusFortitle!! '+diveplusFortitle+"diveplus"+diveplus);
		/**************사용자가 추가한 여행일적 계획 삭제시 남아있는 div 의 번호 재정렬 ************  */
      
		for(var i=0; i<plancase-1; i++){                           
			console.log('planidvCountdown 변경되어야할 다이브의 인덱스 번호 i]'+i+'★');
			if(typeof $('.planroute_'+(i)).attr('class') == "undefined" || 
						$('.planroute_'+(i)).attr('class')==null || 
						$('.planroute_'+(i)).attr('class')==undefined || 
						typeof $('.planroute_'+(i)).attr('class') === "undefined" ||				
						$('.planroute_'+(i)).attr('class')===undefined){
				var next = i+1;
				console.log('undefined 인식함?'+next);
				//$('.planroute_'+(next)).prop('class','planroute_'+i);
				// 바깥 다이브 class 정리 
				$('.planroute_'+next).addClass('planroute_'+i);
				$('.planroute_'+i).removeClass('planroute_'+next);
				//  a 태그의  속성 조정 
				//$('a.deletePlanRoute_'+(next)).prop('class', 'btnDel deletePlanRoute_'+i);
				$('.deletePlanRoute_'+next).addClass('deletePlanRoute_'+i);
				$('.deletePlanRoute_'+i).removeClass('deletePlanRoute_'+next);
				$('a.deletePlanRoute_'+i).prop('title',i);
				$('a.deletePlanRoute_'+i).prop('href', 'javascript:deletePlanRoute('+i+');');
				console.log('■ ■ ■ ■ ■ deletePlanRoute의 href ]'+$('a.deletePlanRoute_'+i).prop('href')+"■ ■ ■ ■ ■");
			}
			else {
				continue;
			}         
        
		}// 여행일정 div number 재정비
		/**************사용자가 추가한 여행일정 계획 삭제시 남아있는 div 의 번호 재정렬 ************  */
		plancase--;
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
			//ui 태그 id: peopletype, 표시할 image태그 id: tourtypeimage 
			$('#tourtypeimage').attr('src',$(this).attr('src')).attr('alt',$(this).attr('alt')).css('height',80);
			$('#caret').attr('class','');
			$('#tourtype').css('padding',0).css( 'height' ,'auto');
		});
		/********************  이미지 선택 박스 출력 시작 *******************/
      
		
		/* ********** 동적할당으로 생성된 div에 이벤트 할당하기 ********* */		
		$(document).on('change','#dayselect',function(){
			//console.log("읽음..?"+plancase) //전체 plancase의 개 수 읽었음.			
			for(var i=0; i< plancase; i++){
				if($('.planroute_'+(i-1)+' #dayselect').val() > $('.planroute_'+i+' #dayselect').val()){ 
					alert('후일정보다 높은 일차수를 선택할수없습니다.');
					$(this).val($('.planroute_'+i+' #dayselect').val());
					return false;
				}
				/* if($('.planroute_'+i+' #dayselect').val() > $('.planroute_'+(i+1)+' #dayselect').val()){
					alert('선일정보다 낮은 차수를 선택할수없습니다.');
					$(this).val($('.planroute_'+i+' #dayselect').val());
					return false;
				} */
			}
		});
		/* ********** 동적할당으로 생성된 div에 이벤트 할당하기 ********* */
		
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
		}
		else {
			window.onload = function() {
				if (oldonload) { oldonload(); }
				func();
			}
		}
	}
	addLoadEvent(function() {
		autoDate();
	});
   
	/* ************************************* 상세정보 입력 란의 오늘 일자 정보 출력 종료 ******************************************* */
   
	var jsonforTourInfo;
	var infowindowexit; // 마커 생성 이후 infowindow를 닫기 위한 변수
	$(function() {
		var mapx=[];
		var mapy=[];
		
		$('.routecategory').click(function() {
			if(days==1 && $(this).val()==32){
				alert('당일 여행은 숙박지를 선택할수 없습니다.'); 
				changeCategoryClass(); 
				return false; 
			}
			console.log('들어옴1: '+$(this).val());
			var areacode = $('#paldoNcity option:selected').val(); // 여행 지역 코드 저장
			var sigungucode = $('#paldoNcityColumn option:selected').val(); // 여행 시군구 코드 저장
			var areacodename = $('#paldoNcity option:selected').html(); // 여행 지역 이름 저장
			var sigungucodename = $('#paldoNcityColumn option:selected').html(); // 여행 지역 시군구 이름 저장
			categoryaction();
			function categoryaction(){
				ps = new daum.maps.services.Places();
				keyword = areacodename +' '+sigungucodename;
				document.getElementById('keyword').value = "";            
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
         
			$.ajax({
	            url: "<c:url value='/planner/plan/routecategory.it?areacode="+areacode+"&sigungucode="+sigungucode+"&areacodename="+areacodename+"&sigungucodename="+sigungucodename+"'/>",            
	            dataType: 'json',
	            data:{contenttype:$(this).val()},
	            success: successPlanmapdata,
	            error: function(request, status, error){
					console.log(request, status, error);
					alert('검색 결과가 없습니다.')
					changeCategoryClass();
				}
			});///ajax
		});
       
		var successPlanmapdata = function(data){
			console.log(JSON.stringify(data));
            var order = document.getElementById(currCategory).getAttribute('data-order');
			console.log("order 순서 확인하자: "+document.getElementById(currCategory).getAttribute('data-order'));
			$.each(data, function(index, content) {             
				mapx.push(content['mapx']);
				mapy.push(content['mapy']);             
				//////////////////////////////////////////
				//console.log(index)
				//마커 생성
				var marker = addMarker(new daum.maps.LatLng(content['mapy'], content['mapx']), order, null);                            
				marker.setMap(map);
				// console.log('index?'+index);
				// 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
				var iwContent = '<div class="categoryinfo_wrap categoryinfo">'
					+'<div style="padding:5px;"><span id="titleforNewInfo_'+index+'" title="'+content['title']+'">'+content['title'] +'</span>'
					+'<span title="' + content['addr1'] + '">' + content['addr1'] + '</span><input type="hidden" id="contentid_'+index+'" title="'+content['contentid']+'" value="'+content['contentid']+'"> '
					+'  <span class="jibun" title="' + content['zipcode'] + '">(지번 : ' + content['zipcode'] + ')</span><input type="hidden" id=contenttype value="'+content['contenttype']+'">';
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
					infowindowexit = infowindow;
				});
				
			});
		};       
       
		/* ********** 카테고리 범위 영역 선택을 위한 ajax ********** */
		$('#paldoNcity').change(function(){
			$.ajax({
				url:'<c:url value="/planner/ajax/location.it"/>',
				type:'post',
				data:{paldoNcity:$('#paldoNcity').val()},
				dataType:'json',
				success:function(data){
					var optionString ="";
					//{d01:'C#', d02:'ASP.NET',d03:'WPF4'}
					$.each(data, function(key, value){                  
						optionString +="<option value='"+key+"'>"+value+"</option>";
					});
					$('#paldoNcityColumn').html(optionString);
				},
				error:function(request, error){
					console.log('상태코드: ',request.status);
					console.log('서버로 부터 받은 데이터: ',request.responseText);
					console.log('에러: ',error);
				}
			});
		});
		/* ********** 카테고리 범위 영역 선택을 위한 ajax ********** */
	});     

	
	/* ****** route 정보 저장 및 schedule 페이지 이동 ****** */		
	function movescheduleAction() {	
		//var formdata = new FormData();
		//여행 타입 및 여행 일정 작성 미진행시 팝업창 출력
		if(($('#thedate').val() == null || $('#thedate').val()=='') && $('#tourtypeimage').attr('alt') =='타입'){
			alert('여행 출발일과 여행인원 타입이 선택되지 않았습니다. ')
		}
		else if($('#thedate').val() == null || $('#thedate').val()==''){ alert('여행 출발일을 선택해주세요') }
		else if($('#tourtypeimage').attr('alt') =='타입'){ alert('여행 인원 타입을 선택해주세요') }
		else if(plancase ==0){alert('작성된 여행 일정이 없습니다.')}
		//일정 페이지로 이동 + 데이터 전달할것 작성
		else{	
			//날짜 변환
			var userplandate = $('#thedate').val()
			var year = userplandate.substr(2, 2);
			var month = userplandate.substr(6, 2);
			var day = userplandate.substr(10, 2);			
			var depart = year+'/'+month+'/'+day;
			//지역코드 저장
			var areacode = $('#paldoNcity').val();
			//여행인원 타입 설정
			var tourtype = $('#tourtypeimage').attr('alt');
			//여행 플랜 저장			
			var route=[];
			var schedulecontent ='';
			for(var i=0; i<plancase; i++){
				var routeCase='';
				//console.log('일수들어오나?: '+days);
				if(i==0){
					routeCase += $('.planroute_'+i+' #dayselect').val();
					routeCase += "#"+$('.planroute_'+i+' .areacode').val()+":"
					+$('.planroute_'+i+' .sigungucode').val()+':'+$('.planroute_'+i+' .contentnumber').val()+":"
					+$('.planroute_'+i+' .contentTitle').text()+":todo_0:todomemo_0:";
					if($('.planroute_'+i+' .contenttype').val()==32){routeCase+='1';}
					else{routeCase+='0';}					
					console.log(routeCase);
				}
				else if($('.planroute_'+(i-1)+' #dayselect').val() == $('.planroute_'+i+' #dayselect').val()){					
					routeCase += "#"+$('.planroute_'+i+' .areacode').val()+":"
					+$('.planroute_'+i+' .sigungucode').val()+':'+$('.planroute_'+i+' .contentnumber').val()+":"
					+$('.planroute_'+i+' .contentTitle').text()+":todo_"+i+":todomemo_"+i+":";
					if($('.planroute_'+i+' .contenttype').val()==32){ routeCase+='1'; }
					else{ routeCase+='0'; }					
					console.log(routeCase);
				}
				else if($('.planroute_'+(i-1)+' #dayselect').val() != $('.planroute_'+i+' #dayselect').val()){
					routeCase +="@"+ $('.planroute_'+i+' #dayselect').val()+"#"+$('.planroute_'+i+' .areacode').val()+":"
					+$('.planroute_'+i+' .sigungucode').val()+':'+$('.planroute_'+i+' .contentnumber').val()+":"
					+$('.planroute_'+i+' .contentTitle').text()+":todo_"+i+":todomemo_"+i+":";
					if($('.planroute_'+i+' .contenttype').val()==32){ routeCase+='1'; }
					else{routeCase+='0';}						
					console.log(routeCase);
				}
				console.log('route_'+i);
				//formdata.append("route_"+i,routeCase);
				schedulecontent +='<input type="hidden" id="route_'+i+'" name="route_'+i+'" value="'+routeCase+'">';
			}
			
			
			/* formdata.append("days", days); 			
			formdata.append("depart",depart); 
			formdata.append("tourtype", tourtype);
			formdata.append("plancase", plancase); 
			formdata.append("areacode", areacode); */
			
			//스케줄 페이지로 데이터 전달
			schedulecontent +='<input type="hidden" id="days" name="days" value="'+days+'">'; // 여행 총 일수  저장
			schedulecontent +='<input type="hidden" id="depart" name="depart" value="'+depart+'">';// 사용자가 선택한 여행 출발 일자 저장
			schedulecontent +='<input type="hidden" id="tourtype" name="tourtype" value="'+tourtype+'">'; //사용자가 선택한 여행 타입 저장
			schedulecontent +='<input type="hidden" id="plancase" name="plancase" value="'+plancase+'">';// 총일정 개수
			schedulecontent +='<input type="hidden" id="areacode" name="areacode" value="'+areacode+'">';// 사용자가 선택한 지역코드저장
			
			$('#scheduleData').append(schedulecontent);
			$('#scheduleData').attr("action", "<c:url value='/planner/plan/schedule.it'/>");
			//alert('저장 되엇습니다.')
			//console.log($('#scheduleData').html());
			/* $.ajax({
				url:"<c:url value='/planner/plan/scheduleUpload.it'/>",
	            data:formdata,
	            type:'post',
	            processData: false,
	            contentType: false,
	            dataType:'text',
	            success:function(data){	            
	            	console.log(data);
	                   if(confirm('성공적으로 저장되었습니다.')){
	                      //location.replace('<c:url value="/planner/plan/schedule.it"/>');
	                      $('#scheduleData').attr("action", "<c:url value='/planner/plan/schedule.it'/>");
	                      $('#scheduleData').submit();
	                   }
	            },
	            error:function(error, request){
	               console.log(error);
	            }
	            
	         }); */
			$('#scheduleData').submit();
		}
		
	}
	/* ****** route 정보 저장 및 schedule 페이지 이동 ****** */
</script>
<!-- ****************************************************루트 상세 정보 계획 자바 스크립트 종료************************************************************ -->

<!-- 모달 팝업 -->
<div class="modal fade" id="bookmarkmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span>
					<span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title" id="myModalLabel"> 나의 즐겨 찾기 목록 </h4>
			</div>
			<div class="modal-body">
				<div class="row" style="float: inherit; display: block; text-align: center; padding-top: 10px;">
					<h4 style="margin-left: 20px; margin-top:-10px; display: inline-block;"><span id="bookmarkarea"> 검색지역 </span></h4>
					<h4 style="margin-left: 20px; margin-top:-20px; display: inline-block;"><span id="bookmarknum"> 검색결과 </span></h4>
					<div class="select" style="width: 50%; margin-left: 20px; display: inline-block;">
						<select name="bookmarklocation" id="bookmarklocation" style="width: 100%">
							<option value="0" selected>검색 지역 선택 </option>													
					    	<option value="1">서울 특별시</option>					    	
					    	<option value="2">인천 광역시</option>
					    	<option value="3">대전 광역시</option>
					    	<option value="4">대구 광역시</option>
					    	<option value="5">광주 광역시</option>
					    	<option value="6">부산 광역시</option>
					    	<option value="7">울산 광역시</option>
					    	<option value="8">세종 특별 자치시</option>
					    	<option value="31">경기도</option>
					    	<option value="32">강원도</option>
					    	<option value="33">충청북도</option>
					    	<option value="34">충청남도</option>
					    	<option value="35">경상북도</option>
					    	<option value="36">경상남도</option>
					    	<option value="37">전라북도</option>
					    	<option value="38">전라남도</option>
					    	<option value="39">제주도</option>
					    </select>
				    </div>				    				    
			    </div>
			    <hr/>
			    <div class="row">
				    <div class="bookmarklist" style="height: 400px; overflow: auto;">
			    		<!-- <div class="col-md-2 text-center">
					    	<img alt="사진사진" src="" style="display: inline-block; border: 1px gray solid; width: 80px; height: 80px; text-align: center;">
				    		<label>타이틀</label>
			    		</div> -->
				    </div>
			    </div>
			</div>
			<!-- <div class="modal-footer" style="border: 0">
				<button type="button" class="btn btn-primary">확인</button>
				<button type="button" class="btn btn-default" style="flex: unset;" data-dismiss="modal">닫기</button>
			</div> -->
		</div>
	</div>
</div>
<!-- ******** 즐겨찾기 모달 페이지 ********* -->

<!-- ************** 즐겨 찾기 자바 스크립트 ************ -->
<script>
	$('#bookmark').click(function(){
		$('#bookmarklocation option:first').prop('selected', 'selected');
	})

	$('#bookmarklocation').change(function(){
		//alert($('#bookmarklocation option:selected').attr('value'));
		bookmarkString=""; 
		$('.bookmarklist').html(bookmarkString); // 기존 검색 정보 삭제 
		$.ajax({
			url:"<c:url value='/planner/ajax/bookmark.it'/> ",
			data:{areacode:$('#bookmarklocation option:selected').attr('value')},
			type:'post',
			dataType:'json',
			success: successbookmark,
			error: function(request, error){
				//console.log(request,error);
				alert('즐겨 찾기로 추가한 목록이 존재하지 않습니다.');
			}
			
		});		
		
		
		/* <div class="col-md-2 text-center">
	    	<img alt="사진사진" src="" style="display: inline-block; border: 1px gray solid; width: 80px; height: 80px; text-align: center;">
			<label>타이틀</label>
		</div> */
	});
	var bookmarkString="";			
	var successbookmark = function(data){
		//console.log('1: '+data);		
		//console.log('2: '+JSON.stringify(data));
		$.each(data, function(index, bookmark) {
			//console.log(bookmark.size)
			bookmarkString += '<div class="col-md-2 text-center">'
	    					+ '<a class="button" id="bookmarkimgbtn" href="javascript:addbookmark('+index+')"><img alt="이미지 없음" src="'+bookmark['firstimage']+'" style="display: inline-block; border: 1px gray solid; width: 80px; height: 80px; text-align: center;"></a>'
							+ '<span id="title_'+index+'">'+bookmark['title']+'</span>' // id="titleforNewInfo_'+index+'" title="'+bookmark['title']+'"
							+ '</div>'
							+ '<input type="hidden" id="contentid_'+index+'" name="contentid_'+index+'" value="'+bookmark['contentid']+'" >'
							+ '<input type="hidden" id="contenttype_'+index+'" name="contenttype_'+index+'" value="'+bookmark['contenttype']+'">'
							+ '<input type="hidden" id="areacode_'+index+'" name="areacode_'+index+'" value="'+bookmark['areacode']+'">'
							+ '<input type="hidden" id="addr1_'+index+'" name="addr1_'+index+'" value="'+bookmark['addr1']+'">'
							+ '<input type="hidden" id="mapx_'+index+'" name="mapx_'+index+'" value="'+bookmark['mapx']+'">'
							+ '<input type="hidden" id="mapy_'+index+'" name="mapy_'+index+'" value="'+bookmark['mapy']+'">'
							+ '<input type="hidden" id="zipcode_'+index+'" name="zipcode_'+index+'" value="'+bookmark['zipcode']+'">'
							+ '<input type="hidden" id="tel'+index+'" name="tel_'+index+'" value="'+bookmark['tel']+'">'
							;
			
		});
		$('.bookmarklist').append(bookmarkString);
		$('#bookmarknum').text(data.length +'개의 즐겨찾기');
		$('#bookmarkarea').text($('#bookmarklocation option:selected').text())
		
	};
	function modalexit(){
		document.getElementById('bookmarkmodal').click();
	}
	var bookmarkmarker
	function addbookmark(index){ 
		// 모달창 자동으로 닫기
		//$('#bookmarkmodal')
		if(bookmarkmarker != null || bookmarkmarker != undefined){
			bookmarkmarker.setMap(null);
		}
		var bookmarkmarkerPosition = new daum.maps.LatLng($('#mapy_'+index).val(), $('#mapx_'+index).val()); // 마커가 표시될 위치입니다
		console.log('즐겨찾기 마커 위치가 잘못됫다.: '+bookmarkmarkerPosition)
		
		bookmarkmarker = new daum.maps.Marker({ 
			// 지도 중심좌표에 마커를 생성합니다 
			position: bookmarkmarkerPosition   
		});
		function setCenter() {            
		    // 이동할 위도 경도 위치를 생성합니다 
		    var moveLatLon = new daum.maps.LatLng($('#mapy_'+index).val(), $('#mapx_'+index).val());		    
		    // 지도 중심을 이동 시킵니다
		    map.setCenter(moveLatLon);
		}
		bookmarkmarker.setMap(map);      //지도에 마커를 표시합니다
		setCenter();  // 지도 가운데로 이동 시키기
		var bookmarkiwContent=""
		bookmarkiwContent += '<div class="categoryinfo_wrap categoryinfo">'
			+'<div style="padding:5px;"><span id="titleforNewInfo_'+index+'" title="'+$('#title_'+index).text()+'">'+$('#title_'+index).text() +'</span>'
			+'<span title="'+ $('#addt1_'+index).val() +'">' + $('#addr1_'+index).val() + '</span><input type="hidden" id="contentid_'+index+'" title="'+$('#contentid_'+index).val()+'" value="'+$('#contentid_'+index).val()+'"> '
			+'  <span class="jibun" title="' + $('#zipcode_'+index).val() + '">(지번 : ' + $('#zipcode_'+index).val() + ')</span><input type="hidden" id=contenttype value="'+$('#contenttype_'+index).val()+'">';
			if($('#tel_'+index).val() != null){ bookmarkiwContent += '<span class="tel">' + $('#tel_'+index).val() + '</span>';}
			bookmarkiwContent += '<a href="javascript:planplusActionplus('+index+')" id="planplus"><img src="/Planit/images/plan/planplus.png" id="planrouteplusimg"></a>'
			+'</div>'
			+'</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			bookmarkiwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
			
		// 인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
		content : bookmarkiwContent,
		removable : bookmarkiwRemoveable
		});
					
					
		// 마커에 클릭이벤트를 등록합니다
		daum.maps.event.addListener(bookmarkmarker, 'click', function() {
		planposition = bookmarkmarker.getPosition();
		console.log('planposition: '+planposition);
		// 마커 위에 인포윈도우를 표시합니다
		infowindow.open(map, bookmarkmarker);
		infowindowexit = infowindow;
		});
		
		window.onbeforeunload = modalexit();
	}
</script>
<!-- ************** 즐겨 찾기 자바 스크립트 ************ -->

