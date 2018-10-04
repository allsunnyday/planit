package com.earth.planit.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PlannerController {

	@RequestMapping("/Planit/Before/Location.it")
	public String gotoLocation() throws Exception{
		
		return "planner/before/Location.theme";
	}
	
	@RequestMapping("/planner/plan/route.it")
	public String locationsub() throws Exception{
		
		return "planner/plan/route.theme";
	}
	
	@RequestMapping("/planner/plan/schedule.it")
	public String schedule() throws Exception{ 
	
		return "planner/plan/schedule.theme";
	}
	
	@RequestMapping("/planner/plan/reservation.it")
	public String reservation() throws Exception{
		
		return "planner/plan/reservation.theme";
	}
	
}
