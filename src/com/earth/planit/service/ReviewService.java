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
	

	
}
