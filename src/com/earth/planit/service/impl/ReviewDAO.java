package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.earth.planit.service.ContentDTO;
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
		return template.selectOne("reviewGetTotal", map);
	}

	@Override
	public int insertReview(ReviewDTO dto) {
		return 0;
	}

	@Override
	public int updateReview(Map map) {
		return template.update("ReviewUpdateContent", map);
	}

	@Override
	public int deleteReview(Map map) {
		return 0;
	}

	@Override
	public Map selectPlannerOne(Map map) {
		return template.selectOne("reviewSelectPlanner", map);
	}

	@Override
	public ContentDTO selectContent(Map map) {
		return template.selectOne("reviewSelectContent", map);
	}

	@Override
	public Map selectReviewContent(Map map) {
		return template.selectOne("reviewSelectReviewContent", map);
	}

	@Override
	public int hasRating(Map map) {
		return template.selectOne("ReviewHasRating", map);
	}

	@Override
	public int insertRating(Map map) {
		//review_rating 테이블에  insert
		template.insert("ReviewInsertRating", map);
		//review 테이블에 평균을 다시 update
		return template.update("reviewUpdateReviewAvgRating", map);
		
	}

	@Override
	public Map selectRating(Map map) {
		return null;
	}

	@Override
	public int insertComment(Map map) {
		return template.insert("reviewInsertComments", map);
	}

	@Override
	public int replyComment(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Map> selectCommentList(Map map) {
		return template.selectList("reviewSelectCommentList", map);
	}

	@Override
	public List<Map> selectReviewContentList(Map map) {
		return template.selectList("reviewSelectReviewContentList", map);
	}

	@Override
	public Map getPhotobookLayouts(Map map) {
		return template.selectOne("reviewGetPhotobookLayout", map);
	}

	@Override
	public int alreadyLikeReview(Map map) {
		return template.selectOne("reviewAlreadyLikedReview",map);
	}

	@Override
	public int insertLikedReview(Map map) {
		// insert liked_review 
		
		// update review -> rating 
		return template.insert("reviewInsertLikedReview", map);
	}

	@Override
	public int getReviewListTotal(Map map) {
		return template.selectOne("reviewGetReviewlistTotal", map);
	}

	@Override
	public void updateOneReviewColumn(Map map) {
		template.update("ReviewUpdateOneColumn", map);
	}

}
