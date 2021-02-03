package com.recipe.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.recipe.member.service.MemberService;
import com.recipe.member.vo.MemberVO;

/**
 * Servlet implementation class MemberInsertServlet
 */
@WebServlet("/memberJoin.do")
public class MemberInsertServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}	
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
				
		MemberVO v = new MemberVO();
				
		try {
			String userId = request.getParameter("userId");
			String userPw = request.getParameter("userPw");
			String userName = request.getParameter("userName");
			String userEmail = request.getParameter("userEmail");
			char userGender = request.getParameter("userGender").charAt(0);
			String userNickname = request.getParameter("userNickname");
			String userBirth = request.getParameter("userBirth");
			String userPhone = request.getParameter("userPhone");

			v.setUserId(userId);
			v.setUserPw(userPw);
			v.setUserName(userName);
			v.setUserEmail(userEmail);
			v.setUserGender(userGender);
			v.setUserNickname(userNickname);
			v.setUserBirth(userBirth);
			v.setUserPhone(userPhone);

			int result = new MemberService().insertMember(v);

			if (result > 0) {
				HttpSession session = request.getSession();
				session.setAttribute("member", v);

				RequestDispatcher view = request.getRequestDispatcher("Member/MemberJoinSuccess.jsp");
				view.forward(request, response);
			} 
		} catch (Exception e) {
			RequestDispatcher view = request.getRequestDispatcher("/MemberJoinFail.jsp");
			view.forward(request, response);
		}
	}

}
