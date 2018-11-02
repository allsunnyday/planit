package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.PlannerDTO;
import com.earth.planit.service.PlannerService;

@Service("plannerService")
public class PlannerServiceImpl implements PlannerService {

	@Resource(name = "plannerDAO")
	private PlannerDAO dao;
	
	@Override
	public List<PlannerDTO> selectMapDataList(Map map) {
		return dao.selectMapDataList(map);
	}

	@Override
	public int insertPlanner(Map map) {
		return dao.insertPlanner(map);
	}

	@Override
	public int insertReview(Map map) {
		return dao.insertReview(map);
	}

	@Override
	public int insertReviewContent(Map map) {
		return dao.insertReviewContent(map);
	}

	@Override
	public List<PlannerDTO> selectBookMark(Map map) {
		return dao.selectBookMark(map);
	}

}
