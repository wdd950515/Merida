package com.wdd.dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BaseDao {
	// 静态代码块---类加载时就运行，并且在
	// 内存只有一份，常驻内存
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public Connection getCon() {
		String url = "jdbc:mysql://localhost:3307/meridr";
		try {
			Connection con = DriverManager.getConnection(url, "root", "950515");
			return con;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public void closeAll(Connection con,PreparedStatement ps){
		
			try {
				if(ps!=null)
				{
					ps.close();
					}
				if(con!=null){
					con.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
}

