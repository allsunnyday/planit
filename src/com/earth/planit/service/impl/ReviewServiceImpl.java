package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.ContentDTO;
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

	@Override
	public Map selectPlannerOne(Map map) {
		return dao.selectPlannerOne(map);
	}

	@Override
	public ContentDTO selectContent(Map map) {
		return dao.selectContent(map);
	}

	@Override
	public Map selectReviewContent(Map map) {
		return dao.selectReviewContent(map);
	}

	@Override
	public int hasRating(Map map) {
		return dao.hasRating(map);
	}

	@Override
	public int insertRating(Map map) {
		// TODO Auto-generated method stub
		return dao.insertRating(map);
	}

	@Override
	public Map selectRating(Map map) {
		// TODO Auto-generated method stub
		return dao.selectRating(map);
	}

	@Override
	public int insertComment(Map map) {
		return dao.insertComment(map);
	}

	@Override
	public int replyComment(Map map) {
		return dao.replyComment(map);
	}

	@Override
	public List<Map> selectCommentList(Map map) {
		return dao.selectCommentList(map);
	}

	@Override
	public List<Map> selectReviewContentList(Map map) {
		return dao.selectReviewContentList(map);
	}

	@Override
	public Map getPhotobookLayouts(Map map) {
		return dao.getPhotobookLayouts(map);
	}

	@Override
	public int alreadyLikeReview(Map map) {
		return dao.alreadyLikeReview(map);
	}

	@Override
	public int insertLikedReview(Map map) {
		return dao.insertLikedReview(map);
	}

	

}
