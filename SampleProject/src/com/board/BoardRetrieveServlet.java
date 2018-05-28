package com.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.BoardService;
import com.service.MemberService;
import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.exception.CommonException;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/BoardRetrieveServlet")
public class BoardRetrieveServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String scb_num = request.getParameter("scb_num");
		MemberService mService=new MemberService();
		BoardService bService = new BoardService();
		HttpSession session=request.getSession();
		try {
			MemberDTO mDto =mService.boardSearchMember(scb_num);
			HashMap<String, Object> map = bService.retrieve(scb_num);
			session.setAttribute("retrieveMap", map);
			request.setAttribute("mDto", mDto);
		} catch (CommonException e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis =
		request.getRequestDispatcher("boardRetrieve.jsp");
		dis.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





