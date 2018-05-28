package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.common.CommonUtil;
import com.dao.MemberDAO;
import com.dto.MemberDTO;
import com.exception.CommonException;

@Controller
public class MemberController {

	
	@Autowired
	MemberDAO mDao;
	
	@ExceptionHandler(Exception.class)
	public String error(){
		return "error";
	}
	
	@RequestMapping("/AddMemberFormServlet")
	public String addMemberForm(){
		return "addMemberForm";
	}
	
	@RequestMapping("/AddMemberServlet")
	public String addMember(HttpServletRequest request) throws CommonException{
		String userid = (String)request.getParameter("userid");
		String passwd = (String)request.getParameter("passwd");
		String username = (String)request.getParameter("username");
		String birthYear = (String)request.getParameter("birthYear");
		String birthMonth = (String)request.getParameter("birthMonth");
		String birthDate = (String)request.getParameter("birthDate");
		
		String birth = CommonUtil.javaToOracleDate(birthYear, birthMonth, birthDate);
		
		MemberDTO dto = new MemberDTO();
		dto.setMem_id(userid);
		dto.setMem_passwd(passwd);
		dto.setMem_name(username);
		dto.setMem_birth(birth);
		
		mDao.addMember(dto);
		
		return "home";
	}

	@RequestMapping("/DeleteMemberServlet")
	public String deleteMember(@RequestParam String deleteUserid, HttpSession session) throws CommonException {
		mDao.deleteMember(deleteUserid);
		session.invalidate();
		return "home";
	}
}
