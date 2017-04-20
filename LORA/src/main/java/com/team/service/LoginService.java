package com.team.service;

import com.team.domain.User;

public interface LoginService {

	User getLoginUser(String username, String password) throws Exception;

	User getUserByEmail(String email) throws Exception;

	String getPasswordResetMessage(User user)throws Exception;

	/*AdminUser setGeneratedPwd(AdminUser adminUser)throws Exception;*/

	User getUserById(String id)throws Exception;

}
