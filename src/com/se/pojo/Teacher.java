package com.se.pojo;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "teacher")
public class Teacher {

	@Id
	@Column(name = "teacher_id")
	@GeneratedValue(generator = "teacher_id")
	@GenericGenerator(name = "teacher_id", strategy = "assigned")
	private int id;
	@Column(name = "teacher_password")
	private String password;
	@Column(name = "teacher_name")
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Teacher [name=" + name + ", id=" + id + ", password=" + password + "]";
	}
	
		/***********************************************/
	
	/*
	 * 
	 * foreign key
	 * 2019-5-31
	 * created by lw
	 * 
	 */
	
	/*
	 * 实验与教师关联
	 * 一对多
	 */
	@OneToMany(cascade = CascadeType.ALL
			,targetEntity = Exp.class,
			mappedBy = "teacher")
	private List<Exp> exps;
	
	public void setExps(List<Exp> exps) {
		this.exps = exps;
	}
	
	public List<Exp> getExps() {
		return exps;
	}
	
	/**********************************************/
	
}
