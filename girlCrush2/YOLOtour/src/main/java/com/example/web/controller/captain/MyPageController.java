package com.example.web.controller.captain;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.myPage.repository.MyPageMapper;
import com.example.noticeboard.model.Notice;
import com.example.travelboard.model.TravelCart;
import com.example.user.model.User;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	@Autowired
	private MyPageMapper mypageMapper;
	
	@GetMapping()
	public ModelAndView getMypageView(
			@RequestParam(name = "page", required = false, defaultValue = "1") int page,
			@RequestParam(name = "size", required = false, defaultValue = "10") int size,
			@RequestParam(name = "bsize", required = false, defaultValue = "5") int bsize,
			@RequestParam(name = "email", required = false, defaultValue = "5") String email,
			HttpSession session, Model model) {
		
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		email = user.getEmail();
		
		ModelAndView mav = new ModelAndView("my_page");
		mav.addObject("mypageD", mypageMapper.select_travel_domestic(user.getEmail()));
		mav.addObject("mypageF", mypageMapper.select_travel_foreign(user.getEmail()));
		mav.addObject("payinfo", mypageMapper.select_payment(email));
		return mav;

	}
	
	
	@GetMapping("/delete/{travelId}")
	public String getDelete(@PathVariable long travelId, HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		
		if(user != null) {
			TravelCart travelCart = new TravelCart();
			travelCart.setTravelCartId(travelId);
			travelCart.setEmail(user.getEmail());
			travelCart = mypageMapper.selectById(travelCart);
			mypageMapper.delete(travelCart);
		}
		
		return "redirect:/mypage";
	}
}
