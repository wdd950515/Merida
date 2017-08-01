package com.wdd.entity;

import java.io.Serializable;

public class Goods implements Serializable {
    private String bikename;

    private Integer num;

    private Double allprice;

    public String getBikename() {
        return bikename;
    }

    public void setBikename(String bikename) {
        this.bikename = bikename;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Double getAllprice() {
        return allprice;
    }

    public void setAllprice(Double allprice) {
        this.allprice = allprice;
    }
}