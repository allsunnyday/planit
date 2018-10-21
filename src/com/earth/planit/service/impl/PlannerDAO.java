package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.PlannerDTO;
import com.earth.planit.service.PlannerService;

@Repository
public class PlannerDAO implements PlannerService {

	@Resource(name = "template")
	private SqlSessionTemplate template;

	@Override
	public List<PlannerDTO> selectMapDataList(Map map) {
		return template.selectList("selectPlanMapList",map);
	}
}
