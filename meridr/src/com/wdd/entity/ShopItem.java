package com.wdd.entity;

import java.io.Serializable;
import java.text.DecimalFormat;

public class ShopItem implements Serializable {

	private static final long serialVersionUID = 1L;
	private Bikes bike = new Bikes();
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public Bikes getBike() {
		return bike;
	}

	public void setBike(Bikes bike) {
		this.bike = bike;
	}

	public double getAllPrice() {
		double price = bike.getPrice() * this.num;
		String price2 = new DecimalFormat("#0.00").format(price);
		return Double.parseDouble(price2);
	}
}
