package com.team.domain;

import java.io.Serializable;

import javax.persistence.*;

import java.util.List;


/**
 * The persistent class for the area database table.
 * 
 */
@Entity
@Table(name="area")
@NamedQuery(name="Area.findAll", query="SELECT a FROM Area a")
public class Area implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String id;

	@Column(name="area_name")
	private String areaName;

	//bi-directional many-to-one association to Site
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="siteId")
	private Site site;

	//bi-directional many-to-one association to Place
	@OneToMany(mappedBy="area")
	private List<Place> places;

	public Area() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAreaName() {
		return this.areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public Site getSite() {
		return this.site;
	}

	public void setSite(Site site) {
		this.site = site;
	}

	public List<Place> getPlaces() {
		return this.places;
	}

	public void setPlaces(List<Place> places) {
		this.places = places;
	}

	public Place addPlace(Place place) {
		getPlaces().add(place);
		place.setArea(this);

		return place;
	}

	public Place removePlace(Place place) {
		getPlaces().remove(place);
		place.setArea(null);

		return place;
	}

}