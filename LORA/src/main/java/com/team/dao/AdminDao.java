package com.team.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.team.domain.AdminUser;

public interface AdminDao extends JpaRepository<AdminUser, Integer> {

}
