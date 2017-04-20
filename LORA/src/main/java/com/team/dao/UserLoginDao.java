package com.team.dao;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.team.domain.User;

public interface UserLoginDao extends JpaRepository<User, Serializable> {
	
	@Query("Select u From User u where u.loginId=:loginId and u.password=:password")
	public User getUserLogin(@Param("loginId") String loginId,@Param("password") String password)throws Exception;
}
