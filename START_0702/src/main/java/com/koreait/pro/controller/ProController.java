package com.koreait.pro.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.koreait.pro.command.SignUpCommand;
import com.koreait.pro.command.LoginCommand;
import com.koreait.pro.command.LogoutCommand;
import com.koreait.pro.command.MemberViewCommand;
import com.koreait.pro.command.ProCommand;

@Controller
public class ProController {
	
	@Autowired
	private SqlSession sqlSession;
	private ProCommand proCommand;
	
	// 시작 페이지
	@RequestMapping("/")
	public String goIndex() {
		return "index";
	}
	// 기능 실행 후 시작 페이지 가기
	@RequestMapping("home")
	public String goHome() {
		return "index";
	}
	// 회원가입 페이지 이동
	@RequestMapping("signUpPage")
	public String goSignUpPage() {
		return "member/signUpPage";
	}
	// 회원가입
	@RequestMapping(value="signUp", method=RequestMethod.POST)
	public String signUp(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		proCommand = new SignUpCommand();
		proCommand.execute(sqlSession, model);
		return "redirect:/";
	}
	// 로그인 페이지로 이동
	@RequestMapping("loginPage")
	public String goLoginPage() {
		return "member/loginPage";
	}
	
	// 로그인
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		proCommand = new LoginCommand();
		proCommand.execute(sqlSession, model);
		return "redirect:home";
	}
	
	// 마이페이지
	@RequestMapping(value="myView")
	public String myView() {
		return "member/myView";
	}
	
	// 로그아웃
	@RequestMapping("logout")
	public String logout(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		proCommand = new LogoutCommand();
		proCommand.execute(sqlSession, model);
		return "redirect:home";
	}
	
	// 회원 목록 리스ㅌ
	@RequestMapping("memberView")
	public String memberView( Model model) {
		proCommand = new MemberViewCommand();
		proCommand.execute(sqlSession, model);
		return "member/memberViewListPage";
	}
	// 회원 정보 수정
	@RequestMapping(value="myViewUpdate", method=RequestMethod.POST)
	public String myViewUpdate (HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		
		proCommand.execute(sqlSession, model);
		return "home";
	}
	
	
}
