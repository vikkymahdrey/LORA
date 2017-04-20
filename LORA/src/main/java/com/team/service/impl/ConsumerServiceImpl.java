package com.team.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.dao.WaterConsumptionDAO;
import com.team.domain.Waterconsumption;
import com.team.logger.Logging;
import com.team.service.ConsumerService;

@Service
public class ConsumerServiceImpl implements ConsumerService {
	private final Logging logger = Logging.getLogger(ConsumerServiceImpl.class);

	@Autowired
	private WaterConsumptionDAO waterConsumptionDAO;
	
	public List<Waterconsumption> getWaterConsumed() throws Exception {
		return waterConsumptionDAO.getWaterConsumed();
		 
	}
	
	
}
