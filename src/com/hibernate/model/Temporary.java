package com.hibernate.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Temporary")
public class Temporary 
{
	@Id
	@GeneratedValue
	@Column(name="Id")
	private int Id;
	
	@Column(name="TempItem")
	private String tempItem;

	public String getTempItem() {
		return tempItem;
	}

	public void setTempItem(String tempItem) {
		this.tempItem = tempItem;
	}

	public Temporary(String tempItem) {
		super();
		this.tempItem = tempItem;
	}

	public Temporary() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Temporary [tempItem=" + tempItem + "]";
	}

	
	
	
	
}
