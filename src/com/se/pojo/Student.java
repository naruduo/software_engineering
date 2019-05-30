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
@Table(name = "student")
public class Student {
	@Id
	@Column(name = "id", nullable = false)
	@GeneratedValue(generator = "id")
	@GenericGenerator(name = "id", strategy = "assigned")
	private int id;
	@Column(name = "name")
	private String name;
	@Column(name = "teacherId")
	private int teacherId;
	@Column(name = "password")
	private String password;
	@Column(name = "avatar")
	private String avatar;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", teacherId=" + teacherId + ", password=" + password + "]";
	}

}
