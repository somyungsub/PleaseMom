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

import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.dto.TravelHistoryDTO;
import com.exception.CommonException;
import com.service.BoardService;
import com.service.MemberService;
import com.service.TravelHistoryService;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/BoardMediateListServlet")
public class BoardMediateListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		MemberDTO loginDto=(MemberDTO)session.getAttribute("login");//로그인 사용자
		TravelHistoryService thService=new TravelHistoryService();
		BoardService bService=new BoardService();
		MemberService mService=new MemberService();
		String separator=request.getParameter("separator");
		
		List<Integer> th_req_numList=null;
		List<Integer> th_gui_numList=null;
		
		HashMap<String,Object> requestBoard=null;
		HashMap<String,Object> guiderBoard=null;
		
		
		try {
			th_req_numList=thService.mediateInfoRequestList(loginDto.getMem_num());
			th_gui_numList=thService.mediateInfoGuiderList(loginDto.getMem_num());
			
			requestBoard=bService.mediateBoardList(th_req_numList);//동행요청 게시글정보,출발 공항이름,도착공항이름
			guiderBoard=bService.mediateBoardList(th_gui_numList);//내가 작성한 게시글정보,출발 공항이름,도착공항이름
			
			List<String> requestList=(List<String>)requestBoard.get("mediateStart");
			List<String> guiderList=(List<String>)guiderBoard.get("mediateStart");
			
			if(separator==null)
				separator="request";
			if(separator.equals("request")){
				request.setAttribute("requestBoard", requestBoard);
				request.setAttribute("size", requestList.size());
			}
			else{
				request.setAttribute("guiderBoard", guiderBoard);
				request.setAttribute("size", guiderList.size());
			}
		} catch (CommonException e) {
			e.printStackTrace();
		}
			
		RequestDispatcher dis =
		request.getRequestDispatcher("mediate.jsp");
		dis.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}





