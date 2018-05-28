package com.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.BoardDAO;
import com.dao.MemberDAO;
import com.dao.TravelHistoryDAO;
import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.exception.CommonException;

@Controller
public class MediateController {
	
	@Autowired
	MemberDAO mDao;
	@Autowired
	TravelHistoryDAO thDao;
	@Autowired
	BoardDAO bDao;
	
	@ExceptionHandler(Exception.class)
	public String error(){
		return "error";
	}
	
	@RequestMapping("/BoardMediateCancelServlet")
	public String mediateCancel(HttpServletRequest request, HttpSession session){
		
		MemberDTO login=(MemberDTO)session.getAttribute("login");
		HashMap<String, Object> mediateRetrieve=(HashMap<String, Object>)session.getAttribute("mediateRetrieve");//게시글 정보
		MemberDTO boardMemberDTO=(MemberDTO)session.getAttribute("mediateRetrieveDto");
		
		BoardDTO bDto=(BoardDTO)mediateRetrieve.get("bDto");
		int scb_num=bDto.getScb_num();//게시판번호
		HashMap<String, Integer> caseMap=new HashMap<>();
		int checkNum=0;
		String caseBoard;
		MemberDTO mediateMemberDTO=new MemberDTO();
		try {
			int n=mDao.updateCancelCase(login.getMem_num());
			if(n>0){
				login.setMem_case("CANCEL");
				session.setAttribute("login", login);
			}
			if (login.getMem_num() == boardMemberDTO.getMem_num()) {
				// 로그인한사람 -> 가이더
				int requestNum = thDao.selectRequestNum(scb_num);
				mediateMemberDTO = mDao.selectMember(requestNum);// 요청자 정보얻기
				if(login.getMem_case().equals("CANCEL") && mediateMemberDTO.getMem_case().equals("CANCEL") && bDto.getScb_mediate().equals("Y")){
					caseMap.put("requestNum", mediateMemberDTO.getMem_num());
					caseMap.put("guiderNum", login.getMem_num());
					caseMap.put("scb_num", bDto.getScb_num());
					checkNum=thDao.delete(caseMap);
				}
			} else {
				// 로그인한사람 -> 요청자
				int guiderNum=thDao.selectGuiderNum(scb_num);
				mediateMemberDTO=mDao.selectMember(guiderNum);
				if(login.getMem_case().equals("CANCEL") && mediateMemberDTO.getMem_case().equals("CANCEL") && bDto.getScb_mediate().equals("Y")){
					caseMap.put("requestNum", login.getMem_num());
					caseMap.put("guiderNum", mediateMemberDTO.getMem_num());
					caseMap.put("scb_num", bDto.getScb_num());
					checkNum=thDao.delete(caseMap);
				}
			}
			
			if(checkNum>0){
				caseBoard="WAIT";
				bDao.updateCase(scb_num,caseBoard);
				mDao.updateDuringCase(login.getMem_num());
				mDao.updateDuringCase(mediateMemberDTO.getMem_num());
				bDao.mediateCaseUpdate("N", String.valueOf(scb_num));
				request.setAttribute("check", "cancel");
			}
			
		} catch (CommonException e) {
			e.printStackTrace();
		} 
		
		return "mediateRetrieve";
	}
	
	@RequestMapping("/BoardMediateConfirmServlet")
	public String mediateConfirm(HttpServletRequest request, HttpSession session){
		MemberDTO login=(MemberDTO)session.getAttribute("login");
		HashMap<String, Object> mediateRetrieve=(HashMap<String, Object>)session.getAttribute("mediateRetrieve");//게시글 정보
		MemberDTO boardMemberDTO=(MemberDTO)session.getAttribute("mediateRetrieveDto");//게시글작성자 정보
		
		BoardDTO bDto=(BoardDTO)mediateRetrieve.get("bDto");//게시글 내용
		int scb_num=bDto.getScb_num();//게시판번호
		HashMap<String, Integer> caseMap=new HashMap<>();
		int checkNum=0;
		String caseBoard;
		MemberDTO mediateMemberDTO=new MemberDTO();
		try {
			int n=mDao.updateConfirmCase(login.getMem_num());
			if(n>0){
				login.setMem_case("CONFIRM");
				session.setAttribute("login", login);
			}
			if (login.getMem_num() == boardMemberDTO.getMem_num()) {
				// 로그인한사람 -> 가이더
				int requestNum = thDao.selectRequestNum(scb_num);
				mediateMemberDTO = mDao.selectMember(requestNum);// 요청자 정보얻기
				if(login.getMem_case().equals("CONFIRM") && mediateMemberDTO.getMem_case().equals("CONFIRM") && bDto.getScb_mediate().equals("Y")){
					caseMap.put("requestNum", mediateMemberDTO.getMem_num());
					caseMap.put("guiderNum", login.getMem_num());
					caseMap.put("scb_num", bDto.getScb_num());
					checkNum=thDao.confirm(caseMap);
				}
			} else {
				// 로그인한사람 -> 요청자
				int guiderNum=thDao.selectGuiderNum(scb_num);
				mediateMemberDTO=mDao.selectMember(guiderNum);
				if(login.getMem_case().equals("CONFIRM") && mediateMemberDTO.getMem_case().equals("CONFIRM")){
					caseMap.put("requestNum", login.getMem_num());
					caseMap.put("guiderNum", mediateMemberDTO.getMem_num());
					caseMap.put("scb_num", bDto.getScb_num());
					checkNum=thDao.confirm(caseMap);
				}
			}
			if(checkNum>0){
				caseBoard="CONFIRM";
				bDao.updateCase(scb_num,caseBoard);
				mDao.updateDuringCase(login.getMem_num());
				mDao.updateDuringCase(mediateMemberDTO.getMem_num());
				bDao.mediateCaseUpdate("N", String.valueOf(scb_num));
				request.setAttribute("check", "confirm");
			}
		} catch (CommonException e) {
			e.printStackTrace();
		}
		return "mediateRetrieve";
	}
	
	@RequestMapping("/BoardMediateListServlet")
	public String mediateList(HttpServletRequest request, HttpSession session){
		MemberDTO loginDto=(MemberDTO)session.getAttribute("login");//로그인 사용자
		String separator=request.getParameter("separator");
		
		List<Integer> th_req_numList=null;
		List<Integer> th_gui_numList=null;
		
		HashMap<String,Object> requestBoard=null;
		HashMap<String,Object> guiderBoard=null;
		
		
		try {
			th_req_numList=thDao.mediateInfoRequestList(loginDto.getMem_num());
			th_gui_numList=thDao.mediateInfoGuiderList(loginDto.getMem_num());
			
			requestBoard=bDao.mediateBoardList(th_req_numList);//동행요청 게시글정보,출발 공항이름,도착공항이름
			guiderBoard=bDao.mediateBoardList(th_gui_numList);//내가 작성한 게시글정보,출발 공항이름,도착공항이름
			
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
		return "mediate";
	}
	
	@RequestMapping("/BoardMediateRetrieveServlet")
	public String mediateRetrieve(HttpServletRequest request, HttpSession session){
		MemberDTO login=(MemberDTO)session.getAttribute("login");
		String scb_num=request.getParameter("scb_num");
		HashMap<String, Object> mediateRetrieve=new HashMap<>();
		MemberDTO mDto=new MemberDTO();
		mediateRetrieve=bDao.retrieve(scb_num);//게시판내용,출발공항이름, 도착공항이름
		BoardDTO bdto=(BoardDTO)mediateRetrieve.get("bDto");
		String data=request.getParameter("data");
		//가이더일경우 신청자 정보 추가 출력하기!
		try {
			if(data == null){
				String approval=bDao.mediateCaseSelect(scb_num);
				session.setAttribute("approval",approval);
			}
			if(data !=null){
				int n=bDao.mediateCaseUpdate(data,scb_num);
				session.setAttribute("approval", bdto.getScb_mediate());
				if(n>0)
					System.out.println("동행 수락 성공");
				else
					System.out.println("동행 수락 실패");
			}
			
			
			mDto=mDao.boardSearchMember(scb_num);//작성자 정보
			if(mDto.getMem_num()==login.getMem_num()){
				//작성자==로그인자 같음 ==> 로그인자==가이더가 됨 
				int requestNum=thDao.selectRequestNum(Integer.parseInt(scb_num));//요청자 멤버번호
				MemberDTO requestDto=mDao.selectMember(requestNum);//요청자 정보얻기
				session.setAttribute("mediateRetrieveRequestMember", requestDto);
			}
			else{
				int guiderNum=thDao.selectGuiderNum(Integer.parseInt(scb_num));
				MemberDTO guiderDto=mDao.selectMember(guiderNum);//가이더 정보얻기
				session.setAttribute("mediateRetrieveRequestMember", guiderDto);
			}
			login=mDao.selectMember(login.getMem_num());
			session.setAttribute("login", login);
			session.setAttribute("mediateRetrieve", mediateRetrieve);
			session.setAttribute("mediateRetrieveDto", mDto);
		} catch (CommonException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "mediateRetrieve";
	}
	
	@RequestMapping("/BoardMediateServlet")
	public String mediate(HttpServletRequest request, HttpSession session){
		HashMap<String, Object> retrieveMap=(HashMap<String, Object>)session.getAttribute("retrieveMap");
		MemberDTO loginDto=(MemberDTO)session.getAttribute("login");//로그인 사용자
		MemberDTO boardMemberDto=new MemberDTO();//게시판 작성자
		BoardDTO board=(BoardDTO)retrieveMap.get("bDto");//리트라이브 게시판 정보
		int scb_num = board.getScb_num();//게시글번호얻기
		int n=0;
		
		try {
			boardMemberDto =mDao.boardSearchMember(String.valueOf(scb_num));//게시판 작성자 정보 얻기
			
			if(loginDto.getMem_case().equals("DURING") && boardMemberDto.getMem_case().equals("DURING") && board.getScb_case().equals("WAIT"))
			{
				
				n=bDao.boardUpdateCase(scb_num);//게시판 상태 수정
				
			}
			board=bDao.boardUpdateRetrieve(scb_num);//수정된 게시판 얻기
			if(n>0){
				//게시판 업데이트 성공-> travel_history 테이블에 삽입
				
				//BoardDTO mediateBoardDto=bService.boardInfo(scb_num);//게시판 내용 얻기위한 DTO
				//MemberDTO mediateRequestDto=mService.memberInfo(loginDto.getMem_num());//신청자 정보 얻기위한 DTO
				//MemberDTO mediateGuiderDto=mService.memberInfo(boardMemberDto.getMem_num());//작성자 정보 얻기위한 DTO
				thDao.insert(loginDto.getMem_num(),boardMemberDto.getMem_num(),scb_num);
				
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
		return "boardRetrieve";
	}
}
