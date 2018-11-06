package com.earth.planit.service;

// 관광정보 
public class ToiletDTO {

	private int toilet_no;
	private String toilet_type;
	private String toilet_nm;
	private String rdnmadr;
	private String lnmadr;
	private String unisex_toilet_yn;
	private int men_toilet_bowl_number;
	private int men_urine_number;
	private int men_handicap_number;
	private int men_handicap_urinal_number;
	private int men_children_number;
	private int men_children_urinal_number;
	private int ladies_toilet_bowl_number;
	private int ladies_handicap_number;
	private int ladies_children_number;
	private String institution_nm; // 기관이름
	private String phone_number;
	private String open_time;
	private String installation_year;
	private String latitude;
	private String longitude;
	private java.sql.Date reference_date;
	private String instt_code;
	private String instt_nm;

	public int getToilet_no() {
		return toilet_no;
	}

	public void setToilet_no(int toilet_no) {
		this.toilet_no = toilet_no;
	}

	public String getToilet_type() {
		return toilet_type;
	}

	public void setToilet_type(String toilet_type) {
		this.toilet_type = toilet_type;
	}

	public String getToilet_nm() {
		return toilet_nm;
	}

	public void setToilet_nm(String toilet_nm) {
		this.toilet_nm = toilet_nm;
	}

	public String getRdnmadr() {
		return rdnmadr;
	}

	public void setRdnmadr(String rdnmadr) {
		this.rdnmadr = rdnmadr;
	}

	public String getLnmadr() {
		return lnmadr;
	}

	public void setLnmadr(String lnmadr) {
		this.lnmadr = lnmadr;
	}

	public String getUnisex_toilet_yn() {
		return unisex_toilet_yn;
	}

	public void setUnisex_toilet_yn(String unisex_toilet_yn) {
		this.unisex_toilet_yn = unisex_toilet_yn;
	}

	public int getMen_toilet_bowl_number() {
		return men_toilet_bowl_number;
	}

	public void setMen_toilet_bowl_number(int men_toilet_bowl_number) {
		this.men_toilet_bowl_number = men_toilet_bowl_number;
	}

	public int getMen_urine_number() {
		return men_urine_number;
	}

	public void setMen_urine_number(int men_urine_number) {
		this.men_urine_number = men_urine_number;
	}

	public int getMen_handicap_number() {
		return men_handicap_number;
	}

	public void setMen_handicap_number(int men_handicap_number) {
		this.men_handicap_number = men_handicap_number;
	}

	public int getMen_handicap_urinal_number() {
		return men_handicap_urinal_number;
	}

	public void setMen_handicap_urinal_number(int men_handicap_urinal_number) {
		this.men_handicap_urinal_number = men_handicap_urinal_number;
	}

	public int getMen_children_number() {
		return men_children_number;
	}

	public void setMen_children_number(int men_children_number) {
		this.men_children_number = men_children_number;
	}

	public int getMen_children_urinal_number() {
		return men_children_urinal_number;
	}

	public void setMen_children_urinal_number(int men_children_urinal_number) {
		this.men_children_urinal_number = men_children_urinal_number;
	}

	public int getLadies_toilet_bowl_number() {
		return ladies_toilet_bowl_number;
	}

	public void setLadies_toilet_bowl_number(int ladies_toilet_bowl_number) {
		this.ladies_toilet_bowl_number = ladies_toilet_bowl_number;
	}

	public int getLadies_handicap_number() {
		return ladies_handicap_number;
	}

	public void setLadies_handicap_number(int ladies_handicap_number) {
		this.ladies_handicap_number = ladies_handicap_number;
	}

	public int getLadies_children_number() {
		return ladies_children_number;
	}

	public void setLadies_children_number(int ladies_children_number) {
		this.ladies_children_number = ladies_children_number;
	}

	public String getInstitution_nm() {
		return institution_nm;
	}

	public void setInstitution_nm(String institution_nm) {
		this.institution_nm = institution_nm;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getOpen_time() {
		return open_time;
	}

	public void setOpen_time(String open_time) {
		this.open_time = open_time;
	}

	public String getInstallation_year() {
		return installation_year;
	}

	public void setInstallation_year(String installation_year) {
		this.installation_year = installation_year;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	
	public java.sql.Date getReference_date() {
		return reference_date;
	}

	public void setReference_date(java.sql.Date reference_date) {
		this.reference_date = reference_date;
	}

	public String getInstt_code() {
		return instt_code;
	}

	public void setInstt_code(String instt_code) {
		this.instt_code = instt_code;
	}

	public String getInstt_nm() {
		return instt_nm;
	}

	public void setInstt_nm(String instt_nm) {
		this.instt_nm = instt_nm;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

}
