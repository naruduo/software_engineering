package com.se.pojo;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "online_test")
public class OnlineTest {
	@Id
	@Column(name = "ol_hw_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String question;
	private String choiceA;
	private String choiceB;
	private String choiceC;
	private String choiceD;
	private String answer;
	@Column(name = "true_freq")
	private int trueFreq;
	@Column(name = "ans_freq")
	private int ansFreq;
	@Column(name = "kno_type")
	private int courseChapterId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getChoiceA() {
		return choiceA;
	}

	public void setChoiceA(String choiceA) {
		this.choiceA = choiceA;
	}

	public String getChoiceB() {
		return choiceB;
	}

	public void setChoiceB(String choiceB) {
		this.choiceB = choiceB;
	}

	public String getChoiceC() {
		return choiceC;
	}

	public void setChoiceC(String choiceC) {
		this.choiceC = choiceC;
	}

	public String getChoiceD() {
		return choiceD;
	}

	public void setChoiceD(String choiceD) {
		this.choiceD = choiceD;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getTrueFreq() {
		return trueFreq;
	}

	public void setTrueFreq(int trueFreq) {
		this.trueFreq = trueFreq;
	}

	public int getAnsFreq() {
		return ansFreq;
	}

	public void setAnsFreq(int ansFreq) {
		this.ansFreq = ansFreq;
	}

	public int getCourseChapterId() {
		return courseChapterId;
	}

	public void setCourseChapterId(int courseChapterId) {
		this.courseChapterId = courseChapterId;
	}

	@Override
	public String toString() {
		return "OnlineTest [id=" + id + ", question=" + question + ", choiceA=" + choiceA + ", choiceB=" + choiceB
				+ ", choiceC=" + choiceC + ", choiceD=" + choiceD + ", answer=" + answer + ", trueFreq=" + trueFreq
				+ ", ansFreq=" + ansFreq + "]";
	}

}
