package com.wdd.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.wdd.entity.Users;
import com.wdd.idao.IUserDao;

public class UserDaoimpl extends BaseDao implements IUserDao {

	public Users login(Users user) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = this.getCon();
			ps = con.prepareStatement("select * from users where username=? and password=?");
//			System.out.println(user.getUsername());
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
                user.setRelname(rs.getString(3));
                user.setTel(rs.getString(6));
                user.setAddress(rs.getString(7));
			}
			return user;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.closeAll(con, ps);
		}
		return null;
	}

	public int regist(Users user) throws Exception {
	
		Connection con=null;
		PreparedStatement ps = null;
		try {
			con = this.getCon();
			ps = con.prepareStatement("insert into users values(null,?,?,?,?,?,?)");
			
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getRelname());
			ps.setString(4, user.getSex());
			ps.setString(5, user.getTel());
			ps.setString(6, user.getAddress());
//			System.out.println("aaaaaaaaa");
			int num=ps.executeUpdate();
//			System.out.println("bbbbbbbbbb");
//			System.out.println(num);
			return num;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.closeAll(con, ps);
		}
		return 0;
	}

}
