package com.team.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.domain.Area;
import com.team.domain.Branch;
import com.team.domain.Place;
import com.team.domain.Site;
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
	
	
	@RequestMapping(value = "/getConsumedUnits", method = RequestMethod.POST)
	public String consumptionHandler(Map<String,Object> map){
		logger.info(" /getConsumedUnits ");
		try{
			List<Branch> branches=consumerService.getAllBranch();
			List<Waterconsumption> waterConsumedList=consumerService.getWaterConsumed();
			map.put("branches", branches);		
			map.put("waterConsumedList", waterConsumedList);
		}catch(Exception e){
			logger.error("Error in /getConsumedUnits",e);
		}
		return "simple";
		
	}

	@RequestMapping(value = "/reports", method = RequestMethod.GET)
	public String getConsumedUnitsHandler(Map<String,Object> map){
		logger.info(" /Get ConsumedUnits ");
		try{
			List<Branch> branches=consumerService.getAllBranch();
			map.put("branches", branches);
		}catch(Exception e){
			logger.error("Error in /reports",e);
		}
		
				return "simple";
	}
	
	
	/* Ajax calling for /getArea */
	
	@RequestMapping(value= {"/getArea"}, method=RequestMethod.GET)
	public @ResponseBody String getAreaBySiteHandler(HttpServletRequest request,Map<String,Object> map) throws Exception  {
		logger.debug("/*Ajax getting AreaById */");
		
		String siteId = request.getParameter("site");
		String returnVal="";
		
		try{
			Site site=consumerService.getSiteById(siteId);
			List<Area> areas=site.getAreas();
			
			
			if(areas!=null && !areas.isEmpty()){
				for(Area a : areas){
					returnVal+="<option value="+a.getId()+ ">"+ a.getAreaName() + "</option>";
				}
			}	
		}catch(Exception e){
			logger.error("Error in Ajax/getArea",e);
		}
			
			
		return returnVal;

	}
	
	
	
	/* Ajax calling for /getPlace */
	
	@RequestMapping(value= {"/getPlace"}, method=RequestMethod.GET)
	public @ResponseBody String getPlaceByAreaHandler(HttpServletRequest request,Map<String,Object> map) throws Exception  {
		logger.debug("/*Ajax getting PlaceByArea */");
		
		String areaId = request.getParameter("area");
		String returnVal="";
		
		try{
			Area area=consumerService.getAreaById(areaId);
			List<Place> places=area.getPlaces();
			logger.debug("PlaceList",places.size());
			
			
			if(places!=null && !places.isEmpty()){
				for(Place p : places){
					returnVal+="<option value="+p.getId()+ ">"+ p.getPlaceName() + "</option>";
				}
			}	
		}catch(Exception e){
			logger.error("Error in Ajax/getPlace",e);
		}
					
		return returnVal;
	
	}
	
	
}
	