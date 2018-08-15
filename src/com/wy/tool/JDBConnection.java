package com.wy.tool;

import java.sql.*;

public class JDBConnection {
	private String dbDriver = "com.mysql.jdbc.Driver"; // 数据库的驱动

	private String url = "jdbc:mysql://localhost:3306/db_shopping"; // URL地址

	public Connection connection = null;

	public JDBConnection() {
		try {
			Class.forName(dbDriver).newInstance(); // 加载数据库驱动
			connection = DriverManager.getConnection(url, "root", "123456"); // 加载数据库
		} catch (Exception ex) {
			System.out.println("数据库加载失败");
		}
	}
}
