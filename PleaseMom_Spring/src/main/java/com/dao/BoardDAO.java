package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.BoardDTO;
import com.dto.PageDTO;
import com.exception.CommonException;

@Repository
public class BoardDAO {

	@Autowired
	SqlSessionTemplate template;

	// 삭제하기
	public void delete(String num) {
		int n = template.delete("delete", Integer.parseInt(num));
	}// end delete

	// 페이지
	public HashMap<String, Object> page(int curPage, HashMap<String, String> map) {
		HashMap<String, Object> mapList = new HashMap<>();
		PageDTO dto = new PageDTO();
		List<BoardDTO> list = null;
		List<String> listName_kr_start = null;
		List<String> listName_kr_arrival = null;

		// new RowBounds(시작, 갯수))
		int count = dto.getPerPage();
		int skip = (curPage - 1) * count;
		list = template.selectList("list", map, new RowBounds(skip, count));
		listName_kr_start = template.selectList("listAirportStart", map, new RowBounds(skip, count));
		listName_kr_arrival = template.selectList("listAirportArrival", map, new RowBounds(skip, count));

		// 3가지 저장
		dto.setList(list);
		dto.setCurPage(curPage);
		dto.setTotalRecord(totalCount(map));

		mapList.put("dto", dto);
		mapList.put("start", listName_kr_start);
		mapList.put("arrival", listName_kr_arrival);
		return mapList;
	}// end list()

	// 전체 레코드 갯수
	public int totalCount(HashMap<String, String> map) {
		int count = template.selectOne("totalCount", map);
		return count;
	}// end totalCount

	// 수정하기
	public void update(BoardDTO dto) {
		int n = template.update("update", dto);
	}// end updated

	// 글자세히 보기
	public HashMap<String, Object> retrieve(String scb_num) {
		BoardDTO dto = null;
		String name_kr_start;
		String name_kr_arrival;
		HashMap<String, Object> map = new HashMap<>();
		dto = template.selectOne("retrieve", Integer.parseInt(scb_num));
		name_kr_start = template.selectOne("retrieveAirportStart", dto);
		name_kr_arrival = template.selectOne("retrieveAirportArrival", dto);
		map.put("bDto", dto);
		map.put("start", name_kr_start);
		map.put("arrival", name_kr_arrival);
		return map;
	}// end

	// 글쓰기
	public void write(BoardDTO dto) {
		int n = template.insert("write", dto);
	}// end write

	// 공항번호 가져오기
	public int airportNum(String name) {
		String num = template.selectOne("airport.airportNum", name);
		return Integer.parseInt(num);
	}

	// scb_case 상태 변경
	public int boardUpdateCase(int scb_num) throws CommonException {
		int n = template.update("updateBoardCase", scb_num);
		return n;
	}

	// 게시글 업데이트된후 리트라이브
	public BoardDTO boardUpdateRetrieve(int scb_num) throws CommonException {
		BoardDTO dto = template.selectOne("boardUpdateRetrieve", scb_num);
		return dto;
	}

	// 중개 게시글 얻어오기
	public HashMap<String, Object> mediateBoardList(List<Integer> numList) throws CommonException {
		HashMap<String, Object> mapList = new HashMap<>();
		List<BoardDTO> boardList = null;
		List<String> listName_kr_start = null;
		List<String> listName_kr_arrival = null;
		if (numList.size() == 0)
			numList.add(0);
		boardList = template.selectList("mediateBoardList", numList);
		if (boardList.size() == 0) {
			boardList.add(new BoardDTO());
			boardList.get(0).setScb_num(0);
		}
		listName_kr_start = template.selectList("mediateBoardStart", boardList);
		listName_kr_arrival = template.selectList("mediateBoardArrival", boardList);
		mapList.put("boardList", boardList);
		mapList.put("mediateStart", listName_kr_start);
		mapList.put("mediateArrival", listName_kr_arrival);
		return mapList;
	}

	// 게시판상태변경
	public void updateCase(int scb_num, String caseBoard) throws CommonException {
		HashMap<String, String> map = new HashMap<>();
		map.put("scb_num", String.valueOf(scb_num));
		map.put("caseBoard", caseBoard);
		template.update("myboard.updateCase", map);
	}

	// 가이더 중개요청 수락
	public int mediateCaseUpdate(String approval, String scb_num) throws CommonException {
		HashMap<String, String> map = new HashMap<>();
		map.put("approval", approval);
		map.put("scb_num", scb_num);
		int n = template.update("myboard.mediateApproval", map);
		return n;
	}

	// 요청 상황 데이터 얻기
	public String mediateCaseSelect(String scb_num) throws CommonException {
		String approval = template.selectOne("myboard.mediateCaseSelect", Integer.parseInt(scb_num));
		return approval;
	}
}
