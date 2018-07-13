package com.example.web.controller.captain;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.Pager;
import com.example.login.dto.Login;
import com.example.myPage.repository.MyPageMapper;
import com.example.user.model.User;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
	@Autowired
	private MyPageMapper mypageMapper;

	@GetMapping()
	public ModelAndView getMypageView(@RequestParam(name = "page", required = false, defaultValue = "1") int page,
			@RequestParam(name = "size", required = false, defaultValue = "10") int size,
			@RequestParam(name = "bsize", required = false, defaultValue = "5") int bsize, HttpSession session) {
		
		User user = (User) session.getAttribute("user");

		int userid = user.getUserId();
		System.out.println("user_id = " + userid);

		ModelAndView mav = new ModelAndView("my_page");
		mav.addObject("mypageD", mypageMapper.select_travel_domestic(userid));
		mav.addObject("mypageF", mypageMapper.select_travel_foreign(userid));
		mav.addObject("payinfo", mypageMapper.select_payment());
		mav.addObject("pagerD", new Pager(page, size, bsize, mypageMapper.count_domestic()));
		mav.addObject("pagerF", new Pager(page, size, bsize, mypageMapper.count_foreign()));
		return mav;

	}
}
