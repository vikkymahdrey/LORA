package com.team.dao;

import com.team.domain.User;

public interface LoginDao {

	User getLoginUser(String username, String password) throws Exception;

	User getUserByEmail(String email) throws Exception;

	User setPassword(User user)throws Exception;

	User getUserById(String id)throws Exception;

}
