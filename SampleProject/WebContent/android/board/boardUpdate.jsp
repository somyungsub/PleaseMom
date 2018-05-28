<%@page import="com.push.RosaPush"%>
<%@page import="com.service.TravelHistoryService"%>
<%@page import="com.dto.MemberDTO"%>
<%@page import="com.service.MemberService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="com.dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.service.BoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true"%>
<%
	System.out.println("aaa");
	String scb_num=request.getParameter("scb_num");
	String loginMemberNum=request.getParameter("loginMemberNum");
	
	
	BoardService bService=new BoardService();
	MemberService mService=new MemberService();
	
	MemberDTO loginDTO=mService.selectMember(Integer.parseInt(loginMemberNum));
	BoardDTO board=bService.selectBoard(scb_num);	
	MemberDTO boardMemberDto =mService.boardSearchMember(scb_num);//게시판 작성자 정보 얻기
	
	System.out.println("boarUpdate.loginDTO=="+loginDTO);
	System.out.println("boarUpdate.board=="+board);
	System.out.println("boarUpdate.boardMemberDto=="+boardMemberDto);
	HashMap<String, Object> retrieveMap=(HashMap<String, Object>)session.getAttribute("retrieveMap");
	System.out.println("boarUpdate.retrieveMap=="+retrieveMap);
	
	if (loginDTO.getMem_case().equals("DURING") && boardMemberDto.getMem_case().equals("DURING")
			&& board.getScb_case().equals("WAIT")) {
		int n = bService.boardUpdateCase(Integer.parseInt(scb_num));//게시판 상태 수정
		board=bService.boardUpdateRetrieve(Integer.parseInt(scb_num));
		if (n > 0) {
			//게시판 업데이트 성공-> travel_history 테이블에 삽입

			//BoardDTO mediateBoardDto=bService.boardInfo(scb_num);//게시판 내용 얻기위한 DTO
			//MemberDTO mediateRequestDto=mService.memberInfo(loginDto.getMem_num());//신청자 정보 얻기위한 DTO
			//MemberDTO mediateGuiderDto=mService.memberInfo(boardMemberDto.getMem_num());//작성자 정보 얻기위한 DTO
			TravelHistoryService thService = new TravelHistoryService();
			thService.insert(loginDTO.getMem_num(), boardMemberDto.getMem_num(), Integer.parseInt(scb_num));
			
			String serverKey = "AIzaSyD4IM-VeWiSTXRI2dt2aaO_QiH9u0BYIVA";
			String clientToken = mService.getToken(String.valueOf(board.getScb_mem_num()));
			
			RosaPush rosaPush = null;
			if(rosaPush == null){
				rosaPush = new RosaPush(serverKey);
				rosaPush.setTo(clientToken);
			}
			HashMap<String, Object> map = new HashMap<String,Object>();
			map.put("text", "'"+loginDTO.getMem_name()+"'님께서 동행요청 하셨습니다.");
			rosaPush.setData(map);
			rosaPush.push();
		} else {
			System.out.println("인설트 실패");
		}
	} 
	
%>
<%="test 111"%>