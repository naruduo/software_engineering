package com.se.pojo;

import javax.persistence.*;

@Entity
@Table(name="course_chapters")
public class Unit {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="unit_id")
	private Integer unitId;
	
	@Column(name="unit_name")
	private String unitName;
	
	@Column(name="unit_desc")
	private String unitDesc;
	
	public Unit() {}

	public Integer getUnitId() {
		return unitId;
	}

	public void setUnitId(Integer unitId) {
		this.unitId = unitId;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public String getUnitDesc() {
		return unitDesc;
	}

	public void setUnitDesc(String unitDesc) {
		this.unitDesc = unitDesc;
	}
	
	
}
