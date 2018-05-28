package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.common.CommonUtil;
import com.dao.ReviewDAO;
import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.dto.ReviewDTO;
import com.exception.CommonException;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewDAO rDao;
	
	@ExceptionHandler(Exception.class)
	public String error(){
		return "error";
	}
	
	@RequestMapping("/BoardReviewListServlet")
	public String reviewList(HttpSession session, HttpServletRequest request) throws CommonException {
		MemberDTO dto = (MemberDTO) session.getAttribute("login");
		int mem_num = dto.getMem_num();
		
		// 내가 쓴 리뷰 불러오기
		List<ReviewDTO> list = rDao.reqRievewList(mem_num);
		if (list.size() != 0) {
			List<Integer> fromList = new ArrayList<Integer>();
			List<Integer> toList = new ArrayList<Integer>();
			for (ReviewDTO rdto : list) {
				fromList.add(rdto.getBoardDto().getScb_from());
				toList.add(rdto.getBoardDto().getScb_to());
			}
			List<String> airportFrom = rDao.airportList(fromList);
			List<String> airportTo = rDao.airportList(toList);
			HashMap<String, Object> map = new HashMap<>();

			map.put("diffDate", CommonUtil.differenceDate(list));
			map.put("reviewList", list);
			map.put("airportFrom", airportFrom);
			map.put("airportTo", airportTo);
			request.setAttribute("writeReview", map);
		}
		
		// 내게 쓴 리뷰 불러오기
		list = rDao.guiRievewList(mem_num);
		if (list.size() != 0) {
			List<Integer> fromList = new ArrayList<Integer>();
			List<Integer> toList = new ArrayList<Integer>();
			for (ReviewDTO rdto : list) {
				fromList.add(rdto.getBoardDto().getScb_from());
				toList.add(rdto.getBoardDto().getScb_to());
			}
			List<String> airportFrom = rDao.airportList(fromList);
			List<String> airportTo = rDao.airportList(toList);
			HashMap<String, Object> map = new HashMap<>();

			map.put("diffDate", CommonUtil.differenceDate(list));
			map.put("reviewList", list);
			map.put("airportFrom", airportFrom);
			map.put("airportTo", airportTo);
			request.setAttribute("writtenReview", map);
		}
		return "review";
	}
	
	@RequestMapping("/writeReview")
	public String writeReview(@RequestParam String review_star, @RequestParam String review_content,
								@ModelAttribute MemberDTO reqMemDto, @RequestParam String gui_num, 
								@ModelAttribute BoardDTO boardDto){
		MemberDTO guiMemDto = new MemberDTO();
		guiMemDto.setMem_num(Integer.parseInt(gui_num));
		
		rDao.writeReview(new ReviewDTO(0, review_content, Double.parseDouble(review_star), reqMemDto, guiMemDto, boardDto, null));
		return "redirect:BoardReviewListServlet";
	}
}
