package com.team.domain;

import java.io.Serializable;

import javax.persistence.*;

import java.util.List;


/**
 * The persistent class for the place database table.
 * 
 */
@Entity
@Table(name="place")
@NamedQuery(name="Place.findAll", query="SELECT p FROM Place p")
public class Place implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String id;

	private double latitude;

	private double longitude;

	@Column(name="place_name")
	private String placeName;

	//bi-directional many-to-one association to Area
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="areaId")
	private Area area;

	//bi-directional many-to-one association to Waterconsumption
	@OneToMany(mappedBy="place")
	private List<Waterconsumption> waterconsumptions;

	public Place() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public double getLatitude() {
		return this.latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return this.longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public String getPlaceName() {
		return this.placeName;
	}

	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}

	public Area getArea() {
		return this.area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public List<Waterconsumption> getWaterconsumptions() {
		return this.waterconsumptions;
	}

	public void setWaterconsumptions(List<Waterconsumption> waterconsumptions) {
		this.waterconsumptions = waterconsumptions;
	}

	public Waterconsumption addWaterconsumption(Waterconsumption waterconsumption) {
		getWaterconsumptions().add(waterconsumption);
		waterconsumption.setPlace(this);

		return waterconsumption;
	}

	public Waterconsumption removeWaterconsumption(Waterconsumption waterconsumption) {
		getWaterconsumptions().remove(waterconsumption);
		waterconsumption.setPlace(null);

		return waterconsumption;
	}

}