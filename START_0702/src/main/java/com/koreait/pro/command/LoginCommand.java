package com.koreait.pro.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.pro.dao.MemberDAO;
import com.koreait.pro.dto.MemberDTO;

public class LoginCommand implements ProCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String m_Id = request.getParameter("m_Id");
		String m_Pw = request.getParameter("m_Pw");
		MemberDAO mDAO = sqlSession.getMapper(MemberDAO.class);

		MemberDTO loginDTO = mDAO.selectBymIdmPw(m_Id, m_Pw);

		HttpSession session = request.getSession();
		
		session.setAttribute("loginDTO", loginDTO);

	}

}
