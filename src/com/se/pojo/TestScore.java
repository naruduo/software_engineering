package com.se.pojo;

import java.util.Date;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "test_score")
public class TestScore {
	@Id
	@Column(name = "stu_id", nullable = false)
	@GeneratedValue(generator = "stu_id")
	@GenericGenerator(name = "stu_id", strategy = "assigned")
	private int stuId;

	@Column(name = "grade")
	private int grade;

	@Column(name = "time")
	private Date time;

	public int getStuId() {
		return stuId;
	}

	public void setStuId(int stuId) {
		this.stuId = stuId;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "TestScore [stuId=" + stuId + ", grade=" + grade + ", time=" + time + "]";
	}

}
