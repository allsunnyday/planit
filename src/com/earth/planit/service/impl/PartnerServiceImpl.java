package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.PartnerDTO;
import com.earth.planit.service.PartnerService;
@Service("partnerService")
public class PartnerServiceImpl implements PartnerService{
	
	@Resource(name="partnerDAO")
	private PartnerDAO dao;
	
	@Override
	public boolean isPartnerLogin(Map map) {
		return dao.isPartnerLogin(map);
	}

	@Override
	public int isPartnerJoin(PartnerDTO dto) {
		return dao.isPartnerJoin(dto);
	}

	@Override
	public PartnerDTO partnerInfo(Map map) {
		// TODO Auto-generated method stub
		return dao.partnerInfo(map);
	}

	@Override
	public boolean isDuplicate(Map map) {
		return dao.isDuplicate(map);
	}
	public int getTotalRecordforRequestTotal(Map map) {
		return dao.getTotalRecordforRequestTotal(map);
	}

	@Override
	public List<PartnerDTO> selectRequestList(Map map) {
		return dao.selectRequestList(map);
	}
	
	public int getTotalRecordforReservation(Map map) {
		return dao.getTotalRecordforReservation(map);
	}

}
