// 상품리스트 화면 컨트롤러 (관리자용)
// request발생시 요청을 판단해서 Model클래스로 던진다. 
// Model클래스에서 가공한 데이터를 보내주면 요청이 끝난 자료를 View(JSP)로 보낸다.
package com.example.web.controller.marketing;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.Pager;
import com.example.travelboard.model.Travel;
import com.example.travelboard.repository.TravelMapper;
import com.example.user.model.User;

@Controller
@RequestMapping("/travelboards")
public class TravelController {
	@Autowired
	private TravelMapper travelMapper;
	
	// travelboard 화면일때 Top메뉴에서 메뉴타이틀에 강조표시 해주는 역할.  
	@ModelAttribute("active")
	public String active() {
		return "travel";
	}
	
	@GetMapping()
	public ModelAndView getTravelView(
		// required : 해당파라미터가 반드시 필수인지 여부
			@RequestParam(name="page", required=false, defaultValue="1") int page,
			@RequestParam(name="size", required=false, defaultValue="10") int size,
			@RequestParam(name="bsize", required=false, defaultValue="5") int bsize){
		ModelAndView mav = new ModelAndView("board_list");
		mav.addObject("boards", travelMapper.selectByLimit(page, size));
		mav.addObject("pager", new Pager(page, size, bsize, travelMapper.count()));
		mav.addObject("domestic", travelMapper.selectDomestic());
		mav.addObject("foreign", travelMapper.selectForeign());
		return mav;
	}
	
	@GetMapping("/view/{travelId}")
	public String getTravelView(@PathVariable long travelId, HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if(user == null) {
			return "redirect:/login"; // user가 null일때 login 페이지로 redirect
		}
		travelMapper.increment(travelId, user.getEmail());
		model.addAttribute("board", travelMapper.selectById(travelId));
		return "baord_view";  
	}
	
	@GetMapping("/write")
	public String postInsertView(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if(user == null) {
			return "redirect:/login";
		}
		model.addAttribute("user", user);
		return "board_write";
	}
	
	@PostMapping("/write")
	public String postInsert(Travel travel, HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		
		if(user != null && travel != null) {
			if(user.getEmail().equals(travel.getWriter())) {
				travelMapper.insert(travel);
			}
		}
		return "redirect:/travelboards";
	}
	
	@GetMapping("/update/{travelId}")
	public String getUpdateView(@PathVariable long travelId, HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		Travel travel = travelMapper.selectById(travelId);
		
		if(user != null && travel != null) {
			if(user.getEmail().equals(travel.getWriter())) {
				model.addAttribute("travel", travel);
				return "board_update";
			}
		}
		return "redirect:/travelboards";
	}
	
	@PostMapping("/update")
	public String postUpdate(Travel travel, HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		
		if(user != null && travel != null) {
			if (user.getEmail().equals(travel.getWriter())) {
				travelMapper.update(travel);
				return "redirect:/travelboards/view/" + travel.getTravelId();
			}
		}
		return "redirect:/travelboards";
	}
	
	@GetMapping("/delete/{travelId}")
	public String getDelete(@PathVariable long travelId, HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		
		if(user != null) {
			Travel travel = travelMapper.selectById(travelId);
			
			if(user.getEmail().equals(travel.getWriter())) {
				travelMapper.delete(travelId);
			}
		}
		return "redirect:/travelboards";
	}
	
	
}
