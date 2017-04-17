package com.team.domain;

import java.io.Serializable;

import javax.persistence.*;


/**
 * The persistent class for the rowindex database table.
 * 
 */
@Entity
@Table(name="rowindex")
@NamedQuery(name="Rowindex.findAll", query="SELECT r FROM Rowindex r")
public class Rowindex implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String rowindexcol;

	public Rowindex() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRowindexcol() {
		return this.rowindexcol;
	}

	public void setRowindexcol(String rowindexcol) {
		this.rowindexcol = rowindexcol;
	}

}