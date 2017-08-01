package com.wdd.idao;

import java.util.List;

import com.wdd.entity.Bikes;

public interface IBikeDao {
	public List<Bikes> selectAllBike() throws Exception ;
	public Bikes selectBikeById(int bikeid) throws Exception;
	public Bikes selectBikeByName(String bikeName) throws Exception;
}
