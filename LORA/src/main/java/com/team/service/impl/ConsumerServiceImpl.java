package com.team.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.dao.AreaDao;
import com.team.dao.BranchDao;
import com.team.dao.SiteDao;
import com.team.dao.WaterConsumptionDAO;
import com.team.domain.Area;
import com.team.domain.Branch;
import com.team.domain.Site;
import com.team.domain.Waterconsumption;
import com.team.logger.Logging;
import com.team.service.ConsumerService;

@Service
public class ConsumerServiceImpl implements ConsumerService {
	private final Logging logger = Logging.getLogger(ConsumerServiceImpl.class);

	@Autowired
	private WaterConsumptionDAO waterConsumptionDAO;
	
	@Autowired
	private BranchDao branchDao;
	
	@Autowired
	private AreaDao areaDao;
	
	@Autowired
	private SiteDao siteDao;
	
	public List<Waterconsumption> getWaterConsumed() throws Exception {
		return waterConsumptionDAO.getWaterConsumed();
		 
	}


	public List<Branch> getAllBranch() throws Exception {
		return branchDao.getAllBranch();
		
	}


	public Site getSiteById(String siteId) throws Exception {
		return siteDao.getSiteById(siteId);
	}


	
	public Area getAreaById(String areaId) throws Exception {
		return areaDao.getAreaById(areaId);
	}


	

	
	
}
