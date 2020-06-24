package com.hongcha.main.member.controller;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hongcha.main.member.model.service.MemberService;
import com.hongcha.main.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	/*
	 * @Autowired private BCryptPasswordEncoder bcryptPasswordEncoder; 
	 */	
	

	@RequestMapping(value = "/join.io")
	public ModelAndView insertMember(ModelAndView mav , HttpSession session, Member m) {
		
		int result = mService.insertMember(m);
		
		if(result > 0 ) {
			session.setAttribute("msg", "회원가입 환영합니다^^");
		}else {
			mav.setViewName("redirect:home.io");
		}
		
		return mav;
		
	}
	
	@RequestMapping(value = "/login.io")
	public ModelAndView loginMember(Member m, HttpSession session, ModelAndView mav, String remember, String Reid,
									HttpServletRequest request, HttpServletResponse response) {
		
		Member loginUser = mService.loginMember(m);
		

		
		if(loginUser != null) { 
			session.setAttribute("loginUser", loginUser);
			
			
			if(remember != null) {
				Cookie cookie = new Cookie("remember", loginUser.getEmail());
				cookie.setMaxAge(60*60*24*7); 
				cookie.setPath("/");
				response.addCookie(cookie);
			}
			
			
			if(Reid != null) {
				
				Cookie cookie1 = new Cookie("email", loginUser.getEmail());
				Cookie cookie2 = new Cookie("pass", loginUser.getPass());
				cookie1.setMaxAge(60*60*24*7); 
				cookie1.setPath("/");
				response.addCookie(cookie1);
				
				cookie2.setMaxAge(60*60*24*7);
				cookie2.setPath("/");
				response.addCookie(cookie2);
			}else {
				
				Cookie[] cookies = request.getCookies();
				if(cookies != null) {
					for(Cookie c:cookies) {
						if(c.getName().equals("email")) {
							c.setMaxAge(0);
							c.setPath("/");
							response.addCookie(c);
							break;
						}
						if(c.getName().equals("pass")) {
							c.setMaxAge(0);
							c.setPath("/");
							response.addCookie(c);
							break;
						}
					}
				}
				
				
			}
			session.setAttribute("msg", loginUser.getNickName() +"�� ȯ���մϴ�~");
			
			mav.setViewName("redirect:" + session.getAttribute("prevPage"));
			
		}else {
			
			mav.addObject("msg", "�α��� ����").setViewName("common/login");
		}
		
		return mav;
		
	}
	
	@RequestMapping(value = "/logout.io")
	public String logout(HttpServletRequest request, HttpServletResponse response ,HttpSession session,String Reid) {
			
		session.invalidate();
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(Cookie c:cookies) {
				if(c.getName().equals("remember")) {
					c.setMaxAge(0);
					c.setPath("/");
					response.addCookie(c);
					break;
				}
			}
		}
		
		return "redirect:home.io";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/joinCheckId.io")
	public String joinCheckId(String mid) throws IOException{
		
		int result = mService.joinCheckId(mid);
		
		if(result > 0 ) {
			return "2"; 
		}else {
			return "1";	
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/joinCheckEmail.io")
	public String joinCheckEmail(String email) throws IOException{
		
		int result = mService.joinCheckEmail(email);
		
		if(result > 0) {
			return "2";
		}else {
			return "1";
		}
		
	}
	
	@ResponseBody
	@RequestMapping( value = "/joinCheckPass.io")
	public String joinCheckPass(String password, String passwordChek)throws IOException {
		
		if(password.equals(passwordChek)) {
			return "1";	
		}else {
			return "2";	
		}
	}
	
	

}
