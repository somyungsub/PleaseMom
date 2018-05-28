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
import com.dto.TravelHistoryDTO;
import com.exception.CommonException;
import com.service.BoardService;
import com.service.MemberService;
import com.service.TravelHistoryService;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/BoardMediateServlet")
public class BoardMediateServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		HashMap<String, Object> retrieveMap=(HashMap<String, Object>)session.getAttribute("retrieveMap");
		MemberDTO loginDto=(MemberDTO)session.getAttribute("login");//로그인 사용자
		MemberDTO boardMemberDto=new MemberDTO();//게시판 작성자
		BoardDTO board=(BoardDTO)retrieveMap.get("bDto");//리트라이브 게시판 정보
		MemberService mService=new MemberService();//멤버서비스
		BoardService bService = new BoardService();//보드서비스
		int scb_num = board.getScb_num();//게시글번호얻기
		int n=0;
		
		try {
			boardMemberDto =mService.boardSearchMember(String.valueOf(scb_num));//게시판 작성자 정보 얻기
			
			if(loginDto.getMem_case().equals("DURING") && boardMemberDto.getMem_case().equals("DURING") && board.getScb_case().equals("WAIT"))
			{
				
				n=bService.boardUpdateCase(scb_num);//게시판 상태 수정
				
			}
			board=bService.boardUpdateRetrieve(scb_num);//수정된 게시판 얻기
			if(n>0){
				//게시판 업데이트 성공-> travel_history 테이블에 삽입
				
				//BoardDTO mediateBoardDto=bService.boardInfo(scb_num);//게시판 내용 얻기위한 DTO
				//MemberDTO mediateRequestDto=mService.memberInfo(loginDto.getMem_num());//신청자 정보 얻기위한 DTO
				//MemberDTO mediateGuiderDto=mService.memberInfo(boardMemberDto.getMem_num());//작성자 정보 얻기위한 DTO
				TravelHistoryService thService=new TravelHistoryService();
				thService.insert(loginDto.getMem_num(),boardMemberDto.getMem_num(),scb_num);
				
			}else{
				throw new CommonException("인설트 실패");
			}
			retrieveMap.put("bDto", board);//세션에 재저장 bDto
			session.setAttribute("retrieveMap", retrieveMap);//retrieve로 뿌릴 정보 세션에 재저장
			
			//mediateMemberCaseMap.put("boardCase", board.getScb_case());//변경된 게시판 case 재저장			
			//session.setAttribute("mediateMemberCaseMap", mediateMemberCaseMap);//4가지정보 세션저장
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





