package com.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.common.CommonUtil;
import com.dto.MemberDTO;
import com.exception.CommonException;
import com.service.MemberService;

@WebServlet("/AddMemberServlet")
public class AddMemberServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userid = (String)request.getParameter("userid");
		String passwd = (String)request.getParameter("passwd");
		String username = (String)request.getParameter("username");
		String birthYear = (String)request.getParameter("birthYear");
		String birthMonth = (String)request.getParameter("birthMonth");
		String birthDate = (String)request.getParameter("birthDate");
		
		String birth = CommonUtil.javaToOracleDate(birthYear, birthMonth, birthDate);
		
		String target = "";
	
		MemberDTO dto = new MemberDTO();
		dto.setMem_id(userid);
		dto.setMem_passwd(passwd);
		dto.setMem_name(username);
		dto.setMem_birth(birth);
		
		MemberService service = new MemberService();
		
		try {
			service.addMember(dto);
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
