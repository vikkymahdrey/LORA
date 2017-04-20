package com.team.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.domain.Waterconsumption;
import com.team.logger.Logging;
import com.team.service.ConsumerService;

/**
 * 
 * @author Vikky
 *
 */

@Controller
public class ConsumerController {
	
	@Autowired
	private ConsumerService consumerService;
	
		
	private static final Logging logger = Logging.getLogger(ConsumerController.class);

	@RequestMapping(value = "/reports", method = RequestMethod.GET)
	public String consumptionHandler(Map<String,Object> map){
		logger.info(" /GET consumption ");
		try{
			List<Waterconsumption> waterConsumedList=consumerService.getWaterConsumed();
					logger.debug("WaterConsumedList",waterConsumedList.size());
			map.put("waterConsumedList", waterConsumedList);
		}catch(Exception e){
			logger.error("/ConsumerController",e);
		}
		return "simple";
		
	}
	
	
	
}
	