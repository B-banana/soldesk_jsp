package jspbook.control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getCon() {
		
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/xe");
			
			con = ds.getConnection();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//===========================================
	// 1. Insert Into.. Create
	public void insertMember(MemberDTO mbean) {
		
		try {
			//연결 메소드 호출
			getCon();
			
			//쿼리를 스트링으로 처리
			String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
			
			//쿼리를 SQL문으로 변경
			PreparedStatement pstmt = con.prepareStatement(sql);

			//?에 매핑
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPass());
			pstmt.setString(3, mbean.getPass2());
			pstmt.setString(4, mbean.getEmail());
			pstmt.setString(5, mbean.getGender());
			pstmt.setString(6, mbean.getAddress());
			pstmt.setString(7, mbean.getPhone());
			pstmt.setString(8, mbean.getHobby());
			pstmt.setString(9, mbean.getJob());
			pstmt.setString(10, mbean.getAge());
			pstmt.setString(11, mbean.getInfo());

			pstmt.executeUpdate();
			con.close();	//자원반납
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	// ----------------------------------------------------
	// 2. select from.. Read
	public Vector<MemberDTO> allSelectMember() {
		
		Vector<MemberDTO> v = new Vector<MemberDTO>();
		
		try {
			getCon();
			
			String sql = "select * from member";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();	//오라클의 모든 회원들의 정보가 담겨있음
			
			while(rs.next()) {
				MemberDTO bean = new MemberDTO();
				bean.setId(rs.getString(1)); 
				bean.setPass(rs.getString(2)); 
				bean.setPass2(rs.getString(3)); 
				bean.setEmail(rs.getString(4)); 
				bean.setGender(rs.getString(5)); 
				bean.setAddress(rs.getString(6)); 
				bean.setPhone(rs.getString(7)); 
				bean.setHobby(rs.getString(8)); 
				bean.setJob(rs.getString(9)); 
				bean.setAge(rs.getString(10)); 
				bean.setInfo(rs.getString(11)); 
				
				v.add(bean);
			}

			con.close();	//자원반납
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return v;
		
	}

	// ----------------------------------------------------
	// 3. oneSelectmember -> 상세정보
	public MemberDTO oneSelectMember(String id) {
		
		MemberDTO bean = new MemberDTO();
		
		try {
			getCon();
			
			String sql = "select * from member where email=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {	
				bean.setId(rs.getString(1)); 
				bean.setPass(rs.getString(2)); 
				bean.setPass2(rs.getString(3)); 
				bean.setEmail(rs.getString(4)); 
				bean.setGender(rs.getString(5)); 
				bean.setAddress(rs.getString(6)); 
				bean.setPhone(rs.getString(7)); 
				bean.setHobby(rs.getString(8)); 
				bean.setJob(rs.getString(9)); 
				bean.setAge(rs.getString(10)); 
				bean.setInfo(rs.getString(11)); 
			}
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}
	
	
	// ----------------------------------------------------
	// 4-0 비밀번호 확인 작업.
	// 개인 비밀번호 반납해주는 메소드
	public String getPass(String id) {
		
		String pass = "";
		
		try {
			getCon();
			
			String sql = "select pass from member where id=?";
			pstmt = con.prepareCall(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				pass = rs.getString(1);
			}
			
			con.close();
	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return pass;
	}
	
	
	// 4. update set... update
	public void updateMember(MemberDTO bean) {
		
		try {
			getCon();
			
			String sql = "update member set email=?, phone=?, job=? where id=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, bean.getEmail());
			pstmt.setString(2, bean.getPhone());
			pstmt.setString(3, bean.getJob());
			pstmt.setString(4, bean.getId());
			
			pstmt.executeUpdate();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	// ----------------------------------------------------
	// 5. delete from... Delete
	public void deleteMember(String id) {
		
		try {
			getCon();
			
			String sql = "delete from member where id=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}


}
