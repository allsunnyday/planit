package com.earth.planit.service.impl;

import java.util.List;
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
	@Override
	public int getTotalRecordforRequest(Map map) {
		return template.selectOne("PartnerRequestTotal", map);
	}
		//[기업회원 Room 등록용]
	@Override
	public int roomResist(Map map) {
		// TODO Auto-generated method stub
		System.out.println("여기까지 오냐1");
		System.out.println(map.get("p_id"));
		return template.insert("PartnerRoomResist",map);
	}
	
	@Override
	public List<PartnerRoomDTO> partnerRoomList(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("PartnerRoomList",map);
	}
	
	@Override
	public PartnerRoomDTO partnerRoomView(Map map) {
		// TODO Auto-generated method stub
		return template.selectOne("PartnerRoomView",map);
	}
	
	
	
//지인	

	@Override
	public int getTotalRecordforReservation(Map map) {
		return template.selectOne("PartnerReservationTotal", map);
	}

	@Override
	public List<PartnerDTO> selectRequestList(Map map) {
		return template.selectList("PartnerRequestList", map);
	}
	
	@Override
	public List<PartnerDTO> selectReservationList(Map map) {
		return template.selectList("PartnerReservationList", map);
	}

	@Override
	public PartnerDTO selectRequestDetail(Map map) {
		return template.selectOne("PartnerRequestDetail", map);
	}
	@Override
	public PartnerDTO selectReservationDetail(Map map) {
		return template.selectOne("PartnerReservationDetail", map);
	}

	@Override
	public int insert(Map map) {
		template.insert("replyUpdate_step", map);
		int affected = template.update("replyInsert", map);
		return affected;
	}

	@Override
	public int delete(PartnerDTO dto) {
		return template.delete("replyDelete", dto);
	}

	@Override
	public int update(Map map) {
		return template.update("replyUpdate", map);
	}
	
	@Override
	public int reply(Map map) {
		int affected = template.update("replyUpdate", map);
		return affected;
	}

}
