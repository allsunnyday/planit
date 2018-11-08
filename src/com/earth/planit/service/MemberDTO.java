package com.earth.planit.service;

import java.sql.Date;

public class MemberDTO {

   //[기본정보]
   private String id;
   private String pwd;
   private String email;
   private String verified;
   private Date regidate;
   private String profile;
   private String self;
   private String gender;
   private String age;
   private String star;
   private String name;
   
   //[선호도]
   private String kor ;
   
   //안드로이드 마이페이지용
   private int totalplanner;
   private int totalreview;
   
   
   
   public String getKor() {
      return kor;
   }
   public void setKor(String kor) {
      this.kor = kor;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   //[게터세터]
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
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
   public String getVerified() {
      return verified;
   }
   public void setVerified(String verified) {
      this.verified = verified;
   }
   public Date getRegidate() {
      return regidate;
   }
   public void setRegidate(Date regidate) {
      this.regidate = regidate;
   }
   public String getProfile() {
      return profile;
   }
   public void setProfile(String profile) {
      this.profile = profile;
   }
   public String getSelf() {
      return self;
   }
   public void setSelf(String self) {
      this.self = self;
   }
   public String getGender() {
      return gender;
   }
   public void setGender(String gender) {
      this.gender = gender;
   }
   public String getAge() {
      return age;
   }
   public void setAge(String age) {
      this.age = age;
   }
   public String getStar() {
      return star;
   }
   public void setStar(String star) {
      this.star = star;
   }
public int getTotalreview() {
	return totalreview;
}
public void setTotalreview(int totalreview) {
	this.totalreview = totalreview;
}
public int getTotalplanner() {
	return totalplanner;
}
public void setTotalplanner(int totalplanner) {
	this.totalplanner = totalplanner;
}


   
}

