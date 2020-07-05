package com.koreait.pro.dao;

import java.util.ArrayList;

import com.koreait.pro.dto.MemberDTO;

public interface MemberDAO {
	
	// 회원가입하기
	public void signUpMember(String m_Name,String m_Id, String m_Pw,String m_Phone, String m_Email, String m_Address );
	
	// 로그인
	public MemberDTO selectBymIdmPw(String m_Id, String m_Pw);
	
	// 회원 목록 가져오기
	public ArrayList<MemberDTO> selectMemberList();
	


}
