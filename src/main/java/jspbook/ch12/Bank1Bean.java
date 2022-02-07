package jspbook.ch12;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Bank1Bean {

	private int aid;
	private String aname;
	private int balance;

	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	
	//====================================================
	// 연결, 연결해제

	// JNDI
	public void connect() {
		try {
			Context initContext = new InitialContext();

			Context envContext = (Context) initContext.lookup("java:/comp/env");

			DataSource ds = (DataSource) envContext.lookup("jdbc/xe");
			conn = ds.getConnection();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void disconnect() {
		try {
			if (conn != null) {
				conn.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("close");

	}

	public void getData() {

		connect();

		try {
			stmt = conn.createStatement();

			ResultSet rs = stmt.executeQuery("select * from bank1");
			
			rs.next();
			aid = rs.getInt("aid");
			aname = rs.getString("aname");
			balance = rs.getInt("balance");

		} catch (Exception e) {
			System.out.println(aid + aname + balance);
			System.out.println(e);
		}

		finally {
			disconnect();
		}

	}

	// ============================================================
	// 이체

	public boolean transfer(int bal) {
		connect();

		try {
			conn.setAutoCommit(false); // AutoCommit해제

			pstmt = conn.prepareStatement("update bank1 set balance = balance - ? where aid = 101");
			pstmt.setInt(1, bal);
			pstmt.executeUpdate();

			pstmt = conn.prepareStatement("update bank2 set balance = balance + ? where aid = 201");
			pstmt.setInt(1, bal);
			pstmt.executeUpdate();
			stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery("select balance from bank2 where aid = 201");
			rs.next();
			
			if (rs.getInt(1) > 500) {
				conn.rollback();
				return false;
			} else {
				conn.commit();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		finally {
			disconnect();
		}
		
		return true;

	}
	
	//==================================
	// 겟셋

	public int getAid() {
		return aid;
	}

	public String getAname() {
		return aname;
	}

	public int getBalance() {
		return balance;
	}

	

}
