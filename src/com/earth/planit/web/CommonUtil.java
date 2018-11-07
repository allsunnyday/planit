package com.earth.planit.web;

import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class CommonUtil {
	
	public static String getTagValue(String tag, Element eElement) {
		if(eElement.getElementsByTagName(tag).item(0)==null) return "";
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = nlList.item(0);
		System.out.println("["+tag+"]"+nValue.getNodeValue());
		if(nValue == null) return "";
		
		return nValue.getNodeValue();
	}
	
	public static String pagingText(int totalRecordCount,int pageSize,int blockPage,int nowPage, String page){
		String pagingStr="";
		
		//1.전체 페이지 구하기
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		int intTemp = ((nowPage - 1) / blockPage) * blockPage + 1;

		//처음 및 이전을 위한 로직
		if(intTemp != 1){
                
			pagingStr+="<a href='"+page+"nowPage=1'>◀◀</a>&nbsp;<a href='"+page+"nowPage="+(intTemp -blockPage)+"'>◀</a>";
		}
		
		//페이지 표시 제어를 위한 변수
		int blockCount = 1;
		
		//페이지를 뿌려주는 로직
		//블락 페이지 수만큼 혹은 마지막 페이지가 될때까지 페이지를 표시한다1 
		while(blockCount <= blockPage && intTemp <= totalPage){  // 페이지 오버 를 체크
				//현재 페이지를 의미함
			if(intTemp == nowPage){  
				pagingStr+="<span style='Color:red'>"+intTemp+"</span>&nbsp;";
			}
		     else
		    	 pagingStr+="<a href='"+page+"nowPage="+intTemp+"'>"+intTemp+"</a>&nbsp;";
		       
			intTemp = intTemp + 1;
			blockCount = blockCount + 1;
		
		}

		//다음 및 마지막을 위한 로직
			
		if(intTemp <= totalPage){

			pagingStr+="<a href='"+page+"nowPage="+intTemp+"'>▶</a>&nbsp;<a href='"+page+"nowPage="+totalPage+"'>▶▶</a>"; 

				   
		}
		
		return pagingStr;
	}
	public static String pagingBootStrapStyle(int totalRecordCount,int pageSize,int blockPage,int nowPage,String page){
		
		String pagingStr="<nav class='text-center'><ul class=\"pagination\" >";
		
		//1.전체 페이지 구하기
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		int intTemp = ((nowPage - 1) / blockPage) * blockPage + 1;

		//처음 및 이전을 위한 로직
		if(intTemp != 1){
			pagingStr+="<li >\r\n" + 
					"<a href='"+page+"nowPage=1'>\r\n" + 
					"<span >&laquo;</span>\r\n" + 
					"</a>\r\n" + 
					"</li>\r\n" + 
					"<li >\r\n" + 
					"<a href='"+page+"nowPage="+(intTemp -blockPage)+"' >\r\n" + 
					"<span >&lsaquo;</span>\r\n" + 
					"</a>\r\n" + 
					"</li>";   
			
		}
		
		//페이지 표시 제어를 위한 변수
		int blockCount = 1;
		
		//페이지를 뿌려주는 로직
		//블락 페이지 수만큼 혹은 마지막 페이지가 될때까지 페이지를 표시한다1 
		while(blockCount <= blockPage && intTemp <= totalPage){  // 페이지 오버 를 체크
				//현재 페이지를 의미함
			if(intTemp == nowPage){  
				pagingStr+="<li><a href='#'><span style='Color:red'>"+intTemp+"</span></a></li>";
			}
		     else
		    	 pagingStr+="<li><a href='"+page+"nowPage="+intTemp+"'>"+intTemp+"</a></li>";
		       
			intTemp = intTemp + 1;
			blockCount = blockCount + 1;
		
		}

		//다음 및 마지막을 위한 로직
			
		if(intTemp <= totalPage){
			pagingStr+="<li>\r\n" + 
					"<a class='paging' href='"+page+"nowPage="+intTemp+"'>\r\n" + 
					"<span>&rsaquo;</span>\r\n" + 
					"</a>\r\n" + 
					"</li>\r\n" + 
					"<li>\r\n" + 
					"<a class='paging' href='"+page+"nowPage="+totalPage+"' >\r\n" + 
					"<span >&raquo;</span>\r\n" + 
					"</a>\r\n" + 
					"</li>";
							   
		}
		pagingStr+="</ul></nav>";
		return pagingStr;
	}
	
	
	public static String pagingForTourContent(int totalRecordCount,
											int pageSize,
											int blockPage,
											int nowPage,
											String page,
											String cotenttype,
											String areacode){		
		String pagingStr="<nav class='text-center'><ul class=\"pagination\" >";
		
		//1.전체 페이지 구하기
		int totalPage= (int)(Math.ceil(((double)totalRecordCount/pageSize)));
		
		int intTemp = ((nowPage - 1) / blockPage) * blockPage + 1;

		//처음 및 이전을 위한 로직
		if(intTemp != 1){
			/*pagingStr+="<li >\r\n" + 
					"<a href='"+page+"nowPage=1&contenttype="+cotenttype+"&areacode="+areacode+"'>\r\n" + 
					"<span >&laquo;</span>\r\n" + 
					"</a>\r\n" + 
					"</li>\r\n" + 
					"<li >\r\n" + 
					"<a href='"+page+"nowPage="+(intTemp -blockPage)+"&contenttype="+cotenttype+"&areacode="+areacode+"' >\r\n" + 
					"<span >&lsaquo;</span>\r\n" + 
					"</a>\r\n" + 
					"</li>";   */
			pagingStr+="<li>\r\n" + 
					"<button type='button' class='paging'  title='1'>\r\n" + 
					"<span >&laquo;</span>\r\n" + 
					"</button>\r\n" + 
					"</li>\r\n" + 
					"<li >\r\n" + 
					"<button type='button' class='paging'   title='"+(intTemp -blockPage)+"' >\r\n" + 
					"<span >&lsaquo;</span>\r\n" + 
					"</button>\r\n" + 
					"</li>";   
		}
		
		//페이지 표시 제어를 위한 변수
		int blockCount = 1;
		
		//페이지를 뿌려주는 로직
		//블락 페이지 수만큼 혹은 마지막 페이지가 될때까지 페이지를 표시한다1 
		while(blockCount <= blockPage && intTemp <= totalPage){  // 페이지 오버 를 체크
				//현재 페이지를 의미함
			if(intTemp == nowPage){  
				pagingStr+="<li><button type='button' class='paging'><span style='Color:red'>"+intTemp+"</span></button></li>";
/*				pagingStr+="<li><a href='#'><span style='Color:red'>"+intTemp+"</span></a></li>";
*/			}
		     else
		    	 pagingStr+="<li><button type='button' class='paging'   title='"+intTemp+"'>"+intTemp+"</button></li>";
//			pagingStr+="<li><a href='"+page+"nowPage="+intTemp+"&contenttype="+cotenttype+"&areacode="+areacode+"'>"+intTemp+"</a></li>";
		       
			intTemp = intTemp + 1;
			blockCount = blockCount + 1;
		
		}

		//다음 및 마지막을 위한 로직
			
		if(intTemp <= totalPage){
			pagingStr+="<li>\r\n" + 
					"<button type='button' class='paging' title='"+intTemp+"'>\r\n" + 
					"<span>&rsaquo;</span>\r\n" + 
					"</button>\r\n" + 
					"</li>\r\n" + 
					"<li>\r\n" + 
					"<button type='button' class='paging'  title='"+totalPage+"' >\r\n" + 
					"<span >&raquo;</span>\r\n" + 
					"</button>\r\n" + 
					"</li>";
							   
		}
		pagingStr+="</ul></nav>";
		return pagingStr;
	}

	public static String getTourDetailIntroKorean(String name) {
		
		switch(name) {
		case "accomcount":
			return "수용인원";
		case "chkbabycarriage":
			return "유모차 대여 여부";
		case "chkcreditcard":
			return "신용카드 가능 여부";
		case "chkpet":
			return "애완동물 가능 여부";
		case "expagerange":
			return "체험가능 연령";
		case "expguide":
			return "체험안내";
		case "heritage1":
			return "세계 문화유산 유무";
		case "heritage2":
			return "세계 문화유산 유무";
		case "heritage3":
			return "세계 문화유산 유무";
		case "infocenter":
			return "문의 및 안내";
		case "opendate":
			return "개장일";
		case "parking":
			return "주차시설";
		case "restdate":
			return "쉬는날";
		case "useseason":
			return "이용시기";
		case "usetime":
			return "이용시간";
		case "accomcountculture":
			return "수용인원";
		case "chkbabycarriageculture":
			return "유모차 대여여부";
		case "chkcreditcardculture":
			return "신용카드 가능 여부";
		case "chkpetculture":
			return "애완동물 가능 여부";
		case "discountinfo":
			return "할인정보";
		case "infocenterculture":
			return "문의 및 안내";
		case "parkingculture":
			return "주차시설";
		case "parkingfee":
			return "주차요금";
		case "restdateculture":
			return "쉬는날";
		case "usefee":
			return "이용요금";
		case "usetimeculture":
			return "이용시간";
		case "scale":
			return "규모";
		case "spendtime":
			return "관람 소요시간";
		case "agelimit":
			return "관람 가능연령";
		case "bookingplace":
			return "예매처";
		case "discountinfofestival":
			return "할인정보";
		case "eventenddate":
			return "행사 종료일";
		case "eventhomepage":
			return "행사 종료일";
		case "eventplace":
			return "행사 홈페이지";
		case "eventstartdate":
			return "행사 시작일";
		case "festivalgrade":
			return "축제등급";
		case "placeinfo":
			return "행사장 위치안내";
		case "playtime":
			return "공연시간";
		case "program":
			return "행사 프로그램";
		case "spendtimefestival":
			return "관람 소요시간";
		case "sponsor1":
			return "주최자 정보";
		case "sponsor1tel":
			return "주최자 연락처";
		case "sponsor2":
			return "주최자 정보";
		case "sponsor2tem":
			return "주최자 연락처";
		case "subevent":
			return "부대행사";
		case "usetimefestival":
			return "이용요금";
		case "distance":
			return "코스 총거리";
		case "infocentertourcourse":
			return "문의 및 안내";
		case "schedule":
			return "코스 일정";
		case "taketime":
			return "코스 총 소요시간";
		case "theme":
			return "코스 테마";
		case "accomcountleports":
			return "수용인원";
		case "chkbabycarriageleports":
			return "유모차 대여 여부";
		case "chkcreditcardleports":
			return "신용카드가능 정보";
		case "chkpetleports":
			return "애완동물 동반가능 정보";
			
			
		case "expagerangeleports":
			return "체험 가능연령";
		case "infocenterleports":
			return "문의 및 안내";
		case "openperiod":
			return "개장기간";
		case "parkingfeeleports":
			return "주차요금";
		case "parkingleports":
			return "주차시설";
			
		case "reservation":
			return "예약안내";
		case "restdateleports":
			return "쉬는날";
		case "scaleleports":
			return "규모";
		case "usefeeleports":
			return "입장료";
		case "usetimeleports":
			return "이용시간";
		case "accomcountlodging":
			return "수용 가능인원";
		case "benikia":
			return "베니키아 여부";
		case "checkintime":
			return "입실 시간";
		case "checkouttime":
			return "퇴실 시간";
		case "chkcooking":
			return "객실내 취사 여부";
		case "foodplace":
			return "식음료장";
		case "goodstay":
			return "굿스테이 여부";
		case "hanok":
			return "한옥 여부";
		case "infocenterlodging":
			return "문의 및 안내";
		case "parkinglodging":
			return "주차시설";
		case "pickup":
			return "픽업 서비스";
		case "roomcount":
			return "객실 수";
		case "reservationlodging":
			return "예약안내";
		case "reservationurl":
			return "예약안내 홈페이지";
		case "roomtype":
			return "객실유형";
		case "scalelodging":
			return "규모";
		case "subfacility":
			return "부대시설(기타)";
		case "barbecue":
			return "바비큐장 여부";
		case "beauty":
			return "뷰티시설 정보";
		case "beverage":
			return "식음료장 여부";
		case "bicycle":
			return "자전거 대여 여부";
		case "campfire":
			return "캠프파이어 여부";
		case "fitness":
			return "휘트니스센터 여부";
		case "karaoke":
			return "노래방 여부";
		case "publicbath":
			return "공용 샤워실 여부";
		case "publicpc":
			return "공용 PC실 여부";
		case "sauna":
			return "사우나실 여부";
		case "seminar":
			return "세미나실 여부";
		case "sports":
			return "스포츠 시설 여부";
		case "chkbabycarriageshopping":
			return "유모차대여 정보";
		case "chkcreditcardshopping":
			return "신용카드가능 정보";
		case "chkpetshopping":
			return "애완동물 동반가능 정보";
		case "culturecenter":
			return "문화센터 바로가기";
		case "fairday":
			return "장서는 날";
		case "infocentershopping":
			return "문의 및 안내";
		case "opendateshopping":
			return "개장일";
		case "opentime":
			return "영업시간";
		case "parkingshopping":
			return "주차시설";
		case "restdateshopping":
			return "쉬는날";
		case "restroom":
			return "화장실 설명";
		case "saleitem":
			return "판매 품목";
		case "saleitemcost":
			return "판매 품목별 가격";
		case "scaleshopping":
			return "규모 ";
		case "shopguide":
			return "매장안내";
		case "chkcreditcardfood":
			return "신용카드가능 정보";
		case "discountinfofood":
			return "할인정보";
		case "firstmenu":
			return "대표 메뉴";
		case "infocenterfood":
			return "문의 및 안내";
		case "kidsfacility":
			return "어린이 놀이방 여부";
		case "opendatefood":
			return "개업일";
		case "opentimefood":
			return "영업시간";
		case "packing":
			return "포장 가능";
		case "parkingfood":
			return "주차시설";
		case "reservationfood":
			return "예약안내";
		case "restdatefood":
			return "쉬는날";
		case "scalefood":
			return "규모";
		case "seat":
			return "좌석수";
		case "smoking":
			return "금연/흡연 여부";
		case "treatmenu":
			return "취급 메뉴";
		default:
			return "기타";
		}////////////switch
		
	}/////////////////////////////////////////////////////////////getTourDetailIntroKorean
	
	
}
