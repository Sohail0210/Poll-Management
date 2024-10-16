package com.polling.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "poll")
public class Poll {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private String description;
	private String option1;
	private String option2;
	private Integer opt1Count=0;
	private Integer opt2Count=0;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public Integer getOpt1Count() {
		return opt1Count;
	}
	public void setOpt1Count(Integer opt1Count) {
		this.opt1Count = opt1Count;
	}
	public Integer getOpt2Count() {
		return opt2Count;
	}
	public void setOpt2Count(Integer opt2Count) {
		this.opt2Count = opt2Count;
	}
	public Poll(int id, String title, String description, String option1, String option2, Integer opt1Count,
			Integer opt2Count) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.option1 = option1;
		this.option2 = option2;
		this.opt1Count = opt1Count;
		this.opt2Count = opt2Count;
	}
	public Poll() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Poll [id=" + id + ", title=" + title + ", description=" + description + ", option1=" + option1
				+ ", option2=" + option2 + ", opt1Count=" + opt1Count + ", opt2Count=" + opt2Count + "]";
	}
	
	
	
}
