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

@WebServlet("/PhoneCertifyServlet")
public class PhoneCertifyServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phone1 = (String)request.getParameter("phone1");
		String phone2 = (String)request.getParameter("phone2");
		String phone3 = (String)request.getParameter("phone3");
		
		String phone = phone1 + phone2 + phone3;
		MemberService service = new MemberService();
		String target = "";
		String title = "";
		try {
			boolean isExist = service.findByPhone(phone);
			if (isExist) {
				target = "phoneCertifyForm.jsp";
			} else{
				target = "phoneCertify.jsp";
				String certifyNumber = PasswordGenerator.getCertifyNumber(6);
				SendSMS.sendSMS(phone, certifyNumber);
				request.setAttribute("certifyNumber", certifyNumber);
				request.setAttribute("phoneNumber", phone);
			}
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
