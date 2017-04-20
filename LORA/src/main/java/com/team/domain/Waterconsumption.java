package com.team.domain;

import java.io.Serializable;

import javax.persistence.*;

import java.sql.Time;
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
	private String id;

	@Temporal(TemporalType.DATE)
	private Date date;

	@Column(name="early_distribution")
	private String earlyDistribution;

	private Time endTime;

	@Column(name="later_distribution")
	private String laterDistribution;

	@Column(name="leakage_quantity")
	private String leakageQuantity;

	@Column(name="overflow_quantity")
	private String overflowQuantity;

	private Time startTime;

	private String waterconsumed;

	//bi-directional many-to-one association to Site
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="siteId")
	private Site site;

	//bi-directional many-to-one association to Device
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="deviceId")
	private Device device;

	//bi-directional many-to-one association to Place
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="placeId")
	private Place place;

	public Waterconsumption() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getEarlyDistribution() {
		return this.earlyDistribution;
	}

	public void setEarlyDistribution(String earlyDistribution) {
		this.earlyDistribution = earlyDistribution;
	}

	public Time getEndTime() {
		return this.endTime;
	}

	public void setEndTime(Time endTime) {
		this.endTime = endTime;
	}

	public String getLaterDistribution() {
		return this.laterDistribution;
	}

	public void setLaterDistribution(String laterDistribution) {
		this.laterDistribution = laterDistribution;
	}

	public String getLeakageQuantity() {
		return this.leakageQuantity;
	}

	public void setLeakageQuantity(String leakageQuantity) {
		this.leakageQuantity = leakageQuantity;
	}

	public String getOverflowQuantity() {
		return this.overflowQuantity;
	}

	public void setOverflowQuantity(String overflowQuantity) {
		this.overflowQuantity = overflowQuantity;
	}

	public Time getStartTime() {
		return this.startTime;
	}

	public void setStartTime(Time startTime) {
		this.startTime = startTime;
	}

	public String getWaterconsumed() {
		return this.waterconsumed;
	}

	public void setWaterconsumed(String waterconsumed) {
		this.waterconsumed = waterconsumed;
	}

	public Site getSite() {
		return this.site;
	}

	public void setSite(Site site) {
		this.site = site;
	}

	public Device getDevice() {
		return this.device;
	}

	public void setDevice(Device device) {
		this.device = device;
	}

	public Place getPlace() {
		return this.place;
	}

	public void setPlace(Place place) {
		this.place = place;
	}

}