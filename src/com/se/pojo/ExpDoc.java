package com.se.pojo;

import java.util.Date;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="exp_doc")
public class ExpDoc {
	@Id
	@Column(name = "exp_doc_id", unique = true, nullable = false)
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	private Integer expDocId;
	
	@Column(name="exp_doc_name")
	private String expDocName;
	
	@ManyToOne(fetch=FetchType.LAZY, 
			targetEntity=Student.class)
	@JoinColumn(name="stu_id", 
		referencedColumnName="id")
	private Student stu;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="exp_id")
	private Exp exp;
	
	@Column(name="address")
	private String address;
	
	@Column(name="sub_time")
	private Date subTime;
	
	@Column(name="score")
	private Integer score;
	
	public ExpDoc() {}
	
	public Integer getExpDocId() {
		return expDocId;
	}
	
	public void setExpDocId(Integer expDocId) {
		this.expDocId = expDocId;
	}
	
	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
	
	public Date getSubTime() {
		return subTime;
	}
	
	public void setSubTime(Date subTime) {
		this.subTime = subTime;
	}
	
	public Integer getScore() {
		return score;
	}
	
	public void setScore(Integer score) {
		this.score = score;
	}

	public String getExpDocName() {
		return expDocName;
	}

	public void setExpDocName(String expDocName) {
		this.expDocName = expDocName;
	}

	
	public Exp getExp() {
		return exp;
	}

	public void setExp(Exp exp) {
		this.exp = exp;
	}
	
	@Transient
	public String getExpName() {
		return exp.getExpName();
	}
	
}
