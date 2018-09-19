package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PlannerController {

	@RequestMapping("/planner/plan/route.it")
	public String locationsub() throws Exception{
		
		return "planner/plan/route.tiles";
	}
	
	@RequestMapping("/planner/plan/schedule.it")
	public String schedule() throws Exception{ 
	
		return "planner/plan/schedule.tiles";
	}
	
	@RequestMapping("/planner/plan/reservation.it")
	public String reservation() throws Exception{
		
		return "planner/plan/reservation.tiles";
	}
}
