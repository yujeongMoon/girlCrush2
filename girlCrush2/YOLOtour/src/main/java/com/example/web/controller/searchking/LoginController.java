package com.example.web.controller.searchking;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.login.dto.Login;
import com.example.login.service.LoginService;
import com.example.user.model.User;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	

	@ModelAttribute("active")
	public String active() {
		return "login";
	}

	@GetMapping("/login")
	public String showLoginForm() {
		return "login";
	}

	@PostMapping("/login")
	public String postLogin(Login login, Model model, HttpSession session) {
		loginService.authenticate(login);

		if (login.getError() != null) {
			model.addAttribute("error", login.getError());
			model.addAttribute("login", login);
			return "login";
		} else {
			
			User user = new User(login.getUserId(), login.getEmail(), login.getPassword());
			
			System.out.println("login.getUserId()"+login.getUserId());
			System.out.println("login.getEmail()"+login.getEmail());
			
			session.setAttribute("user", user);
			
			String url = (String)session.getAttribute("url");
			System.out.println("login url = "+url);
			
			if(url == null) {
				System.out.println("if url = "+ url);
				return "redirect:/";
			} else {
				System.out.println("else url = "+url);
				//session.removeAttribute("url");
				return "redirect:" + url;
			}
			
		}

	}

	@GetMapping("/logout")
	public String getLogout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	
	@GetMapping("/breakaway")
	public String breakawayForm() {
		return "breakaway";
	}
	
	
	
	
}
