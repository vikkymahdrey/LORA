package com.team.domain;

import java.io.Serializable;

import javax.persistence.*;

import java.util.List;


/**
 * The persistent class for the branch database table.
 * 
 */
@Entity
@Table(name="branch")
@NamedQuery(name="Branch.findAll", query="SELECT b FROM Branch b")
public class Branch implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String id;

	private String location;

	//bi-directional many-to-one association to Site
	@OneToMany(mappedBy="branch")
	private List<Site> sites;

	public Branch() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public List<Site> getSites() {
		return this.sites;
	}

	public void setSites(List<Site> sites) {
		this.sites = sites;
	}

	public Site addSite(Site site) {
		getSites().add(site);
		site.setBranch(this);

		return site;
	}

	public Site removeSite(Site site) {
		getSites().remove(site);
		site.setBranch(null);

		return site;
	}

}