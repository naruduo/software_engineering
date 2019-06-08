package com.se.pojo;

import java.util.Date;
import java.util.List;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="puzzle")
public class Puzzle {
	/*
	 * 一对多关联Solution的puzzleId
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="puzzle_id")
	private Integer puzzleId;
	
	@Column(name="description")
	private String description;
	
	@Column(name="time")
	private Date time;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="puzzler_id",  referencedColumnName="id")
	private Student student;

	@Transient
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
	private List<Solution> solutions;

	public Puzzle() {}
	
	public List<Solution> getSolutions() {
		return solutions;
	}

	public void setSolutions(List<Solution> solutions) {
		this.solutions = solutions;
	}

	public Integer getPuzzleId() {
		return puzzleId;
	}

	public void setPuzzleId(Integer puzzleId) {
		this.puzzleId = puzzleId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}
	
}