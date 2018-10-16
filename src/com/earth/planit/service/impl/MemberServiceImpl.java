package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.MemberDTO;
import com.earth.planit.service.MemberService;

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
		// TODO Auto-generated method stub
		return dao.updateProfile(map);
	}

	

}
