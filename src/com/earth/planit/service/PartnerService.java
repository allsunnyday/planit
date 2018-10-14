package com.earth.planit.service;

import java.util.List;
import java.util.Map;

public interface PartnerService {
	//로그인 처리
		boolean isPartnerLogin(Map map);
		
		//회원가입_int로 해야하나..
		int isPartnerJoin(PartnerDTO dto);

		int getTotalRecordforRequestTotal(Map map);

		List<PartnerDTO> selectRequestList(Map map);
		
}
