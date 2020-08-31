package com.hibernate.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Breakfast")
public class Breakfast
{
	@Id
	@Column(name="Item")
	private String item;
	
	@Column(name="Price")
	private int price;

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Breakfast [Item=" + item + ", price=" + price + "]";
	}

	public Breakfast(String item, int price) {
		super();
		this.item = item;
		this.price = price;
	}

	public Breakfast() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
