package com.wdd.idao;

import com.wdd.entity.Users;

public interface IUserDao {
	public Users login(Users user) throws Exception;
	public int regist(Users user) throws Exception;
}
