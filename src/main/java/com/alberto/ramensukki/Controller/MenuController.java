package com.alberto.ramensukki.Controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.alberto.ramensukki.Model.Menu;
import com.alberto.ramensukki.Service.MenuService;
import com.alberto.ramensukki.Service.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class MenuController {
	@Autowired
	MenuService menuService;
	
	@Autowired
	UserService userService;
	
	
	@GetMapping("/ramen/menu")
	public String menuPage(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "menuPage.jsp";
		}
		model.addAttribute("user", userService.getLoggedInUser(userId));
		return "menuPage.jsp";
	}

	@GetMapping("/admin/ramen/menu/create")
	public String newMenuItem(@ModelAttribute("menu") Menu menu,HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "redirect:/";
		}
		model.addAttribute("user", userService.getLoggedInUser(userId));
		return "newMenuItem.jsp";
	}
	
	// Actually creates the new menu
	@PostMapping("/admin/ramen/menu/createNew")
    public String createMenuItem(@Valid @ModelAttribute("menu") Menu menu, BindingResult result,
            @RequestParam("coverPicture") MultipartFile file, HttpSession session) {
        if (result.hasErrors()) {
            return "newMenuItem.jsp";
        }

        Long userId = (Long) session.getAttribute("userId");
        if (userId == null) {
            return "redirect:/";
        }
        
        String uploadDir = "uploads/cover_pictures/";
        Path uploadPath = Paths.get(uploadDir);
        
        try {
            // Create the directory if it doesn't exist
            if (!Files.exists(uploadPath)) {
                Files.createDirectories(uploadPath);
            }

            // Handle file upload
            if (!file.isEmpty()) {
                String fileName = file.getOriginalFilename();
                Path path = Paths.get(uploadDir + fileName);
                try {
                    // Save file to a directory
                    Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
                    menu.setCoverImage(fileName); // Set path to menu entity
                } catch (IOException e) {
                    e.printStackTrace(); // Handle error, maybe show a message to the user
                }
            }

            menuService.createMenu(menu);
            return "redirect:/ramen/menu";
        } catch (IOException e) {
            e.printStackTrace();
            return "redirect:/menus/new";
        }
    }
	
	@GetMapping("/ramen/menu/ramen")
	public String menuRamenPage(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "menuRamenPage.jsp";
		}
		model.addAttribute("user", userService.getLoggedInUser(userId));
		List<Menu> menuList = menuService.allMenus();
		model.addAttribute("menus", menuList);
		return "menuRamenPage.jsp";
	}
	
	@GetMapping("/ramen/menu/sides")
	public String menuSidesPage(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "menuSidesPage.jsp";
		}
		model.addAttribute("user", userService.getLoggedInUser(userId));
		List<Menu> menuList = menuService.allMenus();
		model.addAttribute("menus", menuList);
		return "menuSidesPage.jsp";
	}
	
	@GetMapping("/ramen/menu/appetizers")
	public String menuAppetizersPage(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "menuAppetizersPage.jsp";
		}
		model.addAttribute("user", userService.getLoggedInUser(userId));
		List<Menu> menuList = menuService.allMenus();
		model.addAttribute("menus", menuList);
		return "menuAppetizersPage.jsp";
	}
	
	@GetMapping("/ramen/menu/drinks")
	public String menuDrinksPage(Model model, HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId == null) {
			return "menuDrinksPage.jsp";
		}
		model.addAttribute("user", userService.getLoggedInUser(userId));
		List<Menu> menuList = menuService.allMenus();
		model.addAttribute("menus", menuList);
		return "menuDrinksPage.jsp";
	}
}
