package com.earth.planit.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.MemberDTO;
import com.earth.planit.service.MemberService;

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
	

}
