package com.team.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the devices database table.
 * 
 */
@Entity
@Table(name="devices")
@NamedQuery(name="Device.findAll", query="SELECT d FROM Device d")
public class Device implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String id;

	@Temporal(TemporalType.DATE)
	@Column(name="created_date")
	private Date createdDate;

	private String devName;

	private String devType;

	private String hwSerialNo;

	private String is_Active;

	private String is_Registered;

	private String swSerialNo;

	@Temporal(TemporalType.DATE)
	@Column(name="updated_date")
	private Date updatedDate;

	//bi-directional many-to-one association to User
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="userId")
	private User user;

	//bi-directional many-to-one association to Waterconsumption
	@OneToMany(mappedBy="device")
	private List<Waterconsumption> waterconsumptions;

	public Device() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getCreatedDate() {
		return this.createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getDevName() {
		return this.devName;
	}

	public void setDevName(String devName) {
		this.devName = devName;
	}

	public String getDevType() {
		return this.devType;
	}

	public void setDevType(String devType) {
		this.devType = devType;
	}

	public String getHwSerialNo() {
		return this.hwSerialNo;
	}

	public void setHwSerialNo(String hwSerialNo) {
		this.hwSerialNo = hwSerialNo;
	}

	public String getIs_Active() {
		return this.is_Active;
	}

	public void setIs_Active(String is_Active) {
		this.is_Active = is_Active;
	}

	public String getIs_Registered() {
		return this.is_Registered;
	}

	public void setIs_Registered(String is_Registered) {
		this.is_Registered = is_Registered;
	}

	public String getSwSerialNo() {
		return this.swSerialNo;
	}

	public void setSwSerialNo(String swSerialNo) {
		this.swSerialNo = swSerialNo;
	}

	public Date getUpdatedDate() {
		return this.updatedDate;
	}

	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Waterconsumption> getWaterconsumptions() {
		return this.waterconsumptions;
	}

	public void setWaterconsumptions(List<Waterconsumption> waterconsumptions) {
		this.waterconsumptions = waterconsumptions;
	}

	public Waterconsumption addWaterconsumption(Waterconsumption waterconsumption) {
		getWaterconsumptions().add(waterconsumption);
		waterconsumption.setDevice(this);

		return waterconsumption;
	}

	public Waterconsumption removeWaterconsumption(Waterconsumption waterconsumption) {
		getWaterconsumptions().remove(waterconsumption);
		waterconsumption.setDevice(null);

		return waterconsumption;
	}

}