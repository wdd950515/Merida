package com.wdd.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.wdd.entity.Bikes;
import com.wdd.idao.IBikeDao;

public class BikeDaoimpl extends BaseDao implements IBikeDao{
	public List<Bikes> selectAllBike() throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = this.getCon();
			ps = con.prepareStatement("select * from bikes");
			
			rs = ps.executeQuery();
			List<Bikes> bikeList = new ArrayList<Bikes>();
			Bikes bike = null;
			while (rs.next()) {
				bike = new Bikes();
				bike.setBikeid(rs.getInt(1));
				bike.setBikeName(rs.getString(2));
				bike.setBikeImage(rs.getString(3));
				bike.setIntroduction(rs.getString(4));
				bike.setPrice(rs.getDouble(5));
				bike.setCatalogid(rs.getInt(6));
				bikeList.add(bike);
			}
			
			return bikeList;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				rs.close();
			}
			this.closeAll(con, ps);
		}
		return null;
	}

	public Bikes selectBikeById(int bikeid) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = this.getCon();
			ps = con.prepareStatement("select * from bikes where bikeid=?");
			ps.setInt(1, bikeid);
			rs = ps.executeQuery();
			Bikes bike = null;
			if (rs.next()) {
				bike = new Bikes();
				bike.setBikeid(rs.getInt(1));
				bike.setBikeName(rs.getString(2));
				bike.setBikeImage(rs.getString(3));
				bike.setIntroduction(rs.getString(4));
				bike.setPrice(rs.getDouble(5));
			}
			return bike;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				rs.close();
			}
			this.closeAll(con, ps);
		}
		return null;
	}
	public Bikes selectBikeByName(String bikeName) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = this.getCon();
			ps = con.prepareStatement("select * from bikes where bikeName=?");
			ps.setString(1, bikeName);
			rs = ps.executeQuery();
			Bikes bike = null;
			if (rs.next()) {
				bike = new Bikes();
				bike.setBikeName(rs.getString(2));
				bike.setBikeImage(rs.getString(3));
				bike.setIntroduction(rs.getString(4));
				bike.setPrice(rs.getDouble(5));
			}
			return bike;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				rs.close();
			}
			this.closeAll(con, ps);
		}
		return null;
	}
	
}

