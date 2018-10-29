package com.earth.planit.service;

public class PartnerRoomDTO {
	private String p_id;//not null_FK
	private String contentid;
	

	private String roomcode;//not null_PK
	private String roomtitle;//not null
	private String roomsize1;//룸 사이즈
	private String roomcount;//룸 갯수
	//----------------------------------------5
	private String roombasecount;//기준인원
	private String roommaxcount;//최대인원
	private String roomoffseasonminfee1;//비수기평일가격
	private String roomoffseasonminfee2;//비수기주말가격
	private String roompeakseasonminfee1;//성수기평일가S격
	//----------------------------------------10
	private String roompeakseasonminfee2;//성수기 주말 가격
	private String roomintro;//객실소개
	private String roombathfacility;//목욕시설여부
	private String roombath;//욕조여부
	private String roomhometheater;//홈시어터여부
	//----------------------------------------15
	private String roomaircondition;//에어컨여부
	private String roomtv;//티비여부
	private String roompc;//pc여부
	private String roomcable;//케이블여부
	private String roominternet;//인터넷 여부
	//----------------------------------------20
	private String roomrefrigerator;//냉장고여부
	private String roomtoiletries;//세면도구여부
	private String roomsofa;//소파여부
	private String roomcook;//소파여부
	private String roomtable;//소파여부
	//----------------------------------------25
	private String roomhairdryer;//소파여부
	private String roomsize2;//평방미터
	private String roomimg1;//소파여부
	private String roomimg2;//소파여부
	private String roomimg3;//소파여부
	//----------------------------------------30
	private String roomimg4;//소파여부
	private String roomimg5;//소파여부
	//----------------------------------------32
	
	
	
	
	
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	public String getRoomcode() {
		return roomcode;
	}
	public void setRoomcode(String roomcode) {
		this.roomcode = roomcode;
	}
	public String getRoomtitle() {
		return roomtitle;
	}
	public void setRoomtitle(String roomtitle) {
		this.roomtitle = roomtitle;
	}
	public String getRoomsize1() {
		return roomsize1;
	}
	public void setRoomsize1(String roomsize1) {
		this.roomsize1 = roomsize1;
	}

	public String getRoomcount() {
		return roomcount;
	}
	public void setRoomcount(String roomcount) {
		this.roomcount = roomcount;
	}
	public String getRoombasecount() {
		return roombasecount;
	}
	public void setRoombasecount(String roombasecount) {
		this.roombasecount = roombasecount;
	}
	public String getRoommaxcount() {
		return roommaxcount;
	}
	public void setRoommaxcount(String roommaxcount) {
		this.roommaxcount = roommaxcount;
	}
	public String getRoomoffseasonminfee1() {
		return roomoffseasonminfee1;
	}
	public void setRoomoffseasonminfee1(String roomoffseasonminfee1) {
		this.roomoffseasonminfee1 = roomoffseasonminfee1;
	}
	public String getRoomoffseasonminfee2() {
		return roomoffseasonminfee2;
	}
	public void setRoomoffseasonminfee2(String roomoffseasonminfee2) {
		this.roomoffseasonminfee2 = roomoffseasonminfee2;
	}
	public String getRoompeakseasonminfee1() {
		return roompeakseasonminfee1;
	}
	public void setRoompeakseasonminfee1(String roompeakseasonminfee1) {
		this.roompeakseasonminfee1 = roompeakseasonminfee1;
	}
	public String getRoompeakseasonminfee2() {
		return roompeakseasonminfee2;
	}
	public void setRoompeakseasonminfee2(String roompeakseasonminfee2) {
		this.roompeakseasonminfee2 = roompeakseasonminfee2;
	}
	public String getRoomintro() {
		return roomintro;
	}
	public void setRoomintro(String roomintro) {
		this.roomintro = roomintro;
	}
	public String getRoombathfacility() {
		return roombathfacility;
	}
	public void setRoombathfacility(String roombathfacility) {
		this.roombathfacility = roombathfacility;
	}
	public String getRoombath() {
		return roombath;
	}
	public void setRoombath(String roombath) {
		this.roombath = roombath;
	}
	public String getRoomhometheater() {
		return roomhometheater;
	}
	public void setRoomhometheater(String roomhometheater) {
		this.roomhometheater = roomhometheater;
	}
	public String getRoomaircondition() {
		return roomaircondition;
	}
	public void setRoomaircondition(String roomaircondition) {
		this.roomaircondition = roomaircondition;
	}
	public String getRoomtv() {
		return roomtv;
	}
	public void setRoomtv(String roomtv) {
		this.roomtv = roomtv;
	}
	public String getRoompc() {
		return roompc;
	}
	public void setRoompc(String roompc) {
		this.roompc = roompc;
	}
	public String getRoomcable() {
		return roomcable;
	}
	public void setRoomcable(String roomcable) {
		this.roomcable = roomcable;
	}
	public String getRoominternet() {
		return roominternet;
	}
	public void setRoominternet(String roominternet) {
		this.roominternet = roominternet;
	}
	public String getRoomrefrigerator() {
		return roomrefrigerator;
	}
	public void setRoomrefrigerator(String roomrefrigerator) {
		this.roomrefrigerator = roomrefrigerator;
	}
	public String getRoomtoiletries() {
		return roomtoiletries;
	}
	public void setRoomtoiletries(String roomtoiletries) {
		this.roomtoiletries = roomtoiletries;
	}
	public String getRoomsofa() {
		return roomsofa;
	}
	public void setRoomsofa(String roomsofa) {
		this.roomsofa = roomsofa;
	}
	public String getRoomcook() {
		return roomcook;
	}
	public void setRoomcook(String roomcook) {
		this.roomcook = roomcook;
	}
	public String getRoomtable() {
		return roomtable;
	}
	public void setRoomtable(String roomtable) {
		this.roomtable = roomtable;
	}
	public String getRoomhairdryer() {
		return roomhairdryer;
	}
	public void setRoomhairdryer(String roomhairdryer) {
		this.roomhairdryer = roomhairdryer;
	}
	public String getRoomsize2() {
		return roomsize2;
	}
	public void setRoomsize2(String roomsize2) {
		this.roomsize2 = roomsize2;
	}
	public String getRoomimg1() {
		return roomimg1;
	}
	public void setRoomimg1(String roomimg1) {
		this.roomimg1 = roomimg1;
	}
	public String getRoomimg2() {
		return roomimg2;
	}
	public void setRoomimg2(String roomimg2) {
		this.roomimg2 = roomimg2;
	}
	public String getRoomimg3() {
		return roomimg3;
	}
	public void setRoomimg3(String roomimg3) {
		this.roomimg3 = roomimg3;
	}
	public String getRoomimg4() {
		return roomimg4;
	}
	public void setRoomimg4(String roomimg4) {
		this.roomimg4 = roomimg4;
	}
	public String getRoomimg5() {
		return roomimg5;
	}
	public void setRoomimg5(String roomimg5) {
		this.roomimg5 = roomimg5;
	}
	public String getContentid() {
		return contentid;
	}
	public void setContentid(String contentid) {
		this.contentid = contentid;
	}
	
	
}
