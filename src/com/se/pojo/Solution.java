package com.se.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

import com.se.dao.StudentDao;
import com.se.dao.TeacherDao;

@Entity
@Table(name="solution")
public class Solution {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="solution_id")
	private Integer solutionId;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="puzzle_id")
	private Puzzle puzzle;
	
	@Column(name="content")
	private String content;

	@Column(name="soluer_id")
	private Integer soluerId;
	
	@Column(name="time")
	private Date time;
	
	@Column(name="like_freq")
	private Integer likeFreq;
	
	public Solution() {}

	public Integer getSolutionId() {
		return solutionId;
	}

	public void setSolutionId(Integer solutionId) {
		this.solutionId = solutionId;
	}

	public Puzzle getPuzzle() {
		return puzzle;
	}

	public void setPuzzleId(Puzzle puzzle) {
		this.puzzle = puzzle;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setPuzzle(Puzzle puzzle) {
		this.puzzle = puzzle;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Integer getLikeFreq() {
		return likeFreq;
	}

	public void setLikeFreq(Integer likeFreq) {
		this.likeFreq = likeFreq;
	}

	public Integer getSoluerId() {
		return soluerId;
	}

	public void setSoluerId(Integer soluerId) {
		this.soluerId = soluerId;
	}
	
}
