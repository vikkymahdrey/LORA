package com.team.service;

import java.util.List;

import com.team.domain.Waterconsumption;



/**
 * 
 * @author Vikky
 *
 */

public interface ConsumerService {

	List<Waterconsumption> getWaterConsumed() throws Exception;
	
	
	
}
