package com.wdd.entity;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class ShopCart implements Serializable {
	private static final long serialVersionUID = 1L;
	private HashMap<Integer, ShopItem> cart = new HashMap<Integer, ShopItem>();

	public Map<Integer, ShopItem> getCart() {
		return cart;
	}

	public void setCart(HashMap<Integer, ShopItem> cart) {
		this.cart = cart;
	}

	public void addBike(Bikes bike) {
		Integer bikeid = bike.getBikeid();
		ShopItem item;
		if (cart.containsKey(bikeid)) {
			item = cart.get(bikeid);
			item.setNum(item.getNum() + 1);
		} else {
			item = new ShopItem();
			item.setNum(1);
		}
		item.setBike(bike);
		cart.put(bikeid, item);
	}

	public Collection<ShopItem> getAllItem() {
		return cart.values();
	}

	public double getTotal() {
		Collection<ShopItem> allItem = this.getAllItem();
		double total = 0;
		for (ShopItem item : allItem) {
			double allPrice = item.getAllPrice();
			total += allPrice;
		}
		String ttt = new DecimalFormat("#0.00").format(total);
		return Double.parseDouble(ttt);
	}

	public void del(Integer bikeid) {
		cart.remove(bikeid);
	}

	public void clear() {
		cart.clear();
	}

	public void update(Integer bikeid, int num) {
		ShopItem item = cart.get(bikeid);
		if (num < 1) {
			num = 1;
		}
		item.setNum(num);
	}

	// public static void main(String[] args) {
	// Collection<ShopItem> values = new ShopCart().cart.values();
	// for (ShopItem shopItem : values) {
	// System.out.println(shopItem.getBook());
	// }
	//
	// }

}
