package com.wdd.idao;

import com.wdd.entity.ShopCart;
import com.wdd.entity.Users;

public interface IOrderDao {

	public String insertOrder(ShopCart cart, Users user) throws Exception;

}
