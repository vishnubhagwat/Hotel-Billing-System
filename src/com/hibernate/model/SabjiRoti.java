package com.hibernate.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SabjiRoti")
public class SabjiRoti 
{
	@Id
	@Column(name="Item2")
	private String item2;
	
	@Column(name="Price2")
	private int price2;

	public String getItem2() {
		return item2;
	}

	public void setItem2(String item2) {
		this.item2 = item2;
	}

	public int getPrice2() {
		return price2;
	}

	public void setPrice2(int price2) {
		this.price2 = price2;
	}

	public SabjiRoti(String item2, int price2) {
		super();
		this.item2 = item2;
		this.price2 = price2;
	}

	public SabjiRoti() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "SabjiRoti [item2=" + item2 + ", price2=" + price2 + "]";
	}

	
}
