package com.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exception.CommonException;
import com.service.MemberService;

@WebServlet("/DeleteMemberServlet")
public class DeleteMemberServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = (String)request.getParameter("deleteUserid");
		
		String target = "";
		
		MemberService service = new MemberService();
		try {
			service.deleteMember(userid);
			HttpSession session = request.getSession();
			session.invalidate();
			target = "home.jsp";
		} catch (CommonException e) {
			target = "error.jsp";
			request.setAttribute("msg", e.getMessage());
			request.setAttribute("link", "home.jsp");
		}
		
		RequestDispatcher dis = request.getRequestDispatcher(target);
		dis.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
