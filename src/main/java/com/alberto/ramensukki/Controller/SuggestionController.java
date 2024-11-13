package com.alberto.ramensukki.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.alberto.ramensukki.Model.Suggestion;
import com.alberto.ramensukki.Model.User;
import com.alberto.ramensukki.Service.SuggestionService;
import com.alberto.ramensukki.Service.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class SuggestionController {
	@Autowired
	SuggestionService suggestions;
	
	@Autowired
	UserService users;
	
	@GetMapping("/ramen/suggestions")
	public String suggestionPage(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "suggestionPage.jsp";
		}
		model.addAttribute("user", users.getLoggedInUser(userId));
		List<Suggestion> suggestion = suggestions.allSuggestions();
		model.addAttribute("suggestion", suggestion);
		return "suggestionPage.jsp";
	}
	
	@GetMapping("/ramen/newSuggestion")
	public String createSuggestionPage(@ModelAttribute("suggestion") Suggestion suggestion, Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "createSuggestionPage.jsp";
		}
		model.addAttribute("user", users.getLoggedInUser(userId));
		return "createSuggestionPage.jsp";
	}

	
	//Creates a new suggestion
	@PostMapping("/ramen/create/suggestion")
	public String createSuggestion(@Valid @ModelAttribute("suggestion") Suggestion suggestion, BindingResult result, HttpSession session) {
		if (result.hasErrors()) {
			return "createSuggestionPage.jsp";
		}
        Long userId = (Long) session.getAttribute("userId");
        if (userId == null) {
            return "redirect:/ramen/create/suggestion";
        } 
        User user = users.getLoggedInUser(userId);
        suggestion.setUser(user);
        suggestions.createSuggestion(suggestion);
        return "redirect:/ramen/suggestions";
	}
	
	@PostMapping("ramen/suggestions/{id}/like")
	public String likeSuggestion(@PathVariable("id") Long id, HttpSession session) {
	    Long userId = (Long) session.getAttribute("userId");
	    if (userId == null) {
	        return "redirect:/ramen/suggestions";
	    }
	    suggestions.likeSuggestion(id);
	    return "redirect:/ramen/suggestions";
	}

}
