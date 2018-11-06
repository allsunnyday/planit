package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.ToiletDTO;
import com.earth.planit.service.ToiletService;


@Repository
public class ToiletDAO implements ToiletService {

	@Resource(name="template")
	private SqlSessionTemplate template;

	@Override
	public List<ToiletDTO> selectToiletList(Map map) {
		return template.selectList("toiletList", map);
	}
	
	
	
	

}
