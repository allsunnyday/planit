package com.earth.planit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.earth.planit.service.ToiletDTO;
import com.earth.planit.service.ToiletService;

@Service("toiletService")
public class ToiletServiceImpl implements ToiletService {

	   /*DAO객체 주입 , 이름을 따로 설정하지 않을 경우에는 첫글자는 소문자로 변한 이름이 name값이 된다. */
	   @Resource(name="toiletDAO")
	   private ToiletDAO dao;

	@Override
	public List<ToiletDTO> selectToiletList(Map map) {
		return dao.selectToiletList(map);
	}
	   
	  

}