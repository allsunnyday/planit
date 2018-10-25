package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.FaqNoticeDTO;
import com.earth.planit.service.MemberDTO;
import com.earth.planit.service.MemberService;
import com.earth.planit.service.ReviewDTO;

@Repository
public class MemberDAO implements MemberService {

	/*root-context에 등록한 sqlsessiontemplate객체를 통해 데이터 베이스 작업을 한다.
	 * 
	 * */
	@Resource(name="template")
	private SqlSessionTemplate template;
	//[질문]
	@Override
	public boolean isLogin(Map map) {//id pwd 
		int count = template.selectOne("MemberIsLogin", map);
		return count==1?true:false;
	}
	@Override
	public int isJoin(MemberDTO dto) {
		return template.insert("MemberIsJoin", dto);
	}
	@Override
	public MemberDTO memberInfo(Map map) {
		return template.selectOne("MemberInformation",map);
	}
	@Override
	public boolean idDuplicate(String id) {
		int count=template.selectOne("MemberIsDuplicate",id);
		return count==0?true:false;
	}
	@Override
	public int insertPreference(Map map) {
		// TODO Auto-generated method stub
		return template.insert("MemberInsertPefer",map);
	}
	@Override
	public int updateProfile(Map map) {
		// TODO Auto-generated method stub
		return template.update("MemberUpdateProfile", map);
	}
	@Override
	public List<ReviewDTO> memberReviewList(Map map) {
		// TODO Auto-generated method stub
		System.out.println(map.get("id"));
		return template.selectList("MemberReviewList",map);
	}
	@Override
	public List<ReviewDTO> homeReviewList(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("MemberHomeReviewList",map);
	}
	@Override
	public List<FaqNoticeDTO> homeQNAList(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("MemberAskPlanit", map);
	}
	@Override
	public List<FaqNoticeDTO> memberQnAList(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("MemberAskPlanitDetail",map);
	}
	@Override
	public int getTotalCount(Map map) {
		// TODO Auto-generated method stub
		return template.selectOne("getTotalCount2",map);
	}

	@Override
	public List<Map> memberLikedTour(Map map) {
		System.out.println("DAOTOUR 아이디:"+map.get("id"));
		return template.selectList("MemberLikedTour",map);
	}
	@Override
	public List<MemberDTO> memberPreferList(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("MemberPreferList",map);
	}
	@Override
	public int updateProference(Map map) {
		// TODO Auto-generated method stub
		return template.update("MemberUpdatePrefer",map);
	}
	@Override
	public List<Map> memberLikedReview(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("MemberLikedReview",map);
	}
	@Override
	public List<Map> memberLikedPlanner(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("MemberLikedPlanner",map);
	}
	@Override
	public List<Map> homePlannerList(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("MemberHomePlannerList",map);
	}
	@Override
	public List<Map> memberPlannerList(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("MemberPlannerList",map);
	}
	@Override
	public List<Map> memberLikedTourDetail(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("MemberLikedTourDetail",map);
	}
	@Override
	public List<Map> memberLikedReviewDetail(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("MemberLikedReviewDetail",map);
	}
	@Override
	public List<Map> memberLikedPlannerDetail(Map map) {
		// TODO Auto-generated method stub
		return template.selectList("MemberLikedPlannerDetail",map);
	}
	@Override
	public int profilecheck(Map map) {
		// TODO Auto-generated method stub
		return template.selectOne("profilecheck",map);
	}

}
