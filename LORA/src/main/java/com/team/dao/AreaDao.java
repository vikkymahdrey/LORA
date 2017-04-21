package com.team.dao;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.team.domain.Area;

@Repository
public interface AreaDao extends JpaRepository<Area, Serializable>{

	@Query("Select a from Area a where a.id=:id")
	Area getAreaById(@Param("id") String id);
	
	

}
