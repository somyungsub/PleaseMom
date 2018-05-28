package com.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.MemberDAO;
import com.dto.MemberDTO;
import com.exception.CommonException;

@Controller
public class LoginController {

	
	@Autowired
	MemberDAO mDao;
	
	@ExceptionHandler(Exception.class)
	public String error(){
		return "error";
	}
	
	@RequestMapping("/LoginFormServlet")
	public String loginForm(){
		return "loginForm";
	}
	
	@RequestMapping("/LoginServlet")
	public String login(@RequestParam String userid, @RequestParam String passwd, HttpServletRequest request)
			throws CommonException {
		HashMap<String, String> map = new HashMap<>();
		map.put("mem_id", userid);
		map.put("mem_passwd", passwd);

		MemberDTO dto = null;
		String target = null;
		String title = null;

		dto = mDao.login(map);
		if (dto == null) {
			title = "아이디 또는 비밀번호가 일치하지 않습니다.";
			String link = "LoginFormServlet";
			request.setAttribute("title", title);
			request.setAttribute("link", link);
			target = "error";
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("login", dto);
			request.setAttribute("msgLogin", "로그인 되었습니다");
			target = "home";
		}
		return target;
	}
	
	@RequestMapping("/LogoutServlet")
	public String logout(HttpSession session, HttpServletRequest request){
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		
		String target = null;
		String title = null;
		
		if (dto != null) {
			session.invalidate();
			request.setAttribute("msgLogout", "로그아웃 되었습니다");
			target = "home";
		} else{
			target = "error";
			title = "로그인이 되어있지 않습니다.";
			String link = "home.jsp";
			request.setAttribute("title", title);
			request.setAttribute("link", link);
		}
		return target;
	}
	
}
