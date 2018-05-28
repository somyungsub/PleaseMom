package com.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dao.AirportDAO;
import com.dao.BoardDAO;
import com.dao.MemberDAO;
import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.exception.CommonException;

@Controller
public class BoardController {
	
	@Autowired
	BoardDAO bDao;
	@Autowired
	MemberDAO mDao;
	@Autowired
	AirportDAO aDao;
	
	@ExceptionHandler(Exception.class)
	public String error(){
		return "error";
	}
	
	@RequestMapping("/BoardDeleteServlet")
	public String boardDelete(@RequestParam String scb_num){
		bDao.delete(scb_num);
		return "home";
	}
	
	@RequestMapping("/BoardListServlet")
	public String boardList(HttpSession session, HttpServletRequest request){
		String curPage=request.getParameter("curPage");
		HashMap<String, String> map=new HashMap<>();
		HashMap<String,String> writeMap=(HashMap<String, String>)session.getAttribute("writeMap");
		if (curPage == null) {
			curPage = "1";
			if (writeMap == null) {
				String scb_from1[] = request.getParameter("scb_from").split("/");// 출발지
				String scb_from = request.getParameter("scb_from");// 공항이름
				String scb_to = request.getParameter("scb_to");// 도착지
				String min = request.getParameter("min");// 미니멈
				String max = request.getParameter("max");// 맥시멈
				map.put("scb_from", scb_from);
				map.put("scb_to", scb_to);
				map.put("min", min);
				map.put("max", max);
				session.setAttribute("map", map);
			} else {
				String scb_from = writeMap.get("scb_from");
				String scb_to = writeMap.get("scb_to");
				String min = writeMap.get("min");// 미니멈
				String max = writeMap.get("max");// 맥시멈
				map.put("scb_from", scb_from);
				map.put("scb_to", scb_to);
				map.put("min", min);
				map.put("max", max);
				session.setAttribute("map", map);
			}
		}
		session.setAttribute("curPage1",curPage);
		
		HashMap<String, Object> mapList = bDao.page(Integer.parseInt((String)session.getAttribute("curPage1")),(HashMap<String, String>)session.getAttribute("map"));
		
		request.setAttribute("page", mapList.get("dto"));
		request.setAttribute("start", mapList.get("start"));
		request.setAttribute("arrival", mapList.get("arrival"));
		
		session.removeAttribute("writeMap");
		return "boardList";
	}
	
	@RequestMapping("/BoardRetrieveServlet")
	public String boardRetrieve(HttpSession session, HttpServletRequest request) throws CommonException {
		String scb_num = request.getParameter("scb_num");
		MemberDTO mDto = mDao.boardSearchMember(scb_num);
		HashMap<String, Object> map = bDao.retrieve(scb_num);
		session.setAttribute("retrieveMap", map);
		session.setAttribute("mDto", mDto);
		return "boardRetrieve";
	}
	
	@RequestMapping("/BoardUpdateServlet")
	public String boardUpdate(HttpSession session, HttpServletRequest request){
		String scb_title=request.getParameter("scb_title");
		String scb_from1[]=request.getParameter("scb_from").split("/");//출발지
		String scb_from=scb_from1[0];
		String scb_via=request.getParameter("scb_via");
		String scb_to=request.getParameter("scb_to");
		String scb_sdate=request.getParameter("scb_sdate");
		String scb_content=request.getParameter("scb_content");
		int scb_num=Integer.parseInt(request.getParameter("scb_num"));
		int scb_from_num= bDao.airportNum(scb_from);
		int scb_to_num= bDao.airportNum(scb_to);
		
		MemberDTO mDto=(MemberDTO)session.getAttribute("login");
		int scb_mem_num=mDto.getMem_num();
		BoardDTO bDto=new BoardDTO(scb_num, scb_mem_num, scb_from_num, scb_via, scb_to_num, scb_sdate, scb_title, scb_content, null, null,"N");

		bDao.update(bDto);
		return "redirect:BoardRetrieveServlet";
	}
	
	@RequestMapping("/BoardUpdateUIServlet")
	public String boardUpdateUI(){
		return "update";
	}
	
	@RequestMapping("/BoardWriteServlet")
	public String boardWrite(HttpServletRequest request, HttpSession session){
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
		int scb_from_num= bDao.airportNum(scb_from);//출발공항이름 -> 넘버찾기
		int scb_to_num= bDao.airportNum(scb_to);//도착공항이름 -> 넘버찾기
		MemberDTO mDto=(MemberDTO)session.getAttribute("login");
		int scb_mem_num=mDto.getMem_num();
		BoardDTO bDto=new BoardDTO(0, scb_mem_num, scb_from_num, scb_via, scb_to_num, scb_sdate, scb_title, scb_content, null, null,"N");

		bDao.write(bDto);
		String scb_to_country=aDao.airportSearchCountry(scb_to);
		HashMap<String, Object> map=(HashMap<String, Object>)session.getAttribute("map");
		HashMap<String,String> writeMap=new HashMap<>();//게시글 작성한걸로 재검색하여 보여주기
		writeMap.put("scb_from", scb_from);
		writeMap.put("scb_to", scb_to_country);
		writeMap.put("min", scb_sdate);
		writeMap.put("max", "9999-12-31:00:00");
		session.setAttribute("writeMap", writeMap);
		return "redirect:BoardListServlet";
	}
	
	@RequestMapping("/BoardWriteUIServlet")
	public String boardWriteUI(){
		return "write";
	}
	
}
