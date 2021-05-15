package com.example.demo.entity.concretes;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "jobtitle")
public class JobTitle {
	@Id
	@Column(name = "id")

	private int id;
	@Column(name = "title")
	private String title;

	public JobTitle() {

	}

	public JobTitle(int id, String title) {
		super();
		this.id = id;
		this.title = title;
	}

}
