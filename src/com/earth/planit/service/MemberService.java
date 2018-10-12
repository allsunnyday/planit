package com.earth.planit.service;

import java.util.Map;

public interface MemberService {
	//로그인 처리
	boolean isLogin(Map map);
	
	//회원가입_int로 해야하나..
	int isJoin(MemberDTO dto);
	
	
	
}
