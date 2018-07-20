package com.example.web.controller.marketing;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.myPage.repository.MyPageMapper;
import com.example.payment.model.Payment;
import com.example.payment.model.PaymentAll;
import com.example.payment.model.PaymentCart;
import com.example.payment.repository.PaymentMapper;
import com.example.travelboard.repository.TravelMapper;
import com.example.user.model.User;

@Controller
@RequestMapping()
public class PaymentController {

	@Autowired
	private MyPageMapper mypageMapper;
	
	@Autowired
	private PaymentMapper paymentMapper;
	
	@Autowired
	private TravelMapper travelMapper;
	
	@GetMapping("/payment/{travelId}")
	public ModelAndView getMypageView(
			@PathVariable long travelId,
			@RequestParam(name = "email", required = false, defaultValue = "5") String email,
			HttpSession session, Model model) {
		
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		model.addAttribute("travelId", travelId);
		model.addAttribute("travelInfo", travelMapper.selectById(travelId));
		email = user.getEmail();
		
		ModelAndView mav = new ModelAndView("payment");
		mav.addObject("payinfo", mypageMapper.select_payment(email));
		return mav;
	}
	
	@GetMapping("/payment/{travelId}/addPaycart")
	public String getInsertView(@PathVariable long travelId, HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		
		model.addAttribute("user",user);
		return "payment";
	}
	
	@PostMapping("/payment/{travelId}/addPaycart")
	public String postInsert(@PathVariable long travelId, Payment payment, HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		PaymentCart paymentCart = new PaymentCart(0,travelId, user.getEmail());

		if(user != null && payment != null) {
			paymentMapper.insert(payment);
			paymentMapper.insert_payCart(paymentCart);
		}
		return "redirect:/mypage";
	}
	
	@GetMapping("/order")
	public String getOrders(HttpSession session, Model model) {
		List<PaymentAll> payment = paymentMapper.selectAll();
		
		model.addAttribute("payment", payment);
		return "order";
	}
}
