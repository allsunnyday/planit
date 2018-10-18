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
	
	@Override
	public int getTotalRecordforRequest(Map map) {
		return dao.getTotalRecordforRequest(map);
	}

	@Override
	public List<PartnerDTO> selectRequestList(Map map) {
		return dao.selectRequestList(map);
	}
	@Override
	public int getTotalRecordforReservation(Map map) {
		return dao.getTotalRecordforReservation(map);
	}
	@Override
	public PartnerDTO selectRequestDetail(Map map) {
		return dao.selectRequestDetail(map);
	}

	@Override
	public List<PartnerDTO> selectReservationList(Map map) {
		return dao.selectReservationList(map);
	}
	@Override
	public PartnerDTO selectReservationDetail(Map map) {
		return dao.selectReservationDetail(map);
	}

	/* reply용 crud */
	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int delete(PartnerDTO dto) {
		return dao.delete(dto);
	}

	@Override
	public int update(Map map) {
		return dao.update(map);
	}

	@Override
	public int reply(Map map) {
		return dao.reply(map);
	}
	

}
