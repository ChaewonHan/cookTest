package com.recipe.member.service;

import java.sql.Connection;
import com.recipe.common.JDBCTemplate;
import com.recipe.member.vo.MemberDAO;
import com.recipe.member.vo.MemberVO;

public class MemberService {
	
	public int insertMember(MemberVO v) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDAO().insertMember(conn, v);
			if(result > 0) {
				JDBCTemplate.commit(conn);
			}else {
				JDBCTemplate.close(conn);
			}
		return result;	
	}

	public MemberVO loginMember(String userId, String userPw) {
		// TODO Auto-generated method stub
		return null;
	}
}     
