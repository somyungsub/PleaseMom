package com.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.MemberDAO;
import com.dto.MemberDTO;
import com.exception.CommonException;

@Controller
public class MyPageController {

	@Autowired
	MemberDAO mDao;
	
	@ExceptionHandler(Exception.class)
	public String error(){
		return "error";
	}
	
	@RequestMapping("/EmailConfirmServlet")
	public String emailConfirm(HttpServletRequest request, HttpSession session) throws CommonException {
		String userid = request.getParameter("userid");
		System.out.println(userid);
		request.setAttribute("userid", userid);
		mDao.authenEmail(userid);
		request.setAttribute("update", "정상적으로 수정되었습니다.");
		return "emailConfirm";
	}

	@RequestMapping("/ManageAccountFormServlet")
	public String manageAccountForm(HttpSession session, HttpServletRequest request) throws CommonException {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		String target = "";
		if (dto != null) {
			target = "manageAccount";
			String id = dto.getMem_id();
			MemberDTO profile = mDao.catchProfile(id);
			request.setAttribute("prof", profile);
		} else {
			target = "home";
		}
		return target;
	}

	@RequestMapping("/UpdateProfileFormServlet")
	public String updateProfileForm(HttpSession session, HttpServletRequest request) throws CommonException {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");

		String target = "";
		String title = "";
		if (dto != null) {
			target = "updateProfile";
			String id = dto.getMem_id();
			MemberDTO profile = mDao.catchProfile(id);
			request.setAttribute("prof", profile);
		} else {
			target = "home";
		}
		return target;
	}

	@RequestMapping("/UpdateProfileServlet")
	public String updateProfile(HttpSession session, HttpServletRequest request) throws CommonException {
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		HashMap<String, String> map = new HashMap<>();
		map.put("userid", userid);
		map.put("passwd", passwd);
		map.put("phone", phone);
		map.put("username", username);

		mDao.updateMember(map);
		request.setAttribute("update", "정상적으로 수정되었습니다.");

		return "home";
	}
	
	@RequestMapping("/sendMail")
	public String sendMail(){
		return "sendMail";
	}

}
