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

import com.example.emp.model.Emp;
import com.example.emp.repository.EmpMapper;

@Controller
@RequestMapping("/emps")
public class EmpController {
	
	@Autowired
	private EmpMapper empMapper;
	
	@GetMapping
	@ResponseBody
	public Object getEmpsView() {	
		List<Emp> emps = empMapper.selectAll();
		return emps;
	}
	
	@PostMapping("/enroll")
	public String postEmp(Emp emp, Model model, HttpSession session, RedirectAttributes redirectAttributes) {
		// 클라이언트 단 또는 서버 단에서 데이터 밸리드 체크를 적용하는 것을 권장한다.
		
		empMapper.insert(emp);
		
		redirectAttributes.addFlashAttribute("result", "OK");
		return "redirect:/login";
	}
}
