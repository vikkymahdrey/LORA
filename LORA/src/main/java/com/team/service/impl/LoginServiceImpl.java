package com.team.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.dao.LoginDao;
import com.team.domain.User;
import com.team.service.LoginService;
@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao;
	
	
	
	public User getLoginUser(String username, String password)	throws Exception {
		
		return loginDao.getLoginUser(username,password);
	}

		public User getUserByEmail(String email) throws Exception {
			return loginDao.getUserByEmail(email);
	}

			
		public String getPasswordResetMessage(User user) throws Exception {
			return "Hi "
					+user.getDisplayname()				
					+",<br/><br/>Your Password has been reset. To access Mighty use the below information.<br/><br/> "
					+ ".<br/><br/>"
					+"Link - <a href='http://mighty2.cloudaccess.host/MightyCloud/'>Mighty</a>"
					+"<br/><br/>Login Id - "+user.getLoginId()
					+"<br/><br/>Password - "+user.getPassword()
					+"<br/><br/>Regards,<br/>" 
					+ "<a href='http://mighty2.cloudaccess.host/MightyCloud/'>http://mighty2.cloudaccess.host/MightyCloud/</a>\n"
							+" Mighty Team."
							+"</a>"+"<br/>---------------<br/> <i><u>Note:</u> This is a system generated email. Please do not reply.</i>";
		
			
		}

	
		/*public AdminUser setGeneratedPwd(AdminUser adminUser) throws Exception {
			return (AdminUser)adminDao.save(adminUser);
		}*/

	
		public User getUserById(String id) throws Exception {
			return loginDao.getUserById(id);
		}

}
