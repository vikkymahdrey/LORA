package com.team.domain;

import java.io.Serializable;

import javax.persistence.*;

import java.util.Date;


/**
 * The persistent class for the info database table.
 * 
 */
@Entity
@Table(name="info")
@NamedQuery(name="Info.findAll", query="SELECT i FROM Info i")
public class Info implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Temporal(TemporalType.DATE)
	private Date dated;

	private String drive;

	private String iso14;

	private String iso4;

	private String iso6;

	@Column(name="`MAX+`")
	private String max_;

	@Column(name="`NAS15-25`")
	private String nas15_25;

	@Column(name="`NAS2-5`")
	private String nas2_5;

	@Column(name="`NAS25+`")
	private String nas25_;

	@Column(name="`NAS5-15`")
	private String nas5_15;

	private String sat;

	private String temp;

	private String time;

	public Info() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDated() {
		return this.dated;
	}

	public void setDated(Date dated) {
		this.dated = dated;
	}

	public String getDrive() {
		return this.drive;
	}

	public void setDrive(String drive) {
		this.drive = drive;
	}

	public String getIso14() {
		return this.iso14;
	}

	public void setIso14(String iso14) {
		this.iso14 = iso14;
	}

	public String getIso4() {
		return this.iso4;
	}

	public void setIso4(String iso4) {
		this.iso4 = iso4;
	}

	public String getIso6() {
		return this.iso6;
	}

	public void setIso6(String iso6) {
		this.iso6 = iso6;
	}

	public String getMax_() {
		return this.max_;
	}

	public void setMax_(String max_) {
		this.max_ = max_;
	}

	public String getNas15_25() {
		return this.nas15_25;
	}

	public void setNas15_25(String nas15_25) {
		this.nas15_25 = nas15_25;
	}

	public String getNas2_5() {
		return this.nas2_5;
	}

	public void setNas2_5(String nas2_5) {
		this.nas2_5 = nas2_5;
	}

	public String getNas25_() {
		return this.nas25_;
	}

	public void setNas25_(String nas25_) {
		this.nas25_ = nas25_;
	}

	public String getNas5_15() {
		return this.nas5_15;
	}

	public void setNas5_15(String nas5_15) {
		this.nas5_15 = nas5_15;
	}

	public String getSat() {
		return this.sat;
	}

	public void setSat(String sat) {
		this.sat = sat;
	}

	public String getTemp() {
		return this.temp;
	}

	public void setTemp(String temp) {
		this.temp = temp;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

}