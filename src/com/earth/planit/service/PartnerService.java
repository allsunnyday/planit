package com.earth.planit.service;

import java.util.List;
import java.util.Map;

public interface PartnerService {
	//로그인 처리
	boolean isPartnerLogin(Map map);
		
	//회원가입_int로 해야하나..
	int isPartnerJoin(PartnerDTO dto);
	//아이디 중복검사
	boolean isDuplicate(Map map);
	//회원개인정보를 담을 컬렉션
	PartnerDTO partnerInfo(Map map);
	//List<PartnerDTO> partnerInfo(Map map);

	int getTotalRecordforRequest(Map map);
	
	List<PartnerDTO> selectRequestList(Map map);

	int getTotalRecordforReservation(Map map);
		
	PartnerDTO selectRequestDetail(Map map);

	List<PartnerDTO> selectReservationList(Map map);

	PartnerDTO selectReservationDetail(Map map);
	
	
	//입력/수정/삭제]
	int insert(Map map);
	int delete(PartnerDTO dto);
	int update(Map map);

	int reply(Map map);
	
	
}
