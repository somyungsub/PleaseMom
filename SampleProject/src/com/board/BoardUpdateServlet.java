package com.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.BoardService;
import com.dto.BoardDTO;
import com.dto.MemberDTO;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/BoardUpdateServlet")
public class BoardUpdateServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("BoardUpdateServlet");
		request.setCharacterEncoding("UTF-8");
		String scb_title=request.getParameter("scb_title");
		String scb_from1[]=request.getParameter("scb_from").split("/");//출발지
		String scb_from=scb_from1[0];
		String scb_via=request.getParameter("scb_via");
		String scb_to=request.getParameter("scb_to");
		String scb_sdate=request.getParameter("scb_sdate");
		String scb_content=request.getParameter("scb_content");
		int scb_num=Integer.parseInt(request.getParameter("scb_num"));
		BoardService bService=new BoardService();
		int scb_from_num= bService.airportNum(scb_from);
		int scb_to_num= bService.airportNum(scb_to);
		HttpSession session=request.getSession();
		MemberDTO mDto=(MemberDTO)session.getAttribute("login");
		int scb_mem_num=mDto.getMem_num();
		BoardDTO bDto=new BoardDTO(scb_num, scb_mem_num, scb_from_num, scb_via, scb_to_num, scb_sdate, scb_title, scb_content, null, null,"N");

		bService.update(bDto);

		RequestDispatcher dis =
				request.getRequestDispatcher("BoardRetrieveServlet");
				dis.forward(request, response);
	}//end doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





