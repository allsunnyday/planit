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

}
