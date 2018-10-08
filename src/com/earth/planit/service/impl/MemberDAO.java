package com.earth.planit.service.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.MemberService;

@Repository
public class MemberDAO implements MemberService {

	/*root-context에 등록한 sqlsessiontemplate객체를 통해 데이터 베이스 작업을 한다.
	 * 
	 * */
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public boolean isLogin(Map map) {//id pwd 
		int count = template.selectOne("MemberIsLogin", map);
		return count==1?true:false;
	}

}
