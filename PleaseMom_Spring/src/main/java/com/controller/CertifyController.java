package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.authentication.SendSMS;
import com.common.PasswordGenerator;
import com.dao.MemberDAO;
import com.dto.MemberDTO;
import com.exception.CommonException;

@Controller
public class CertifyController {

	@Autowired
	MemberDAO mDao;
	
	/*@ExceptionHandler(Exception.class)
	public String error(){
		return "error";
	}*/
	
	@RequestMapping("/PhoneCertifyFormServlet")
	public String phoneCertifyForm(){
		return "phoneCertifyForm";
	}

	@RequestMapping("/PhoneCertifyResultServlet")
	public String phoneCertifyResult(@RequestParam String phoneNumber, HttpSession session) throws CommonException {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		dto.setMem_phone(phoneNumber);

		mDao.updatePhoneNumber(dto);
		return "phoneCertifyResult";
	}
	
	@RequestMapping("/PhoneCertifyServlet")
	public String phoneCertify(HttpServletRequest request) throws CommonException {
		String phone1 = (String) request.getParameter("phone1");
		String phone2 = (String) request.getParameter("phone2");
		String phone3 = (String) request.getParameter("phone3");
		String phone = phone1 + phone2 + phone3;

		String target = "";
		boolean isExist = mDao.findByPhone(phone);
		if (isExist) {
			target = "phoneCertifyForm";
		} else {
			target = "phoneCertify";
			String certifyNumber = PasswordGenerator.getCertifyNumber(6);
			System.out.println("구간1");
			SendSMS.sendSMS(phone, certifyNumber);
			System.out.println("구간2");
			request.setAttribute("certifyNumber", certifyNumber);
			request.setAttribute("phoneNumber", phone);
			System.out.println("구간3");
		}
		return target;
	}
	
	
}
