package com.earth.planit.service;

import java.util.List;
import java.util.Map;

public interface PlannerService {
	
//	지도에 뿌려줄 정보 호출
	List<PlannerDTO> selectMapDataList(Map map);
//	insert
	int insertPlanner(PlannerDTO dto);
	
	
}
