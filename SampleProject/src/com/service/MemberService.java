package com.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.MemberDTO;
import com.exception.CommonException;

public class MemberService {
	public void addMember(MemberDTO dto) throws CommonException{
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.insert("member.addMember", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원가입 실패");
		} finally {
			session.close();
		}
	}
	
	public MemberDTO login(HashMap<String, String> map) throws CommonException{
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto = null;
		try {
			dto = session.selectOne("member.login", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("로그인 실패");
		} finally {
			session.close();
		}
		return dto;
	}//end login()
	
	public MemberDTO boardSearchMember(String scb_num) throws CommonException{
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto = null;
		try {
			dto = session.selectOne("member.boardSearch",Integer.parseInt(scb_num));
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("게시글작성자 정보찾기 실패");
		} finally {
			session.close();
		}
		return dto;
		
	}
	
	public void updateMember(HashMap<String, String> map) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.update("updateMember", map);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원수정 실패");
		} finally {
			session.close();
		}
	}
	
	public MemberDTO catchProfile(String id) throws CommonException{
		
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto = null;
		try{
		dto = session.selectOne("member.catchProfile",id);
		}catch(Exception e){
			e.printStackTrace();
			throw new CommonException("회원정보 가져오기 실패");
		}finally{
			session.close();
		}
		return dto;
	}
	
	public void authenEmail(String userid) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.update("authenEmail", userid);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("이메일 인증 실패");
		} finally {
			session.close();
		}
	}
	
	public void deleteMember(String userid) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try{
			int n = session.delete("member.deleteMember", userid);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원삭제 실패");
		} finally {
			session.close();
		}
	}
	
	public void tempPasswd(HashMap<String,String> map) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try{
			int n = session.update("member.tempPasswd", map);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("임시비밀번호 설정 실패"); 
		} finally {
			session.close();
		}
	}
	//중개현황 
	public MemberDTO selectMember(int mem_num) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto=null;
		try{
			dto = session.selectOne("member.selectMember", mem_num);
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원정보 얻기 실패 : 중개현황->request멤버 정보얻기 부분"); 
		} finally {
			session.close();
		}
		return dto;
	}
	//동행취소시 로그인 회원 상태 변경
	public int updateCancelCase(int mem_num) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto=null;
		int n=0;
		try{
			n=session.update("member.updateCancelCase", mem_num);
			if(n>0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원 동행취소 상황 업데이트 실패 : 중개현황->request멤버 정보얻기 부분"); 
		} finally {
			session.close();
		}
		return n;
	}
	
	// 동행 승인시 로그인 회원 상태 변경
	public int updateConfirmCase(int mem_num) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		MemberDTO dto = null;
		int n=0;
		try {
			n=session.update("member.updateConfirmCase", mem_num);
			if(n>0)
				session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원 동행승인 상황 업데이트 실패 : 중개현황->request멤버 정보얻기 부분");
		} finally {
			session.close();
		}
		return n;
	}

	// 동행 취소후 guider,request Case 변경
	public void updateDuringCase(int mem_num) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			session.update("member.updateDuringCase", mem_num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("게시판변경후 Guider,Request 상황 업데이트 실패 : 중개현황->request멤버 정보얻기 부분");
		} finally {
			session.close();
		}
	}
	
	public boolean findByPhone(String phone) throws CommonException {
		boolean isExist = false;
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			String str = session.selectOne("findByPhone", phone);
			if(str != null){
				isExist = true;
			}
		} catch(Exception e) {
			e.printStackTrace();
			throw new CommonException("휴대폰번호 검색 실패");
		} finally {
			session.close();
		}
		return isExist;
	}
	
	public void updatePhoneNumber(MemberDTO dto) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.update("updatePhoneNumber", dto);
		} catch(Exception e) {
			e.printStackTrace();
			throw new CommonException("휴대폰번호 업데이트 실패");
		} finally {
			session.commit();
			session.close();
		}
	}
	
	public void checkToken(String mem_num, String token) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			String getToken = session.selectOne("getToken", mem_num);
			HashMap<String,String> map = new HashMap<String,String>();
			map.put("mem_num", mem_num);
			map.put("token", token);
			if (getToken == null) {
				int n = session.insert("putToken", map);
			} else{
				int n = session.update("updateToken", map);
			}
		} catch (Exception e){
			e.printStackTrace();
			throw new CommonException("checkToken 실패");
		} finally {
			session.commit();
			session.close();
		}
	}
	
	public String getToken(String mem_num) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		String token = null;
		try {
			token = session.selectOne("getToken", mem_num);
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("getToken 실패");
		} finally {
			session.close();
		}
		return token;
	}
	
	public String getPasswd(String mem_num) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		String passwd = null;
		try {
			passwd = session.selectOne("getPasswd", mem_num);
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("getPasswd 실패");
		} finally {
			session.close();
		}
		return passwd;
	}
	
	public void updatePasswd(HashMap<String, String> map) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.update("updatePasswd", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("updatePasswd 실패");
		} finally {
			session.commit();
			session.close();
		}
	}
}
