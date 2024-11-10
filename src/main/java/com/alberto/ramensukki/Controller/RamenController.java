package com.alberto.ramensukki.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.alberto.ramensukki.Service.UserService;

import jakarta.servlet.http.HttpSession;



@Controller
public class RamenController {
	
	@Autowired
	UserService userService;
	
	@GetMapping("/")
	public String redirect() {
		return "redirect:/ramen";
	}
	
	@GetMapping("/ramen")
	public String homepage(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "homepage.jsp";
		}
		model.addAttribute("user", userService.getLoggedInUser(userId));
		return "homepage.jsp";
	}

	
	@GetMapping("/ramen/menu")
	public String menuPage(Model model) {
	return "menupage.jsp";
	}
	
	@GetMapping("/ramen/location")
	public String locationPage(Model model) {
		return "locationPage.jsp";
	}
	
	@GetMapping("/ramen/SOTW")
	public String SoupOfTheWeek(Model model) {
		return "SoupOfWeek.jsp";
	}
	
	@GetMapping("ramen/about")
	public String aboutUs(Model model) {
		return "aboutPage.jsp";
	}
	
}
