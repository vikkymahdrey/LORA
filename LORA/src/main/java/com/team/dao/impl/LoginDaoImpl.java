package com.team.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.team.dao.AbstractDao;
import com.team.dao.LoginDao;
import com.team.domain.User;
import com.team.logger.Logging;

@Repository
public class LoginDaoImpl extends AbstractDao implements LoginDao {
	private static final Logging logger = Logging.getLogger(LoginDaoImpl.class);
	
	public User getLoginUser(String username, String password)	throws Exception {
		
		String query="from User where loginId=:loginId and password=:password";
		Query q=getEntityManager().createQuery(query);
			q.setParameter("loginId", username);
			q.setParameter("password", password);
				List<User>	userList=q.getResultList();
				if(userList!=null && !userList.isEmpty()){
					return userList.get(0);
				}else{
					return null;
				}
			
	}

	
	public User getUserByEmail(String email) throws Exception {
		String query="from User where emailaddress=:email";
		Query q=getEntityManager().createQuery(query);
			q.setParameter("email", email);
				List<User>	userList=q.getResultList();
				if(userList!=null && !userList.isEmpty()){
					return userList.get(0);
				}else{
					return null;
				}
	}


	
	public User setPassword(User user) throws Exception {
			return (User)update(user);
		
	}


	public User getUserById(String id) throws Exception {
		String query="from User where id=:id";
		Query q=getEntityManager().createQuery(query);
			q.setParameter("id", Integer.valueOf(id));
				List<User>	userList=q.getResultList();
				if(userList!=null && !userList.isEmpty()){
					return userList.get(0);
				}else{
					return null;
				}
	}		

}
