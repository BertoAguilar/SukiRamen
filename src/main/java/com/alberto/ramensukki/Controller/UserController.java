package com.alberto.ramensukki.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.alberto.ramensukki.Model.LoggedInUser;
import com.alberto.ramensukki.Model.User;
import com.alberto.ramensukki.Service.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;


@Controller
public class UserController {
	
	@Autowired
	UserService users;
	
	@GetMapping("/ramen/login")
	public String login(Model model) {
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoggedInUser());
		return "loginPage.jsp";
	}
	
	  // checks if you have an account and logs you in
    @PostMapping("/login/user")
    public String loginUser(@Valid @ModelAttribute("newLogin") LoggedInUser newLogin, BindingResult result, HttpSession session, Model model) {
        User user = users.login(newLogin, result);
        if (result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "loginPage.jsp";
        } else {
            session.setAttribute("userId", user.getId());
            return "redirect:/ramen";
        }
    }
    
    // Register page
    @GetMapping("/ramen/register")
    public String register(Model model) {
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoggedInUser());
        return "registerPage.jsp";
    }

    // checks if you are already registered with email, if not registers you
    @PostMapping("/register/user")
    public String registerUser(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, HttpSession session, Model model) {
        users.register(newUser, result);
        if (result.hasErrors()) {
            model.addAttribute("newLogin", new LoggedInUser());
            return "registerPage.jsp";
        } else {
            session.setAttribute("userId", newUser.getId());
            return "redirect:/ramen";
        }
    }
    
    // Logout the User
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}
