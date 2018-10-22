package com.earth.planit.service;

import java.util.List;
import java.util.Map;

public interface MemberService {
	//[로그인 처리]
	boolean isLogin(Map map);
	
	//[회원가입]_int로 해야하나..
	int isJoin(MemberDTO dto);
	// 회원가입 후 preference테이블에 컬럼 추가 
	int insertPreference(Map map);
	
	//[회원개인정보를 담을 컬렉션]
	MemberDTO memberInfo(Map map);
	//List<MemberDTO> memberInfo(Map map);
	
	//[아이디 중복검사]
	boolean idDuplicate(String id);
	
	// [마이페이지-사진수정용]
	int updateProfile(Map map);

	//[회원의 리뷰정보를 담을 리스트]
	List<ReviewDTO> memberReviewList(Map map);
	
	//[회원의 MyPageHome Review용 리스트]
	List<ReviewDTO> homeReviewList(Map map);
	//[회원의 MyPageHome QNA용 리스트]
	List<FaqNoticeDTO> homeQNAList(Map map);
	
	//[회원 QnA정보를 담을 리스트]
	List<FaqNoticeDTO> memberQnAList(Map map);
	
	//[페이징용]
	int getTotalCount(Map map);
	
	//[Liked Tour]
	Map memberLikedTour(Map map);
	
	//[선호도 노출]
	List<MemberDTO> memberPreferList(Map map);
	
	//[회원가입 후 선호도 업데이트]
	int updateProference(Map map);
}
