package com.hibernate.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ColdDrink")
public class ColdDrink 
{
	@Id
	@Column(name="Item3")
	private String item3;
	
	@Column(name="Price3")
	private int price3;

	public String getItem3() {
		return item3;
	}

	public void setItem3(String item3) {
		this.item3 = item3;
	}

	public int getPrice3() {
		return price3;
	}

	public void setPrice3(int price3) {
		this.price3 = price3;
	}

	@Override
	public String toString() {
		return "ColdDrink [item3=" + item3 + ", price3=" + price3 + "]";
	}

	public ColdDrink(String item3, int price3) {
		super();
		this.item3 = item3;
		this.price3 = price3;
	}

	public ColdDrink() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
