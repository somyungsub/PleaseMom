package com.review;

import java.io.IOException;
import java.util.ArrayList;
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

import com.dto.MemberDTO;
import com.dto.ReviewDTO;
import com.exception.CommonException;
import com.service.ReviewService;

@WebServlet("/BoardReviewListServlet")
public class BoardReviewListServlet extends HttpServlet {
	static Logger logger = LoggerFactory.getLogger(BoardReviewListServlet.class);
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		int mem_num = dto.getMem_num();
		
		ReviewService rService = new ReviewService();
		
		String title = "";
		String target = "";
		try {
			List<ReviewDTO> list = rService.reviewList(mem_num);
			List<Integer> fromList = new ArrayList<Integer>();
			List<Integer> toList = new ArrayList<Integer>();
			for (ReviewDTO rdto : list) {
				fromList.add(rdto.getBoardDto().getScb_from());
				toList.add(rdto.getBoardDto().getScb_to());
			}
			List<String> airportFrom = rService.airportList(fromList);
			List<String> airportTo = rService.airportList(toList);
			
			request.setAttribute("reviewList", list);
			request.setAttribute("airportFrom", airportFrom);
			request.setAttribute("airportTo", airportTo);
			target = "review.jsp";
		} catch (CommonException e) {
			title= e.getMessage();
			String link="home.jsp";
			target="error.jsp";
			request.setAttribute("title", title);
			request.setAttribute("link", link);
		}
		
		RequestDispatcher dis = request.getRequestDispatcher(target);
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
