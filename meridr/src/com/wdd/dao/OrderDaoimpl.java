package com.wdd.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Collection;

import com.wdd.idao.IOrderDao;
import com.wdd.entity.ShopCart;
import com.wdd.entity.ShopItem;
import com.wdd.entity.Users;

public class OrderDaoimpl extends BaseDao implements IOrderDao {

	public String insertOrder(ShopCart cart, Users user) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			
			con = this.getCon();
			con.setAutoCommit(false);
			String sql = "insert into orders (orderId,userid,relname,tel,address,total) values(?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			String orderId = generateOrderId();
			ps.setString(1, orderId);
			ps.setInt(2, user.getUserid());
			ps.setString(3, user.getRelname());
			ps.setString(4, user.getTel());
			ps.setString(5, user.getAddress());
			ps.setDouble(6, cart.getTotal());
			int num = ps.executeUpdate();
			System.out.println(num);
			
			Collection<ShopItem> allItem = cart.getAllItem();
			String sql2 = "insert into goods (bikename,num,allPrice) values(?,?,?)";
			ps = con.prepareStatement(sql2);
			int num2 = 0;
			for (ShopItem item : allItem) {
				ps.setString(1, item.getBike().getBikeName());
				ps.setInt(2, item.getNum());
				ps.setDouble(3, item.getAllPrice());
				num2 = ps.executeUpdate();
			}
			// 提交
			con.commit();
			if (num > 0 && num2 > 0) {
				return orderId;
			}
		} catch (Exception e) {
			e.printStackTrace();
			// 回滚----让已提交的数据失效
			con.rollback();
		} finally {
			this.closeAll(con, ps);
		}
		return null;
	}

	final int MAX = 999999;
	int num = 0;

	private synchronized String generateOrderId() {
		long currentTimeMillis = System.currentTimeMillis();
		String str = Long.toString(currentTimeMillis);
		String orderId = str + num;
		num++;
		if (num == MAX) {
			num = 0;
		}
		return orderId;
	}
}
