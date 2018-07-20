package com.example.web.controller.searchking;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.login.dto.Login;
import com.example.user.model.User;
import com.example.user.repository.UserMapper;

@Controller
@RequestMapping("/users")
public class UserController {
	@Autowired
	private UserMapper userMapper;
	
	@GetMapping
	@ResponseBody
	public Object getUsersView() {
		List<User> users = userMapper.selectAll();
		return users;
	}
	
	@PostMapping("/enroll")
	public String postUser(User user, Model model, HttpSession session, RedirectAttributes redirectAttributes) {
		// 클라이언트 단 또는 서버 단에서 데이터 밸리드 체크를 적용하는 것을 권장한다.
		
		userMapper.insert(user);
		
		redirectAttributes.addFlashAttribute("result", "OK");
		return "redirect:/login";
	}
	
	@PostMapping("/delete")
	public String postUserDelete(User user, Model model, HttpSession session, RedirectAttributes redirectAttributes) {
		// 클라이언트 단 또는 서버 단에서 데이터 밸리드 체크를 적용하는 것을 권장한다.
				
		User dbUser = userMapper.selectByEmail(user.getEmail());		
		String dbPassword = dbUser.getPassword();
		System.out.println("dbPassword= "+dbPassword);
		
		String email = user.getEmail();
		String Password = user.getPassword();
		System.out.println("Password= "+Password);
		
		if(dbPassword.equals(Password)) {
			userMapper.delete(email);
			session.removeAttribute("user");			
			redirectAttributes.addFlashAttribute("result", "NO");
			return "redirect:/login";
		}else if(dbPassword != Password){
			redirectAttributes.addFlashAttribute("result", "NO");
			return "redirect:/breakaway";
		}
				
		return "redirect:/login";
	}
}
