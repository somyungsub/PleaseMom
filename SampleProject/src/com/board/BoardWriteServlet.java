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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.service.AirportService;
import com.service.BoardService;
import com.dto.BoardDTO;
import com.dto.MemberDTO;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/BoardWriteServlet")
public class BoardWriteServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		String scb_title=request.getParameter("scb_title");//글제목
		String scb_from1[]=request.getParameter("scb_from").split("/");//출발지
		String scb_from=scb_from1[0];//출발공항이름
		String scb_via=request.getParameter("scb_via");//경유
		String scb_to1[]=request.getParameter("scb_to").split("/");//도착공항이름
		String scb_to=scb_to1[0];//도착공항이름
		String scb_sdate=request.getParameter("scb_sdate");//출발일
		String scb_content=request.getParameter("scb_content");//글내용
		String hour=request.getParameter("hour");
		String minute=request.getParameter("minute");
		scb_sdate+=":"+hour+":"+minute;
		System.out.println("sdate====="+scb_sdate);
		System.out.println(scb_title+"\t"+scb_from+"\t"+scb_via+"\t"+
				scb_to+"\t"+scb_sdate+"\t"+scb_content);
		BoardService bService=new BoardService();
		int scb_from_num= bService.airportNum(scb_from);//출발공항이름 -> 넘버찾기
		int scb_to_num= bService.airportNum(scb_to);//도착공항이름 -> 넘버찾기
		HttpSession session=request.getSession();
		MemberDTO mDto=(MemberDTO)session.getAttribute("login");
		System.out.println(mDto);
		int scb_mem_num=mDto.getMem_num();
		BoardDTO bDto=new BoardDTO(0, scb_mem_num, scb_from_num, scb_via, scb_to_num, scb_sdate, scb_title, scb_content, null, null,"N");

		bService.write(bDto);
		AirportService aService=new AirportService();
		String scb_to_country=aService.airportSearchCountry(scb_to);
		HashMap<String, Object> map=(HashMap<String, Object>)session.getAttribute("map");
		HashMap<String,String> writeMap=new HashMap<>();//게시글 작성한걸로 재검색하여 보여주기
		writeMap.put("scb_from", scb_from);
		writeMap.put("scb_to", scb_to_country);
		writeMap.put("min", scb_sdate);
		writeMap.put("max", "9999-12-31:00:00");
		request.setAttribute("writeMap", writeMap);
		//화면 ( list.jsp로 보내면 안됨. )
		//System.out.println("map===="+map);
		/*if(map==null)
			response.sendRedirect("home.jsp");//전체 화면 출력
		else*/
		RequestDispatcher dis=request.getRequestDispatcher("BoardListServlet");
		dis.forward(request, response);
			
		
	}//end doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





