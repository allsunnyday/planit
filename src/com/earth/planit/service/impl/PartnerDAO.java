package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.PartnerDTO;
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
		return template.insert("PartnerIsJoin",dto);
	}

	@Override
	public int getTotalRecordforRequestTotal(Map map) {
		return template.selectOne("RequestTotal", map);
	}
	
	public int getTotalRecordforReservation(Map map) {
		return template.selectOne("ReservationTotal", map);
	}

	@Override
	public List<PartnerDTO> selectRequestList(Map map) {
		return template.selectList("PartnerRequestList", map);
	}

}
