package com.earth.planit.service;

import java.util.List;
import java.util.Map;

public interface ReviewService {
	
	
	// list 조회
	List<Map> selectReviewList(Map map);
	// review 1개 조회
	ReviewDTO selectReviewOne(Map map);
	// totalcount
	int getTotalReviewCount(Map map);
	// insert
	int insertReview(ReviewDTO dto);
	// update 
	int updateReview(Map map);
	// delete 
	int deleteReview(Map map);
	
	
	
	//planner에 대해서 조회한다. 
	Map selectPlannerOne(Map map);
	// content DTO에 대해 조회
	ContentDTO selectContent(Map map);
	// review_content+content조인  가지고 온다. 
	Map selectReviewContent(Map map);
	
	
	// 평점
	int hasRating(Map map);
	//  평점
	int insertRating(Map map);
	//  rating에 대해서 가지고 온다?
	Map selectRating(Map map);
	
	// 코멘트 
	int insertComment(Map map);
	// 답변
	int replyComment(Map map);
	// 코멘트리스트가지고오기
	List<Map> selectCommentList(Map map);
	
}
