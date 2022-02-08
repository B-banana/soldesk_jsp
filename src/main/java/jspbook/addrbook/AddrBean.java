package jspbook.addrbook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class AddrBean {

	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	// ====================================================
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

	// =================================================
	// update

	public boolean updateDB(AddrBook addrbook) {
		connect();
		
		String sql="update addrbook set ab_name=?, ab_email=?, ab_comdept=?, ab_birth=?, ab_tel=?, ab_memo=? where ab_id=?";
		
		try {
			
			pstmt=conn.prepareStatement(sql);
			//매핑
			pstmt.setString(1, addrbook.getAb_name());
			pstmt.setString(2, addrbook.getAb_email());
			pstmt.setString(3, addrbook.getAb_comdept());
			pstmt.setString(4, addrbook.getAb_birth());
			pstmt.setString(5, addrbook.getAb_tel());
			pstmt.setString(6, addrbook.getAb_memo());
			pstmt.setInt(7, addrbook.getAb_id());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		
		return true;
	}
	// ========================================================
	// delete

	public boolean deleteDB(int gb_id) {

		connect();

		String sql = "delete from addrbook where ab_id = ?";

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, gb_id);

			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		finally {
			disconnect();
		}

		return true;

	}

	// ========================================================
	// insert

	public boolean insertDB(AddrBook addrbook) {

		connect();

		String sql = "insert into addrbook(ab_id, ab_name, ab_email, ab_comdept, ab_birth, ab_tel, ab_memo) VALUES(?, ?, ?, ?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, addrbook.getAb_id());
			pstmt.setString(2, addrbook.getAb_name());
			pstmt.setString(3, addrbook.getAb_email());
			pstmt.setString(4, addrbook.getAb_comdept());
			pstmt.setString(5, addrbook.getAb_birth());
			pstmt.setString(6, addrbook.getAb_tel());
			pstmt.setString(7, addrbook.getAb_memo());

			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		finally {
			disconnect();
		}

		return true;

	}

	// ==========================================================
	// 상세페이지 - one select

	public AddrBook getDB(int gb_id) {

		connect();

		String sql = "SELECT * FROM addrbook where ab_id = ?";

		AddrBook ab = new AddrBook();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, gb_id);

			rs = pstmt.executeQuery();
			rs.next();

			ab.setAb_id(rs.getInt("ab_id"));
			ab.setAb_name(rs.getString("ab_name"));
			ab.setAb_email(rs.getString("ab_email"));
			ab.setAb_comdept(rs.getString("ab_comdept"));
			ab.setAb_birth(rs.getString("ab_birth"));
			ab.setAb_tel(rs.getString("ab_tel"));
			ab.setAb_memo(rs.getString("ab_memo"));

		} catch (SQLException e) {
			e.printStackTrace();

		}

		finally {
			disconnect();
		}

		return ab;
	}

	// ==========================================================
	// 전체 목록

	public ArrayList<AddrBook> getDBList() {

		connect();

		String sql = "SELECT * FROM addrbook order by ab_id";
		
		ArrayList<AddrBook> datas = new ArrayList<AddrBook>();
		
		try {
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
			rs.next();
			
			while (rs.next()) {
				AddrBook ab = new AddrBook();
				
				ab.setAb_id(rs.getInt("ab_id"));
				ab.setAb_name(rs.getString("ab_name"));
				ab.setAb_email(rs.getString("ab_email"));
				ab.setAb_comdept(rs.getString("ab_comdept"));
				ab.setAb_birth(rs.getString("ab_birth"));
				ab.setAb_tel(rs.getString("ab_tel"));
				ab.setAb_memo(rs.getString("ab_memo"));
				
				datas.add(ab);
			}
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();

		}
		finally {
			disconnect();
		}

		return datas;
	}

}
