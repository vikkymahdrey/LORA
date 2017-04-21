package com.team.service;

import java.util.List;

import com.team.domain.Area;
import com.team.domain.Branch;
import com.team.domain.Site;
import com.team.domain.Waterconsumption;



/**
 * 
 * @author Vikky
 *
 */

public interface ConsumerService {

	List<Waterconsumption> getWaterConsumed() throws Exception;

	List<Branch> getAllBranch()throws Exception;

	Site getSiteById(String siteId)throws Exception;

	Area getAreaById(String areaId)throws Exception;
	
	
	
}
