package com.team.dao;
import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.team.domain.Waterconsumption;

/**
 * 
 * @author Vikky
 *
 */
@Repository
public interface WaterConsumptionDAO extends JpaRepository<Waterconsumption, Serializable>{

	@Query("FROM Waterconsumption wc")
	List<Waterconsumption> getWaterConsumed() throws Exception;

}
