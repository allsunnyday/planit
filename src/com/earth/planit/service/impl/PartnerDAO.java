package com.earth.planit.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.PartnerDTO;
import com.earth.planit.service.PartnerRoomDTO;
import com.earth.planit.service.PartnerService;
@Repository
public class PartnerDAO implements PartnerService{
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public boolean isPartnerLogin(Map map) {
		int count = template.selectOne("PartnerIsLogin", map);
		return count==1?true:false;
	}

	@Override
	public int isPartnerJoin(PartnerDTO dto) {
		// TODO Auto-generated method stub
		return template.insert("PartnerIsJoin",dto);
	}

	@Override
	public PartnerDTO partnerInfo(Map map) {
		// TODO Auto-generated method stub
		return template.selectOne("PartnerInformation",map);
	}
//[아이디 중복검사용 ]
	@Override
	public boolean isDuplicate(String p_id) {
		int count=template.selectOne("partnerIsDuplicate",p_id);
		return count==0?true:false;
	}
//[기업회원 Room 등록용]
	@Override
	public int roomResist(PartnerRoomDTO dto) {
		// TODO Auto-generated method stub
		return template.insert("PartnerRoomResist",dto);
	}
	
	
	

}
