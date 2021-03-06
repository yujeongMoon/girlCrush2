// 상품리스트 화면 컨트롤러 (관리자용)
// request발생시 요청을 판단해서 Model클래스로 던진다. 
// Model클래스에서 가공한 데이터를 보내주면 요청이 끝난 자료를 View(JSP)로 보낸다.
package com.example.web.controller.marketing;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.Pager;
import com.example.travelboard.model.Travel;
import com.example.travelboard.model.TravelCart;
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
			@RequestParam(name="bsize", required=false, defaultValue="5") int bsize, HttpSession session, Model model){
		
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		
		ModelAndView mav = new ModelAndView("board_list");
		mav.addObject("boards", travelMapper.selectByLimit(page, size));
		mav.addObject("pager", new Pager(page, size, bsize, travelMapper.count()));
		mav.addObject("domestic", travelMapper.selectDomestic());
		mav.addObject("foreign", travelMapper.selectForeign());
		return mav;
	}
	
	
	@GetMapping("/domestic")
	public ModelAndView getDomesticTravelView(
			// required : 해당파라미터가 반드시 필수인지 여부
				@RequestParam(name="page", required=false, defaultValue="1") int page,
				@RequestParam(name="size", required=false, defaultValue="10") int size,
				@RequestParam(name="bsize", required=false, defaultValue="5") int bsize, HttpSession session, Model model){
			
			User user = (User) session.getAttribute("user");
			model.addAttribute("user", user);
			
			ModelAndView mav = new ModelAndView("board_domestic_list");

			mav.addObject("pager", new Pager(page, size, bsize, travelMapper.count()));
			mav.addObject("domestic", travelMapper.selectDomestic());
			return mav;
		}
	
	@GetMapping("/foreign")
	public ModelAndView getforeignTravelView(
			// required : 해당파라미터가 반드시 필수인지 여부
				@RequestParam(name="page", required=false, defaultValue="1") int page,
				@RequestParam(name="size", required=false, defaultValue="10") int size,
				@RequestParam(name="bsize", required=false, defaultValue="5") int bsize, HttpSession session, Model model){
			
			User user = (User) session.getAttribute("user");
			model.addAttribute("user", user);
			
			ModelAndView mav = new ModelAndView("board_foreign_list");
			
			mav.addObject("pager", new Pager(page, size, bsize, travelMapper.count()));
			mav.addObject("foreign", travelMapper.selectForeign());
			return mav;
		}
	
		
	// file upload
	// D:\project3\girlCrush3\girlCrush2\YOLOtour\src\main\resources\static\img
	private static String UPLOADED_FOLDER = "D://project3//girlCrush3//girlCrush2//YOLOtour//src//main//resources//static//img//";  //사용자가 업로드한 폴더를 여기에 모아라.
	
	@GetMapping("/view/{travelId}")
	public String getDomesticTravelView(@PathVariable long travelId, HttpSession session, Model model) {
//		User user = (User) session.getAttribute("user");
//		travelMapper.increment(travelId, user.getEmail());
		model.addAttribute("travel", travelMapper.selectById(travelId));
		return "board_view";  
	}
	
	

	
	@GetMapping("/write")
	public String getInsertView(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		
		model.addAttribute("user",user);
		return "board_write";
	}
	
	@PostMapping("/write")
	public String postInsert(@RequestParam("file") MultipartFile file,
							RedirectAttributes redirectAttributes,
							Travel travel, HttpSession session, Model model) {
		
		User user = (User) session.getAttribute("user");
		
		travel.setImgId(file.getOriginalFilename());

		
		if(user != null) {
				System.out.println(travel);
				travelMapper.insert(travel);
				
				if(file.isEmpty()) {
					redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
					return "redirect:/travelboards/write";
				}
				try {
					byte[] bytes = file.getBytes();  // 파일이 크면 잘라서 조금씩 
					
					// 사용자가 올린 이름을 그대로 올리세요,, 단점은 이름이 같은 파일이 올라오면 덮어 씌워짐
					Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
					
					Files.write(path, bytes); // 약속된 폴더에 저장
					// D:\project3\girlCrush3\girlCrush2\YOLOtour\src\main\resources\static\img
					redirectAttributes.addFlashAttribute("imgPath",
								"/project3/girlCrush3/girlCrush2/YOLOtour/src/main/resources/static/img"
							    + file.getOriginalFilename());
					
				} catch(IOException e) { 
					e.printStackTrace();  // 업로드가 안되었다면 ?  에러
				}
				
				
				return "redirect:/travelboards";
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
				System.out.println(travel);
				return "board_update";
			}
		}
		return "redirect:/travelboards";
	}
	
	@PostMapping("/update/{travelId}")
	public String postUpdate(@RequestParam("file") MultipartFile file,
							RedirectAttributes redirectAttributes,
							Travel travel, HttpSession session, 
							Model model, @PathVariable long travelId) {
		
		User user = (User) session.getAttribute("user");
		
		travel.setImgId(file.getOriginalFilename());

		
		System.out.println("123123123"+travel);
		
		if(user != null) {
			if (user.getEmail().equals(travel.getWriter())) {
				travelMapper.update(travel);
				
				if(file.isEmpty()) {
					redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
					return "redirect:/travelboards/view/{travelId}";
				}
				
				try {
					
					byte[] bytes = file.getBytes();
					Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
					Files.write(path, bytes);
					redirectAttributes.addFlashAttribute("imgPath",
							"/project3/girlCrush3/girlCrush2/YOLOtour/src/main/resources/static/img"
							    + file.getOriginalFilename());
				} catch(IOException e) {
					e.printStackTrace();
				}
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
	
	
	
	@GetMapping("/view/addcart/{travelId}")
	public String getAddCart(@PathVariable long travelId, HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		Travel travel = travelMapper.selectById(travelId);
		
		System.out.println("??????");
		System.out.println(travel);
		
		if(user != null && travel != null) {
			model.addAttribute("travel", travel);
			return "redirect:/travelboards/view/addcart";
		}
		return "redirect:/login";
	}

	
	
	@PostMapping("/view/addcart/{travelId}")
	public String postAddCart(@PathVariable long travelId, HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		TravelCart travelCart = new TravelCart(0, travelId, user.getEmail());
		
		System.out.println("post!!!!!!!!");
		if(user != null) {
			travelMapper.addcart(travelCart);		
		}
		return "redirect:/travelboards/view/" + (long)travelId;
	}
	
	
}
