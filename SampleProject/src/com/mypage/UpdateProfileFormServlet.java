package com.mypage;

import java.io.IOException;

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

@WebServlet("/UpdateProfileFormServlet")
public class UpdateProfileFormServlet extends HttpServlet {
	static Logger logger = LoggerFactory.getLogger(UpdateProfileFormServlet.class);
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		
		logger.debug("값 확인 {}", dto); 

		String target="";
		String title="";
		if(dto!=null){
			target="updateProfile.jsp";
			String id = dto.getMem_id();
			MemberService service = new MemberService();
			try {
				MemberDTO profile = service.catchProfile(id);
				logger.debug("profile 값 확인 {}", profile); 
				request.setAttribute("prof", profile);
			} catch (CommonException e) {
				title= e.getMessage();
				String link="LoginFormServlet";
				target="error.jsp";
				request.setAttribute("title", title);
				request.setAttribute("link", link);
			}
			
		}else{
			target = "home.jsp";
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher(target);
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
