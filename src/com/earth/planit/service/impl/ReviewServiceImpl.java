package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.ReviewDTO;
import com.earth.planit.service.ReviewService;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

	@Resource(name="reviewDAO")
	private ReviewDAO dao;
	
	@Override
	public List<Map> selectReviewList(Map map) {
		return dao.selectReviewList(map);
	}

	@Override
	public ReviewDTO selectReviewOne(Map map) {
		return dao.selectReviewOne(map);
	}

	@Override
	public int getTotalReviewCount(Map map) {
		return dao.getTotalReviewCount(map);
	}

	@Override
	public int insertReview(ReviewDTO dto) {
		return dao.insertReview(dto);
	}

	@Override
	public int updateReview(Map map) {
		return dao.updateReview(map);
	}

	@Override
	public int deleteReview(Map map) {
		return dao.deleteReview(map);
	}

}
