package com.team.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team.domain.User;
import com.team.logger.Logging;
import com.team.service.LoginService;

/**
 * 
 * @author Vikky
 *
 */


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
	
	@RequestMapping(value= {"/chartsMap"})
	public String chartsMapHandler(){
		return "chartmap";
	}
	
	@RequestMapping(value= {"/inlineChart"})
	public String inLineCharthandler(){
		return "inline";
	}
	
	/*@RequestMapping(value= {"/reports"})
	public String genReportsHandler(){
		return "simple";
	}
	*/
	
	@RequestMapping(value= {"/login"}, method=RequestMethod.POST)
	public ModelAndView loginUser(HttpServletRequest request, HttpSession session, HttpServletResponse response,RedirectAttributes redirectAttributes) throws Exception{
		logger.debug("login user");
		String username = request.getParameter("uname") == null ? "" : request
				.getParameter("uname");
		String password = request.getParameter("pass") == null ? "" : request
				.getParameter("pass");
		
      
        User user=null;
        boolean needToChangePwd=false;
		
        if (username.equalsIgnoreCase("") || password.equalsIgnoreCase("")){
        	redirectAttributes.addFlashAttribute("status",
					"<div class='failure'>Enter User Name/Password!!</div");
			return new ModelAndView("redirect:/");
		}else{			
			user=loginService.getLoginUser(username,password);
		}
        
        if(user!=null){
        	
        	session.setAttribute("user", user);
        	session.setAttribute("site", user.getSite());
        	
        	if (user.getPwdChangedDate()== null || user.getPwdChangedDate().equals("")) {
						needToChangePwd = true;
			}
        	         	
        }
        
           
        
        if (needToChangePwd) {
			session.setAttribute("username", username);
			session.setAttribute("password", password);
				return new ModelAndView("redirect:/changePasswordReq");
			
		} 
        
        if(user!=null){
        	 	return new ModelAndView("redirect:/adminHome");
        	
        }else{
        	session.setAttribute("adminUser", "");
        	redirectAttributes.addFlashAttribute("status","<div class='failure'>Invalid Username/Password !</div");
        	return new ModelAndView("redirect:/");
        }
		
				
		
	}
	
	@RequestMapping(value= {"/changePasswordReq"})
	public String changePwdReqHandler() throws Exception{
		logger.debug("IN ChangePassword");
		return "changePassword";
	}
	
	
	/*@RequestMapping(value= {"/changePasswordSubmit"},method=RequestMethod.POST)
	public String changePwdSubmitHandler(HttpServletRequest request,RedirectAttributes redirectAttributes) throws Exception{
		logger.debug("IN ChangePassword Controller....");
		HttpSession session =request.getSession();
		AdminUser adminUser=(AdminUser)session.getAttribute("adminUser");
		String password=request.getParameter("pwd");
		
		AdminUser admin=loginService.getUserById(String.valueOf(adminUser.getId()));
		admin.setPassword(password);
		admin.setPwdChangedDate(new Date(System.currentTimeMillis()));
		
		AdminUser adminUsr=loginService.setGeneratedPwd(admin);
        if (adminUsr!=null ) {
        	redirectAttributes.addFlashAttribute("status",
					"<div class='success'>Password Updated Successfully</div");
		} else {
			redirectAttributes.addFlashAttribute("status",
					"<div class='failure'>Password Updation Failed</div");
		}
        
		return "redirect:/";
	}*/
		
	@RequestMapping(value= {"/inValid"})
	public String inValidCredentials(){
		return "index";
	}
	
	@RequestMapping(value= {"/forgotPassword"})
	public String forgetPasswordHandler(){
		return "forgotPassword";
	}
	 
		 
		 	@RequestMapping(value= {"/logout"})
			public String goToLogout(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map){
				logger.debug("In gotoLogout Page......");
					HttpSession session = request.getSession(true);
						session.invalidate();
							response.setHeader("Cache-Control",	"no-cache, no-store, must-revalidate");
								response.setHeader("Pragma", "co-cache");
									response.setDateHeader("Expires", 0);
										return "redirect:/";
			}
		 	
		 	/*@RequestMapping(value= {"/resetPassword"}, method=RequestMethod.POST)
			public String forgetPasswordAction(HttpServletRequest request,RedirectAttributes redirectAttributes) throws Exception{
				String email = request.getParameter("email");
				logger.debug("Email address "+email);

				String password = new PasswordGenerator().randomString(10);
				logger.debug("Password generator "+password);
				String subject = "Password Reset";
				AdminUser adminUser=loginService.getUserByEmail(email);
				
				if(adminUser!=null){
					adminUser.setPassword(password);
					adminUser.setPwdChangedDate(null);
					AdminUser admin=loginService.setGeneratedPwd(adminUser);
						if (admin!=null) {
							String message = loginService.getPasswordResetMessage(admin);
						 SendMail mail = com.team.mighty.notification.SendMailFactory.getMailInstance();
						try{
						mail.send(admin.getEmailaddress(), subject, message);
						redirectAttributes.addFlashAttribute("status",
								"<div class='success'>Password Reset Successfull</div");
						}catch(Exception ex){
							logger.error("System Error,",ex);
						}
					} else {
						redirectAttributes.addFlashAttribute("status",	"<div class='failure'>Operation Failed</div");
					}
				}else{
					redirectAttributes.addFlashAttribute("status",	"<div class='failure'>Invalid Email Address</div");
					return "redirect:/forgotPassword";
				}
					return "redirect:/";
				
				
			}		 	
*/
			
}
