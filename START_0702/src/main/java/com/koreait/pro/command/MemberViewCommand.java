package com.koreait.pro.command;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.pro.dao.MemberDAO;
import com.koreait.pro.dto.MemberDTO;

public class MemberViewCommand implements ProCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		MemberDAO mDAO =sqlSession.getMapper(MemberDAO.class);
		ArrayList<MemberDTO> mDTO = mDAO.selectMemberList();
		model.addAttribute("list", mDTO);

	}

}
