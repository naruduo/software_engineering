package com.se.pojo;

import javax.persistence.*;

@Entity
@Table(name = "course_chapters")
public class CourseChapter {
	@Id
	@Column(name = "unit_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "unit_name")
	private String unitName;

	@Column(name = "unit_desc")
	private String unitDesc;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public CourseChapter(String unitName, String unitDesc) {
		this.unitName = unitName;
		this.unitDesc = unitDesc;
	}

	public CourseChapter() {
	}

	@Override
	public String toString() {
		return "CourseChapter [id=" + id + ", unitName=" + unitName + ", unitDesc=" + unitDesc + "]";
	}

}
