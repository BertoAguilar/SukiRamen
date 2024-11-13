package com.alberto.ramensukki.Repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.alberto.ramensukki.Model.Menu;

@Repository
public interface MenuRepository extends CrudRepository<Menu, Long>{
	List<Menu> findAll();

}
