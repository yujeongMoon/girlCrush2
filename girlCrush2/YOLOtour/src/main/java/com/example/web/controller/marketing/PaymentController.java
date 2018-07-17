package com.example.web.controller.marketing;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.myPage.repository.MyPageMapper;
import com.example.user.model.User;

@Controller
@RequestMapping("/payment")
public class PaymentController {

	@Autowired
	private MyPageMapper mypageMapper;
	
	@GetMapping()
	public ModelAndView getMypageView(
			@RequestParam(name = "email", required = false, defaultValue = "5") String email,
			HttpSession session, Model model) {
		
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		email = user.getEmail();
		
		ModelAndView mav = new ModelAndView("payment");
		mav.addObject("payinfo", mypageMapper.select_payment(email));
		return mav;
	}
}
