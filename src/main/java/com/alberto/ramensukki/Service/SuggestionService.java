package com.alberto.ramensukki.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alberto.ramensukki.Model.Suggestion;
import com.alberto.ramensukki.Repository.SuggestionRepository;

@Service
public class SuggestionService {
	@Autowired
	SuggestionRepository suggestionRepo;
	
	//returns all suggestions
	public List<Suggestion> allSuggestions(){
		return suggestionRepo.findAll();
	}
	
	//creates a suggestion
	public Suggestion createSuggestion(Suggestion sugg){
		return suggestionRepo.save(sugg);
	}
	
	//retrieves a suggestion
	public Suggestion findSuggestion(Long id){
		Optional<Suggestion> optionalSuggestion = suggestionRepo.findById(id);
		if (optionalSuggestion.isPresent()) {
			return optionalSuggestion.get();
		} else {
			return null;
		}
	}
	
	//updates a suggestion
	public Suggestion updateSuggestion(Suggestion sugg) {
		return suggestionRepo.save(sugg);
	}
	
	//deletes a suggestion
	public void deleteSuggestion(Long id) {
		suggestionRepo.deleteById(id);
	}

	
	public Suggestion likeSuggestion(Long id) {
		Optional<Suggestion> optionalSuggestion = suggestionRepo.findById(id);
		if (optionalSuggestion.isPresent()) {
			Suggestion suggestion = optionalSuggestion.get();
			suggestion.setLikeCount(suggestion.getLikeCount() + 1);
			return suggestionRepo.save(suggestion);
		}
		return null; // or throw an exception if preferred
	}
}
