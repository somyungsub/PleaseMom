package com.certify;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.authentication.SendSMS;
import com.common.PasswordGenerator;
import com.dto.MemberDTO;
import com.exception.CommonException;
import com.service.MemberService;

@WebServlet("/PhoneCertifyResultServlet")
public class PhoneCertifyResultServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String phone = request.getParameter("phoneNumber");
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		dto.setMem_phone(phone);
		
		MemberService service = new MemberService();
		String target = "";
		String title = "";
		try {
			service.updatePhoneNumber(dto);
			target = "phoneCertifyResult.jsp";
		} catch (CommonException e) {
			target = "error.jsp";
			title = e.getMessage();
			String link = "PhoneCertifyFormServlet";
			request.setAttribute("title", title);
			request.setAttribute("link", link);
		}
		
		RequestDispatcher dis = request.getRequestDispatcher(target);
		dis.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
