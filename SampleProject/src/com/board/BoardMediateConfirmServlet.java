package com.board;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.exception.CommonException;
import com.service.BoardService;
import com.service.MemberService;
import com.service.TravelHistoryService;

@WebServlet("/BoardMediateConfirmServlet")
public class BoardMediateConfirmServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("BoardMediateConfirmServlet");
		HttpSession session=request.getSession();
		MemberDTO login=(MemberDTO)session.getAttribute("login");
		HashMap<String, Object> mediateRetrieve=(HashMap<String, Object>)session.getAttribute("mediateRetrieve");//게시글 정보
		MemberDTO boardMemberDTO=(MemberDTO)session.getAttribute("mediateRetrieveDto");//게시글작성자 정보
		MemberService mService=new MemberService();
		TravelHistoryService thService=new TravelHistoryService();
		BoardService bService=new BoardService();
		
		System.out.println("medaiteRetrieve-----승인완료부분"+mediateRetrieve);
		BoardDTO bDto=(BoardDTO)mediateRetrieve.get("bDto");//게시글 내용
		int scb_num=bDto.getScb_num();//게시판번호
		HashMap<String, Integer> caseMap=new HashMap<>();
		int checkNum=0;
		String caseBoard;
		MemberDTO mediateMemberDTO=new MemberDTO();
		try {
			int n=mService.updateConfirmCase(login.getMem_num());
			if(n>0){
				login.setMem_case("CONFIRM");
				session.setAttribute("login", login);
			}
			if (login.getMem_num() == boardMemberDTO.getMem_num()) {
				// 로그인한사람 -> 가이더
				int requestNum = thService.selectRequestNum(scb_num);
				mediateMemberDTO = mService.selectMember(requestNum);// 요청자 정보얻기
				System.out.println("케이스 확인------"+login.getMem_case().equals("CONFIRM")+mediateMemberDTO.getMem_case().equals("CONFIRM"));
				if(login.getMem_case().equals("CONFIRM") && mediateMemberDTO.getMem_case().equals("CONFIRM") && bDto.getScb_mediate().equals("Y")){
					caseMap.put("requestNum", mediateMemberDTO.getMem_num());
					caseMap.put("guiderNum", login.getMem_num());
					caseMap.put("scb_num", bDto.getScb_num());
					checkNum=thService.confirm(caseMap);
				}
			} else {
				// 로그인한사람 -> 요청자
				int guiderNum=thService.selectGuiderNum(scb_num);
				mediateMemberDTO=mService.selectMember(guiderNum);
				if(login.getMem_case().equals("CONFIRM") && mediateMemberDTO.getMem_case().equals("CONFIRM")){
					caseMap.put("requestNum", login.getMem_num());
					caseMap.put("guiderNum", mediateMemberDTO.getMem_num());
					caseMap.put("scb_num", bDto.getScb_num());
					checkNum=thService.confirm(caseMap);
				}
			}
			
			if(checkNum>0){
				caseBoard="CONFIRM";
				bService.updateCase(scb_num,caseBoard);
				mService.updateDuringCase(login.getMem_num());
				mService.updateDuringCase(mediateMemberDTO.getMem_num());
				bService.mediateCaseUpdate("N", String.valueOf(scb_num));
				request.setAttribute("check", "confirm");
				System.out.println("게시판 Confirm로 변경 성공");
			}
		} catch (CommonException e) {
			e.printStackTrace();
		} 
		
		RequestDispatcher dis =
				request.getRequestDispatcher("mediateRetrieve.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





