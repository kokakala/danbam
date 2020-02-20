package com.hongcha.main;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hongcha.main.model.service.MemberService;

@Controller
public class HomeController {
	
	@Autowired
	private MemberService mService;

	@RequestMapping(value = "/home.io")
	public String home(HttpServletRequest request, Model model, HttpSession session) {

		Cookie[] cooki = request.getCookies();
		if(cooki != null) {
			for(Cookie c:cooki) {
				if(c.getName().equals("remember")) {	// 자동저장 remember
					session.setAttribute("loginUser", mService.getMember(c.getValue()));
				}
			}
		}
		
		return "home";
	}
	
	
}
