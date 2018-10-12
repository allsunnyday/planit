package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.ReviewDTO;
import com.earth.planit.service.ReviewService;

@Repository
public class ReviewDAO implements ReviewService {

	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public List<Map> selectReviewList(Map map) {
		return template.selectList("reviewSelectList", map);
	}

	@Override
	public ReviewDTO selectReviewOne(Map map) {
		return template.selectOne("reviewSelectOne",map);
	}

	@Override
	public int getTotalReviewCount(Map map) {
		return 0;
	}

	@Override
	public int insertReview(ReviewDTO dto) {
		return 0;
	}

	@Override
	public int updateReview(Map map) {
		return 0;
	}

	@Override
	public int deleteReview(Map map) {
		return 0;
	}

}
