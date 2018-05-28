package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.BoardDTO;
import com.dto.PageDTO;
import com.exception.CommonException;

public class BoardService {

	//페이지
	public HashMap<String, Object> page(int curPage, HashMap<String, String> map){
		HashMap<String, Object> mapList =new HashMap<>();
		PageDTO dto = new PageDTO();
		List<BoardDTO> list = null;
		List<String> listName_kr_start=null;
		List<String> listName_kr_arrival=null;
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		   //new RowBounds(시작, 갯수))
		int count = dto.getPerPage();	
		int skip = (curPage-1)*count;
        list =
		session.selectList("list", map,
				new RowBounds(skip, count));
        listName_kr_start =session.selectList("listAirportStart",map,new RowBounds(skip,count));
        listName_kr_arrival =session.selectList("listAirportArrival",map,new RowBounds(skip,count));
			
			
		}finally {
			session.close();
		}
		
		//3가지 저장
		dto.setList(list);
		dto.setCurPage(curPage);
		System.out.println("service쪽 cuPage=="+curPage);
		dto.setTotalRecord(totalCount(map));
		
		mapList.put("dto", dto);
		mapList.put("start", listName_kr_start);
		mapList.put("arrival",listName_kr_arrival);
		return mapList;
	}//end list()
	
	
	//전체 레코드 갯수
	public int totalCount(HashMap<String, String> map){
		int count = 0;
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		 count = session.selectOne("totalCount",map);
		}finally {
			session.close();
		}
		return count;
	}//end totalCount
	
	
	//삭제하기
		public void delete(String num){
			
			SqlSession session = 
					MySqlSessionFactory.getSession();
			try{
	        int n =  	
	    session.delete("delete", Integer.parseInt(num));
	        session.commit();
			}finally {
				session.close();
			}
		}//end delete
		
		
		
	//수정하기
	public void update(BoardDTO dto){
		
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
        int n =  	
      session.update("update", dto);
        session.commit();
		}finally {
			session.close();
		}
	}//end updated
	

	//글자세히 보기
	public HashMap<String, Object> retrieve(String scb_num){
		SqlSession session = 
				MySqlSessionFactory.getSession();
		BoardDTO dto = null;
		String name_kr_start;
		String name_kr_arrival;
		HashMap<String, Object> map=new HashMap<>();
		try{
		  
		  dto = session.selectOne("retrieve", Integer.parseInt(scb_num));
		  System.out.println(dto);
		  name_kr_start=session.selectOne("retrieveAirportStart",dto);
		  name_kr_arrival=session.selectOne("retrieveAirportArrival",dto);
		}finally {
			session.close();
		}
		map.put("bDto",dto);
		map.put("start",name_kr_start);
		map.put("arrival",name_kr_arrival);
		return map;
	}//end 

	
	//글쓰기
	public void write(BoardDTO dto){
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		 int n = session.insert("write", dto);
		 session.commit();
		}finally {
			session.close();
		}
	}//end write
	
	//공항번호 가져오기
	public int airportNum(String name) {
		SqlSession session=MySqlSessionFactory.getSession();
		String num="";
		try {
			num=session.selectOne("airport.airportNum",name);
			System.out.println(num);
		} finally {
			session.close();
		}
		return Integer.parseInt(num);
	}
	//scb_case 상태 변경
	public int boardUpdateCase(int scb_num) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		int n = 0;
		try {
			n = session.update("updateBoardCase", scb_num);
			session.commit();
			System.out.println("업데이트 case  n===" + n);
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("게시판 상태 업데이트 실패");
		} finally {
			session.close();
		}
		return n;
	}

	// 게시글 업데이트된후 리트라이브
	public BoardDTO boardUpdateRetrieve(int scb_num) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		BoardDTO dto = new BoardDTO();
		try {
			dto = session.selectOne("boardUpdateRetrieve", scb_num);
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("게시판 글 retrieve 재검색 실패");
		} finally {
			session.close();
		}
		return dto;
	}

	//중개 게시글 얻어오기
	public HashMap<String, Object> mediateBoardList(List<Integer> numList) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		HashMap<String, Object> mapList = new HashMap<>();
		List<BoardDTO> boardList=null;
		List<String> listName_kr_start = null;
		List<String> listName_kr_arrival = null;
		System.out.println("numList===="+numList);
		if(numList.size()==0)
			numList.add(0);
		try {
			boardList = session.selectList("mediateBoardList", numList);
			if(boardList.size()==0){
				boardList.add(new BoardDTO());
				boardList.get(0).setScb_num(0);
			}
			listName_kr_start=session.selectList("mediateBoardStart",boardList);
			System.out.println("listName_kr_start 중개 게시글 얻기=="+listName_kr_start);
			
			listName_kr_arrival=session.selectList("mediateBoardArrival",boardList);
			System.out.println("listName_kr_arrival 중개 게시글 얻기=="+listName_kr_arrival);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("중개 request 게시글 얻기 실패");
		} finally {
			session.close();
		}
		
		mapList.put("boardList", boardList);
		mapList.put("mediateStart", listName_kr_start);
		mapList.put("mediateArrival", listName_kr_arrival);
		return mapList;
	}

	//게시판상태변경
	public void updateCase(int scb_num, String caseBoard) throws CommonException {
		SqlSession session=MySqlSessionFactory.getSession();
		HashMap<String, String> map=new HashMap<>();
		map.put("scb_num", String.valueOf(scb_num));
		map.put("caseBoard", caseBoard);
		try {
			session.update("myboard.updateCase",map);
			session.commit();
		}
		catch(Exception e){
			e.printStackTrace();
			throw new CommonException("게시판 상태변경 실패");
		}
		finally {
			session.close();
		}
		
	}

	//가이더 중개요청 수락
	public int mediateCaseUpdate(String approval, String scb_num) throws CommonException {
		SqlSession session=MySqlSessionFactory.getSession();
		HashMap<String, String>map=new HashMap<>();
		map.put("approval", approval);
		map.put("scb_num", scb_num);
		int n=0;
		try {
			n=session.update("myboard.mediateApproval",map);
			session.commit();
		} 
		catch(Exception e){
			throw new CommonException("동행요청 수락 실패");
		}
		finally {
			session.close();
		}
		return n;
	}

	//요청 상황 데이터 얻기
	public String mediateCaseSelect(String scb_num) throws CommonException {
		SqlSession session=MySqlSessionFactory.getSession();
		String approval;
		try {
			approval=session.selectOne("myboard.mediateCaseSelect",Integer.parseInt(scb_num));
		} 
		catch(Exception e){
			throw new CommonException("동행요청 상황 얻기 실패");
		}
		finally {
			session.close();
		}
		return approval;
	}
	
	// 안드로이드 글 리스트
		public HashMap<String, Object> list(HashMap<String, String> map) {
			HashMap<String, Object> mapList = new HashMap<>();
			List<BoardDTO> list = null;
			List<String> listName_kr_start = null;
			List<String> listName_kr_arrival = null;
			SqlSession session = MySqlSessionFactory.getSession();
			try {
				
				list = session.selectList("androidBoardList", map);
				listName_kr_start = session.selectList("listAirportStart", map);
				listName_kr_arrival = session.selectList("listAirportArrival", map);

			} finally {
				session.close();
			}

			mapList.put("list", list);
			mapList.put("start", listName_kr_start);
			mapList.put("arrival", listName_kr_arrival);
			return mapList;
		}// end list()
		
		// 안드로이드 보드 서치
		public BoardDTO selectBoard(String scb_num) {
			BoardDTO dto=new BoardDTO();
			SqlSession session = MySqlSessionFactory.getSession();
			try {
				dto = session.selectOne("selectBoard", Integer.parseInt(scb_num));
			} finally {
				session.close();
			}
			return dto;
		}

}//end 
