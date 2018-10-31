package com.earth.planit.service;

public class PlannerDTO {
	
//	****************  컨텐츠 map api 와 연동할 db 목록들
	private String contentid; // 관광번호?
	private String contenttype; // 관광분류 번호 (관광지, 문화지, 행사 등)
	//private String homepage; // 관광지의 홈페이지 / 다 널인데..?;;
	private String tel; // 전화번호 정보	
	private String title; // 관광지 이름
	private String areacode; // 지역 번호
	private String sigungucode; // 시군구 코드
	private String addr1; // 주소1
	private String addr2; // 주소2
	private String zipcode; // 우편 번호
	private String mapx; //  (y, x )배치해야함
	private String mapy; //  ( y, x ) 배치해야함
	
//	planner 계획 저장db
	private String route; //루트 저장	
	private String days; // 총 여행 일정 
	private String depart; // 여행 출발 일자
	private String tourtype; // 여행 타입
	
//	review table db 저장용
	private String planner_id;
	private String reviewtitle; // review title 저장용
	private String reviewroute; // review 루트 저장용
	private String series; // 몇일차 인지 저장용
	
//	review_content db 저장용
	private String review_id; // 
	
//	사용자 id
	private String id;

//	이미지정보 호출
	private String firstimage;
	private String firstimage2;
	
	//	**************    컨텐츠 map api 와 연동할 db 목록들 게터 세터
	
	public String getPlanner_id() {
		return planner_id;
	}
	public String getFirstimage() {
		return firstimage;
	}
	public void setFirstimage(String firstimage) {
		this.firstimage = firstimage;
	}
	public String getFirstimage2() {
		return firstimage2;
	}
	public void setFirstimage2(String firstimage2) {
		this.firstimage2 = firstimage2;
	}
	public void setPlanner_id(String planner_id) {
		this.planner_id = planner_id;
	}
	public String getReviewtitle() {
		return reviewtitle;
	}
	public void setReviewtitle(String reviewtitle) {
		this.reviewtitle = reviewtitle;
	}
	public String getReviewroute() {
		return reviewroute;
	}
	public void setReviewroute(String reviewroute) {
		this.reviewroute = reviewroute;
	}
	public String getSeries() {
		return series;
	}
	public void setSeries(String series) {
		this.series = series;
	}
	public String getReview_id() {
		return review_id;
	}
	public void setReview_id(String review_id) {
		this.review_id = review_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	public String getTourtype() {
		return tourtype;
	}
	public void setTourtype(String tourtype) {
		this.tourtype = tourtype;
	}
	public String getContentid() {
		return contentid;
	}
	public void setContentid(String contentid) {
		this.contentid = contentid;
	}
	public String getContenttype() {
		return contenttype;
	}
	public void setContenttype(String contenttype) {
		this.contenttype = contenttype;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAreacode() {
		return areacode;
	}
	public void setAreacode(String areacode) {
		this.areacode = areacode;
	}
	public String getSigungucode() {
		return sigungucode;
	}
	public void setSigungucode(String sigungucode) {
		this.sigungucode = sigungucode;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getMapx() {
		return mapx;
	}
	public void setMapx(String mapx) {
		this.mapx = mapx;
	}
	public String getMapy() {
		return mapy;
	}
	public void setMapy(String mapy) {
		this.mapy = mapy;
	}
	
//	

	
}//PlannerDTO
