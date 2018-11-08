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

	@Override
	public int insertPlanner(Map map) {
		System.out.println("dao 방문");
		return template.insert("insertPlanSave", map);
	}

	@Override
	public int insertReview(Map map) {
		return template.insert("insertPlanReview", map);
	}

	@Override
	public int insertReviewContent(Map map) {
		return template.insert("insertReviewContent", map);
	}

	@Override
	public List<PlannerDTO> selectBookMark(Map map) {
		return template.selectList("selectBookMarkList", map);
	}
}
