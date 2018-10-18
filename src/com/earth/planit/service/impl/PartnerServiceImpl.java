package com.earth.planit.service.impl;

import java.util.List;
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

	public boolean isDuplicate(String p_id) {
		// TODO Auto-generated method stub
		return dao.isDuplicate(p_id);
	}


	@Override
	public int roomResist(Map map) {
		// TODO Auto-generated method stub
		System.out.println(map.get("p_id"));
		return dao.roomResist(map);
	}
	
	public int getTotalRecordforRequestTotal(Map map) {
		return dao.getTotalRecordforRequestTotal(map);

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
	public PartnerRoomDTO partnerRoomView(Map map) {
		// TODO Auto-generated method stub
		System.out.println("여기까지오냐");
		return dao.partnerRoomView(map);
	}

	@Override
	public List<PartnerRoomDTO> partnerRoomList(Map map) {
		// TODO Auto-generated method stub
		return dao.partnerRoomList(map);
	}

}
