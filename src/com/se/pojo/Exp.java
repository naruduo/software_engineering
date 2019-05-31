package com.se.pojo;

import java.util.Date;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="exp")
public class Exp {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="exp_id")
	private Integer expId;
	
	@Column(name="exp_name")
	private String expName;
	
	/*@OneToMany(cascade={CascadeType.PERSIST, CascadeType.MERGE}, 
			fetch=FetchType.LAZY, 
			targetEntity=ExpDoc.class, 
			mappedBy="exp")
	private List<Exp> expDocs;*/

	@Column(name="exp_address")
	private String expAddress;
	
	@ManyToOne(fetch=FetchType.LAZY, 
			targetEntity=Teacher.class)
	@JoinColumn(name="teacher_id", 
		referencedColumnName="teacher_id")
	private Teacher teacher;

	@Column(name="release_time")
	private Date releaseTime;
	
	@Column(name="deadline")
	private Date deadline;
	
	public Exp() {}
	
	public Integer getExpId() {
		return expId;
	}
	
	public void setExpId(Integer expId) {
		this.expId = expId;
	}
	
	/*public List<Exp> getExpDocs() {
		return expDocs;
	}

	public void setExpDocs(List<Exp> expDocs) {
		this.expDocs = expDocs;
	}*/
	
	public String getExpAddress() {
		return expAddress;
	}
	
	public void setExpAddress(String expAddress) {
		this.expAddress = expAddress;
	}
	
	
	public Teacher getTeacher() {
		return teacher;
	}

	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	
	public Date getReleaseTime() {
		return releaseTime;
	}
	
	public void setReleaseTime(Date releaseTime) {
		this.releaseTime = releaseTime;
	}
	
	public Date getDeadline() {
		return deadline;
	}
	
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}	
	
	public String getExpName() {
		return expName;
	}

	public void setExpName(String expName) {
		this.expName = expName;
	}
	
}
