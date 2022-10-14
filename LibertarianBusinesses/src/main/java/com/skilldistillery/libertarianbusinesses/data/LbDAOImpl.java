package com.skilldistillery.libertarianbusinesses.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.libertarianbusinesses.entities.Business;

@Service
@Transactional
public class LbDAOImpl implements LibertarianBusinessesDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Business> findAll() {
		String jpql = "SELECT biz FROM Business biz";
		return em.createQuery(jpql, Business.class).getResultList();
	}

	@Override
	public Business findById(int businessId) {
		
		return em.find(Business.class, businessId);
	}

	@Override
	public Business create(Business business) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Business update(int businessId, Business business) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int businessId) {
		// TODO Auto-generated method stub
		return false;
	}

}
