package com.recipe.member.vo;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import com.recipe.common.JDBCTemplate;

public class MemberDAO {
	public int insertMember(Connection conn, MemberVO m) {

		String query = null;
		Statement stmt = null;
		int result = 0;
		
		try {						
			query = "INSERT INTO MEMBER VALUES('"+m.getUserId()+"','"+m.getUserPw()+"','"+m.getUserName()
			+"','"+m.getUserName()+"',"+m.getUserEmail()+",'"+m.getUserGender()+"','"+m.getUserNickname()+
			"','"+m.getUserBirth()+"','"+m.getUserPhone()+"')";
			stmt = conn.createStatement();
			result = stmt.executeUpdate(query);		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(stmt);
		}
		return result;
	}
}
