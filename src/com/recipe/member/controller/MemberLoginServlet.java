package com.recipe.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/MemberLogin.do")
public class MemberLoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		execute(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		execute(request, response);
	}
	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		
		MemberVO mv = new MemberService().loginMember(userId, userPw);
		
		
		//out객체를 통해서 한글을 정상적으로 전송하려면 인코딩 작업이 필요함
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		if(mv!=null) {
			//jsp에서는 sessino객체가 내장객체 이기 때문에 바로 사용이 가능하지만
			//Servlet은 내장객체가 아니기 때문에 만들고 나서 사용해야 함
			HttpSession session = request.getSession();
			session.setAttribute("member", mv);
			
			RequestDispatcher rd = request.getRequestDispatcher("/Member/MemberLoginSuccess.jsp");
			rd.forward(request, response);
			
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("/Member/MemberLoginSuccess.jsp");
			rd.forward(request, response);
		}
		
	}
}
