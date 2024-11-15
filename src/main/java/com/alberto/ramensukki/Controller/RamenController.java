package com.alberto.ramensukki.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.alberto.ramensukki.Model.Menu;
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
	public String homePage(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "homepage.jsp";
		}
		model.addAttribute("user", userService.getLoggedInUser(userId));
		return "homepage.jsp";
	}
	
	@GetMapping("/ramen/location")
	public String locationPage(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "locationPage.jsp";
		}
		model.addAttribute("user", userService.getLoggedInUser(userId));
		return "locationPage.jsp";
	}
	
	@GetMapping("/ramen/about")
	public String aboutPage(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "aboutPage.jsp";
		}
		model.addAttribute("user", userService.getLoggedInUser(userId));
		return "aboutPage.jsp";
	}
	
	@GetMapping("/ramen/myAccount")
	public String accountPage(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "accountPage.jsp";
		}
		model.addAttribute("user", userService.getLoggedInUser(userId));
		return "accountPage.jsp";
	}
	
	@GetMapping("/admin/ramen/tools")
	public String newMenuItem(@ModelAttribute("menu") Menu menu,HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "redirect:/";
		}
		model.addAttribute("user", userService.getLoggedInUser(userId));
		return "adminToolsPage.jsp";
	}
}
