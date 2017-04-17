package com.team.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.logger.Logging;
import com.team.service.LoginService;



@Controller
public class LoginController {
	private static final Logging logger = Logging.getLogger(LoginController.class);
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value= {"/"})
	public String defaultURL(){
		logger.debug("IN /Default URL");
		return "index";
	}
	
	
	@RequestMapping(value= {"adminHome"})
	public String adminHomeHandler(){
		logger.debug("IN /Default URL");
		return "adminView";
	}
	

	@RequestMapping(value= {"/barChart"})
	public String barCharthandler(){
		logger.debug("IN /barChart URL");
		return "chartjs";
	}
	
	@RequestMapping(value= {"/flotChart"})
	public String flotCharthandler(){
		return "flot";
	}
	
	@RequestMapping(value= {"/inlineChart"})
	public String inLineCharthandler(){
		return "inline";
	}
	
	@RequestMapping(value= {"/reports"})
	public String genReportsHandler(){
		return "simple";
	}
	
			 	

			
}
