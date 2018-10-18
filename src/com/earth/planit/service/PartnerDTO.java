package com.earth.planit.service;

import java.sql.Date;

public class PartnerDTO {
	////// [기업회원]
	private String p_id;
	private String business_no;
	// 비밀번호와 이메일은 멤버테이블 것을 같이사용
	private String pwd;
	private String email;
	private String firstimage;
	// 데이트는 멤버테이블 것을 같이사용
	private Date regidate;
	private String tel;
	private String site;
	private String address;
	private String name;
	private String p_name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	// u_ask_p 를 위한 필수데이터
	private String id;
	private String ask_no;
	private String title;
	private String content;
	private String refer;
	private String step;
	private String depth;
	private String status;
	private java.sql.Date askdate;

	// reservation을 위한 데이터
	private int reservation_id;
	private int planner_id;
	private String roomcode;
	// private String status;
	private java.sql.Date checkin;
	private java.sql.Date checkout;
	private String options;
	private String request;
	private java.sql.Date bookdate;
	
	//방이름을 제공해주기위한 
	private String roomtitle;

	public int getReservation_id() {
		return reservation_id;
	}

	public void setReservation_id(int reservation_id) {
		this.reservation_id = reservation_id;
	}

	public int getPlanner_id() {
		return planner_id;
	}

	public void setPlanner_id(int planner_id) {
		this.planner_id = planner_id;
	}

	public String getRoomcode() {
		return roomcode;
	}

	public void setRoomcode(String roomcode) {
		this.roomcode = roomcode;
	}

	public java.sql.Date getCheckin() {
		return checkin;
	}

	public void setCheckin(java.sql.Date checkin) {
		this.checkin = checkin;
	}

	public java.sql.Date getcheckout() {
		return checkout;
	}

	public void setcheckout(java.sql.Date checkout) {
		this.checkout = checkout;
	}

	public String getOptions() {
		return options;
	}

	public void setOptions(String options) {
		this.options = options;
	}

	public String getRequest() {
		return request;
	}

	public void setRequest(String request) {
		this.request = request;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getBusiness_no() {
		return business_no;
	}

	public void setBusiness_no(String business_no) {
		this.business_no = business_no;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstimage() {
		return firstimage;
	}

	public void setFirstimage(String firstimage) {
		this.firstimage = firstimage;
	}

	public Date getRegidate() {
		return regidate;
	}

	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAsk_no() {
		return ask_no;
	}

	public void setAsk_no(String ask_no) {
		this.ask_no = ask_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRefer() {
		return refer;
	}

	public void setRefer(String refer) {
		this.refer = refer;
	}

	public String getStep() {
		return step;
	}

	public void setStep(String step) {
		this.step = step;
	}

	public String getDepth() {
		return depth;
	}

	public void setDepth(String depth) {
		this.depth = depth;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public java.sql.Date getAskdate() {
		return askdate;
	}

	public void setAskdate(java.sql.Date askdate) {
		this.askdate = askdate;
	}
	public String getRoomtitle() {
		return roomtitle;
	}
	public void setRoomtitle(String roomtitle) {
		this.roomtitle = roomtitle;
	}
	public java.sql.Date getBookdate() {
		return bookdate;
	}
	public void setBookdate(java.sql.Date bookdate) {
		this.bookdate = bookdate;
	}

}
