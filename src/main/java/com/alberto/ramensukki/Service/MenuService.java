package com.alberto.ramensukki.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alberto.ramensukki.Model.Menu;
import com.alberto.ramensukki.Repository.MenuRepository;


@Service
public class MenuService {
	@Autowired
	MenuRepository menuRepo;

	// returns all the menu items
	public List<Menu> allMenus() {
		return menuRepo.findAll();
	}

	// creates a menu item
	public void createMenu(Menu menu) {
		menuRepo.save(menu);
	}
	
	// retrieves a menu item
	public Menu findMenu(Long id) {
		Optional<Menu> optionalMenu = menuRepo.findById(id);
		if (optionalMenu.isPresent()) {
			return optionalMenu.get();
		} else {
			return null;
		}
	}
	
	// updates a menu item
	public Menu updateMenu(Menu menu) {
		return menuRepo.save(menu);
	}

	// Deletes a menu item
	public void deleteMenu(Long id) {
		menuRepo.deleteById(id);
	}
	public void setDealOfTheWeek(Long menuId) {
	    List<Menu> allMenus = allMenus();
	    for (Menu menu : allMenus) {
	        menu.setIsDealOfWeekBoolean(menu.getId().equals(menuId));
	        menuRepo.save(menu);
	    }
	}
	public void setDiscount(Integer discount) {
	    List<Menu> allMenus = allMenus();
	    for (Menu menu : allMenus) {
	        menu.setDiscount(discount);
	        menuRepo.save(menu);
	    }
	}
}
