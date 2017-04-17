package com.team.domain;

import java.io.Serializable;

import javax.persistence.*;

import java.util.Date;


/**
 * The persistent class for the waterconsumption database table.
 * 
 */
@Entity
@Table(name="waterconsumption")
@NamedQuery(name="Waterconsumption.findAll", query="SELECT w FROM Waterconsumption w")
public class Waterconsumption implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Temporal(TemporalType.DATE)
	private Date creditdate;

	private String value;

	private String var;

	public Waterconsumption() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getCreditdate() {
		return this.creditdate;
	}

	public void setCreditdate(Date creditdate) {
		this.creditdate = creditdate;
	}

	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getVar() {
		return this.var;
	}

	public void setVar(String var) {
		this.var = var;
	}

}