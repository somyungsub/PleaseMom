package com.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.MemberDTO;
import com.exception.CommonException;

@Repository(value="MemberDAO")
public class MemberDAO {

	@Autowired
	SqlSessionTemplate template;

	public void addMember(MemberDTO dto) throws CommonException {
		int n = template.insert("member.addMember", dto);
	}

	public MemberDTO login(HashMap<String, String> map) throws CommonException {
		MemberDTO dto = template.selectOne("member.login", map);
		return dto;
	}// end login()

	public MemberDTO boardSearchMember(String scb_num) throws CommonException {
		MemberDTO dto = template.selectOne("member.boardSearch", Integer.parseInt(scb_num));
		return dto;

	}

	public void updateMember(HashMap<String, String> map) throws CommonException {
		int n = template.update("updateMember", map);
	}

	public MemberDTO catchProfile(String id) throws CommonException {
		MemberDTO dto = template.selectOne("member.catchProfile", id);
		return dto;
	}

	public void authenEmail(String userid) throws CommonException {
		int n = template.update("authenEmail", userid);
	}

	public void deleteMember(String userid) throws CommonException {
		int n = template.delete("member.deleteMember", userid);
	}

	public void tempPasswd(HashMap<String, String> map) throws CommonException {
		int n = template.update("member.tempPasswd", map);
	}

	// 중개현황
	public MemberDTO selectMember(int mem_num) throws CommonException {
		MemberDTO dto = template.selectOne("member.selectMember", mem_num);
		return dto;
	}

	// 동행취소시 로그인 회원 상태 변경
	public int updateCancelCase(int mem_num) throws CommonException {
		MemberDTO dto = null;
		int n = template.update("member.updateCancelCase", mem_num);
		return n;
	}

	// 동행 승인시 로그인 회원 상태 변경
	public int updateConfirmCase(int mem_num) throws CommonException {
		MemberDTO dto = null;
		int n = template.update("member.updateConfirmCase", mem_num);
		return n;
	}

	// 동행 취소후 guider,request Case 변경
	public void updateDuringCase(int mem_num) throws CommonException {
		template.update("member.updateDuringCase", mem_num);
	}

	public boolean findByPhone(String phone) throws CommonException {
		boolean isExist = false;
		String str = template.selectOne("findByPhone", phone);
		if (str != null) {
			isExist = true;
		}
		return isExist;
	}

	public void updatePhoneNumber(MemberDTO dto) throws CommonException {
		int n = template.update("updatePhoneNumber", dto);
	}
}
