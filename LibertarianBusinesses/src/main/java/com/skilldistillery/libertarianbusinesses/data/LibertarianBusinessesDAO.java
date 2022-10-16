package com.skilldistillery.libertarianbusinesses.data;

import java.util.List;

import com.skilldistillery.libertarianbusinesses.entities.Business;

public interface LibertarianBusinessesDAO {

	List <Business> findAll();
	
	Business findById (int businessId);
	
	
	Business create(Business business);
	
	Business update(int businessId, Business business);
	
	boolean deleteById(int businessId);
	
}
