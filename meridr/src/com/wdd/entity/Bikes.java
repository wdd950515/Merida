package com.wdd.entity;

import java.io.Serializable;

public class Bikes implements Serializable {

	private static final long serialVersionUID = 1L;
	private int bikeid;
	private String bikeName;
	private String bikeImage;
	private String introduction;
	private Double price;
	private int catalogid;
	public int getBikeid() {
		return bikeid;
	}
	public void setBikeid(int bikeid) {
		this.bikeid = bikeid;
	}
	public String getBikeName() {
		return bikeName;
	}
	public void setBikeName(String bikeName) {
		this.bikeName = bikeName;
	}
	public String getBikeImage() {
		return bikeImage;
	}
	public void setBikeImage(String bikeImage) {
		this.bikeImage = bikeImage;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public int getCatalogid() {
		return catalogid;
	}
	public void setCatalogid(int catalogid) {
		this.catalogid = catalogid;
	}
}
