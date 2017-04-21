package com.team.dao;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.team.domain.Site;
@Repository
public interface SiteDao extends JpaRepository<Site, Serializable>{

	@Query("Select s FROM Site s where s.id=:id")
	Site getSiteById(@Param("id") String id)throws Exception;


}
