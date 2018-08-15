package com.wy.dao;

import com.wy.tool.JDBConnection;
import java.sql.*;
import java.util.*;
import com.wy.domain.SmallTypeForm;

//对商品小类别信息的操作
public class SmallTypeDao {
	private Connection connection = null; // 定义连接的对象

	private PreparedStatement ps = null; // 定义预准备的对象

	private JDBConnection jdbc = null; // 定义数据库连接对象

	public SmallTypeDao() {
		jdbc = new JDBConnection();
		connection = jdbc.connection; // 利用构造方法取得数据库连接
	}

	// 以小类别外关键为条件查询信息
	public List selectOneBigId(Integer bigId) {
		List list = new ArrayList();
		SmallTypeForm small = null;
		try {
			this.ps = connection
					.prepareStatement("select * from tb_smallType where bigId=?");
			ps.setString(1, bigId.toString());
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				small = new SmallTypeForm();
				small.setId(Integer.valueOf(rs.getString(1)));
				small.setBigId(Integer.valueOf(rs.getString(2)));
				small.setSmallName(rs.getString(3));
				small.setCreaTime(rs.getString(4));
				list.add(small);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}

	// 以数据库流水号为条件查询小类别的名称
	public String selectName(Integer id) {
		String name = null;
		try {
			this.ps = connection
					.prepareStatement("select * from tb_smallType where id=?");
			ps.setString(1, id.toString());
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				name = rs.getString("smallName");
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return name;
	}

	// 删除操作
	public boolean deleteSmall(Integer id) {
		try {
			ps = connection.prepareStatement("delete from tb_smallType where id=?");
			ps.setString(1, id.toString());
			ps.executeUpdate();
			ps.close();
			return true;
		} catch (SQLException ex) {
			ex.printStackTrace();
			return false;
		}
	}

	// 修改操作
	public void updateSmall(SmallTypeForm form) {
		try {
			ps = connection.prepareStatement("update tb_smallType set bigId=?,smallName=? where id=?");
			ps.setString(1, form.getBigId().toString());
			ps.setString(2, form.getSmallName());
			ps.setString(3, form.getId().toString());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

	// 添加操作
	public void insertSmall(SmallTypeForm form) {
		try {
			ps = connection.prepareStatement("insert into tb_smallType values (null,?,?,now())");
			ps.setString(1, form.getBigId().toString());
			ps.setString(2, form.getSmallName());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

	// 以数据库流水号为条件查询信息
	public SmallTypeForm selectOneBig(Integer id) {
		SmallTypeForm small = null;
		try {
			this.ps = connection
					.prepareStatement("select * from tb_smallType where id=?");
			ps.setString(1, id.toString());
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				small = new SmallTypeForm();
				small.setId(Integer.valueOf(rs.getString(1)));
				small.setBigId(Integer.valueOf(rs.getString(2)));
				small.setSmallName(rs.getString(3));
				small.setCreaTime(rs.getString(4));
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return small;
	}

	// 全部查询的操作
	public List selectSmall() {
		List list = new ArrayList();
		SmallTypeForm small = null;
		try {
			this.ps = connection.prepareStatement("select * from tb_smallType order by id DESC");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				small = new SmallTypeForm();
				small.setId(Integer.valueOf(rs.getString(1)));
				small.setBigId(Integer.valueOf(rs.getString(2)));
				small.setSmallName(rs.getString(3));
				small.setCreaTime(rs.getString(4));
				list.add(small);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}
}
