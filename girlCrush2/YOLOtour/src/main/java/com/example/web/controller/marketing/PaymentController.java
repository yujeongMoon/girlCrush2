package com.example.web.controller.marketing;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PaymentController {

	@GetMapping("/payment")
	public String showLoginForm() {
		return "payment";
	}
}
