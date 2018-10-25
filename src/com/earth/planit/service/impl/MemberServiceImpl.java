package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.FaqNoticeDTO;
import com.earth.planit.service.MemberDTO;
import com.earth.planit.service.MemberService;
import com.earth.planit.service.ReviewDTO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	/*DAO객체 주입 , 이름을 따로 설정하지 않을 경우에는 첫글자는 소문자로 변한 이름이 name값이 된다. */
	@Resource(name="memberDAO")
	private MemberDAO dao;
	
	@Override
	public boolean isLogin(Map map) {
		return dao.isLogin(map);
	}

	@Override
	public int isJoin(MemberDTO dto) {
		//[회원가입]
		return dao.isJoin(dto);
	}

	@Override
	public MemberDTO memberInfo(Map map) {
		// TODO Auto-generated method stub
		return dao.memberInfo(map);
	}

	@Override
	public boolean idDuplicate(String id) {
		// TODO Auto-generated method stub
		return dao.idDuplicate(id);
	}

	@Override
	public int insertPreference(Map map) {
		return dao.insertPreference(map);
	}

	@Override
	public int updateProfile(Map map) {
		// [프로필 수정]
		return dao.updateProfile(map);
	}

	@Override
	public List<ReviewDTO> memberReviewList(Map map) {
		//[리뷰가져오기]
		return dao.memberReviewList(map);
	}

	@Override
	public List<ReviewDTO> homeReviewList(Map map) {
		// TODO Auto-generated method stub
		return dao.homeReviewList(map);
	}

	@Override
	public List<FaqNoticeDTO> homeQNAList(Map map) {
		// TODO Auto-generated method stub
		return dao.homeQNAList(map);
	}

	@Override
	public List<FaqNoticeDTO> memberQnAList(Map map) {
		// TODO Auto-generated method stub
		return dao.memberQnAList(map);
	}

	@Override
	public int getTotalCount(Map map) {
		// TODO Auto-generated method stub
		return dao.getTotalCount(map);
	}

	@Override
	public List<Map> memberLikedTour(Map map) {
		// TODO Auto-generated method stub
		return dao.memberLikedTour(map);
	}

	@Override
	public List<MemberDTO> memberPreferList(Map map) {
		// TODO Auto-generated method stub
		return dao.memberPreferList(map);
	}

	@Override
	public int updateProference(Map map) {
		// TODO Auto-generated method stub
		return dao.updateProference(map);
	}

	@Override
	public List<Map> memberLikedReview(Map map) {
		// TODO Auto-generated method stub
		return dao.memberLikedReview(map);
	}

	@Override
	public List<Map> memberLikedPlanner(Map map) {
		// TODO Auto-generated method stub
		return dao.memberLikedPlanner(map);
	}

	@Override
	public List<Map> homePlannerList(Map map) {
		// TODO Auto-generated method stub
		return dao.homePlannerList(map);
	}

	@Override
	public List<Map> memberPlannerList(Map map) {
		// TODO Auto-generated method stub
		return dao.memberPlannerList(map);
	}

	@Override
	public List<Map> memberLikedTourDetail(Map map) {
		// TODO Auto-generated method stub
		return dao.memberLikedTourDetail(map);
	}

	@Override
	public List<Map> memberLikedReviewDetail(Map map) {
		// TODO Auto-generated method stub
		return dao.memberLikedReviewDetail(map);
	}

	@Override
	public List<Map> memberLikedPlannerDetail(Map map) {
		// TODO Auto-generated method stub
		return dao.memberLikedPlannerDetail(map);
	}

	@Override
	public int profilecheck(Map map) {
		// TODO Auto-generated method stub
		return dao.profilecheck(map);
	}

	

}
