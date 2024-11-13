package com.alberto.ramensukki.Repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.alberto.ramensukki.Model.Suggestion;

@Repository
public interface SuggestionRepository extends CrudRepository<Suggestion, Long>{
 List<Suggestion> findAll();
}
