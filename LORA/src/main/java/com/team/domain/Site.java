package com.team.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the site database table.
 * 
 */
@Entity
@NamedQuery(name="Site.findAll", query="SELECT s FROM Site s")
public class Site implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String id;

	@Column(name="site_name")
	private String siteName;

	//bi-directional many-to-one association to Area
	@OneToMany(mappedBy="site")
	private List<Area> areas;

	//bi-directional many-to-one association to Branch
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="branchId")
	private Branch branch;

	//bi-directional many-to-one association to User
	@OneToMany(mappedBy="site")
	private List<User> users;

	//bi-directional many-to-one association to Waterconsumption
	@OneToMany(mappedBy="site")
	private List<Waterconsumption> waterconsumptions;

	public Site() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSiteName() {
		return this.siteName;
	}

	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}

	public List<Area> getAreas() {
		return this.areas;
	}

	public void setAreas(List<Area> areas) {
		this.areas = areas;
	}

	public Area addArea(Area area) {
		getAreas().add(area);
		area.setSite(this);

		return area;
	}

	public Area removeArea(Area area) {
		getAreas().remove(area);
		area.setSite(null);

		return area;
	}

	public Branch getBranch() {
		return this.branch;
	}

	public void setBranch(Branch branch) {
		this.branch = branch;
	}

	public List<User> getUsers() {
		return this.users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public User addUser(User user) {
		getUsers().add(user);
		user.setSite(this);

		return user;
	}

	public User removeUser(User user) {
		getUsers().remove(user);
		user.setSite(null);

		return user;
	}

	public List<Waterconsumption> getWaterconsumptions() {
		return this.waterconsumptions;
	}

	public void setWaterconsumptions(List<Waterconsumption> waterconsumptions) {
		this.waterconsumptions = waterconsumptions;
	}

	public Waterconsumption addWaterconsumption(Waterconsumption waterconsumption) {
		getWaterconsumptions().add(waterconsumption);
		waterconsumption.setSite(this);

		return waterconsumption;
	}

	public Waterconsumption removeWaterconsumption(Waterconsumption waterconsumption) {
		getWaterconsumptions().remove(waterconsumption);
		waterconsumption.setSite(null);

		return waterconsumption;
	}

}