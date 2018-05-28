package com.mypage;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.dto.MemberDTO;
import com.exception.CommonException;
import com.service.MemberService;

@WebServlet("/EmailConfirmServlet")
public class EmailConfirmServlet extends HttpServlet {
	static Logger logger = LoggerFactory.getLogger(EmailConfirmServlet.class);
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		System.out.println(userid);
		HttpSession session = request.getSession();
		request.setAttribute("userid", userid);
		MemberService service = new MemberService();
		String target="";
		String title="";
		try {
		service.authenEmail(userid);
		target = "emailConfirm.jsp";
		request.setAttribute("update", "정상적으로 수정되었습니다.");
		}catch (CommonException e) {
			title= e.getMessage();
			String link="LoginFormServlet";
			target="error.jsp";
			request.setAttribute("title", title);
			request.setAttribute("link", link);
		}
		
	
		
		
		RequestDispatcher dis = request.getRequestDispatcher(target);
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
