package chapter09;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Bank1Bean {

	//멤버 변수 = 속성=필드
	private int aid;
	private String aname;
	private int balance;
	
	//데이터 베이스 연결 변수 선언
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	
	//JNDI를 통한 데이터 베이스 연동
	public void connect() {
		
		try{
			//드라이버를 찾는 클래스
			Context initContext = new InitialContext();
			Context envContext =(Context) initContext.lookup("java:/comp/env");			
			DataSource ds = (DataSource)envContext.lookup("jdbc/orcl");
			conn =ds.getConnection();
		}catch(Exception e ){
			e.printStackTrace();
		}//try end
		
	}//connect 메서드
	//==========================================================
	//connect 반환 메서드
	public void disconnect() {
		
		try {
			if(conn != null) 
				conn.close();
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		System.out.println("close");
	}//disconnect 메서드
	
	//==========================================================
	public void getData() {
		connect();
		try {
			stmt=conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from bank1");
			rs.next();
			aid=rs.getInt("aid");
			aname = rs.getString("aname");
			balance = rs.getInt("balance");
		} catch (Exception e) {
			System.out.println(aid+aname+balance);
			System.out.println(e);
		}finally {
			disconnect();
		}
	}//getData 메서드
	
	//이체
	public boolean transfer(int bal) {
		connect();
		try {
			
			//auto commit 모드(일반 ORACLE)에서 사용되는 update,delete는 결과를 반영하지 않음.
			conn.setAutoCommit(false);// auto commit 해제하고 사용
			//인출
			String sql = "update bank1 set balance=balance-? where aid= 101";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,bal);
			pstmt.executeUpdate();
			
			//입금
			String sql2 = "update bank2 set balance=balance+? where aid= 201";
			pstmt=conn.prepareStatement(sql2);
			pstmt.setInt(1,bal);
			pstmt.executeUpdate();
			
			//결과 확인
			stmt=conn.createStatement();
			ResultSet rs = stmt.executeQuery("select balance from bank2 where aid=201");
			
			rs.next();
			
			if(rs.getInt(1) > 1000) {
				conn.rollback(); //취소
				return false;
			}else {
				conn.commit();
			}
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			disconnect();
		}
		
		return true;
	}
	
	
	
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
