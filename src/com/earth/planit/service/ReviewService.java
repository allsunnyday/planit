package com.earth.planit.service;

import java.util.List;
import java.util.Map;

public interface ReviewService {
	
	
	// list 조회
	List<Map> selectReviewList(Map map);
	// review 1개 조회
	ReviewDTO selectReviewOne(Map map);
	// insert
	int insertReview(ReviewDTO dto);
	// update 
	int updateReview(Map map);
	// delete 
	int deleteReview(Map map);
	// review 리스트의 total count를 가져온다. 
	int getReviewListTotal(Map map);
	
	
	//planner에 대해서 조회한다. 
	Map selectPlannerOne(Map map);
	// content DTO에 대해 조회
	ContentDTO selectContent(Map map);
	// review_content+content조인  가지고 온다. 
	Map selectReviewContent(Map map);
	// review_content+content조인 리스트를 가지고 온다.
	List<Map> selectReviewContentList(Map map);
	// 플래너 1개에 해당하는 리뷰의 전체 개수 시리즈물 totalcount 
	int getTotalReviewCount(Map map);
		
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
	
	
	//포토북정보 가지고 오기 
	Map getPhotobookLayouts(Map map);
	
	//review_좋아요를 이미 눌렀는지 판단 
	int alreadyLikeReview(Map map);
	//review_좋아요를 insert
	int insertLikedReview(Map map);
	
	// review테이블에서 컬럼을 하나만 변경할 경우에 사용하는  함수
	void updateOneReviewColumn(Map map);

	
	// android에서 리뷰 리스트를 조회한다. 
	List<Map> selectListForAndroid(Map map);
	// android에서 리뷰 컨텐트를 업데이트 한다. 
	int updateReviewContentFromAndroid(Map map);
}
