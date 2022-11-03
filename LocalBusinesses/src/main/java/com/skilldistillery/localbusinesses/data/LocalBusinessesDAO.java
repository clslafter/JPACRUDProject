package com.skilldistillery.localbusinesses.data;

import java.util.List;

import com.skilldistillery.localbusinesses.entities.Business;

public interface LocalBusinessesDAO {

	List <Business> findAll();
	
	Business findById (int businessId);
	
	
	Business create(Business business);
	
	Business update(int businessId, Business business);
	
	boolean deleteById(int businessId);
	
}
