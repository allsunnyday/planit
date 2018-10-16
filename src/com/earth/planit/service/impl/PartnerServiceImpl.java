package com.earth.planit.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.PartnerDTO;
import com.earth.planit.service.PartnerRoomDTO;
import com.earth.planit.service.PartnerService;
@Service("partnerService")
public class PartnerServiceImpl implements PartnerService{
	@Resource(name="partnerDAO")
	private PartnerDAO dao;
	@Override
	public boolean isPartnerLogin(Map map) {
		// TODO Auto-generated method stub
		return dao.isPartnerLogin(map);
	}

	@Override
	public int isPartnerJoin(PartnerDTO dto) {
		// TODO Auto-generated method stub
		return dao.isPartnerJoin(dto);
	}

	@Override
	public PartnerDTO partnerInfo(Map map) {
		// TODO Auto-generated method stub
		return dao.partnerInfo(map);
	}

	@Override
	public boolean isDuplicate(String p_id) {
		// TODO Auto-generated method stub
		return dao.isDuplicate(p_id);
	}

	@Override
	public int roomResist(PartnerRoomDTO dto) {
		// TODO Auto-generated method stub
		return dao.roomResist(dto);
	}

}
