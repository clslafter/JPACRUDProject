package com.skilldistillery.localbusinesses.data;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.localbusinesses.entities.Business;

@Service
@Transactional
public class LbDAOImpl implements LocalBusinessesDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Business> findAll() {
		String jpql = "SELECT biz FROM Business biz";
		return em.createQuery(jpql, Business.class).getResultList();
	}

	@Override
	public Business findById(int bizId) {
		return em.find(Business.class, bizId);
	}

	@Override
	public Business create(Business biz) {
		biz.setCreateDate(LocalDate.now());
		biz.setUpdateDate(LocalDate.now());
		em.persist(biz);
		return biz;
	}

	@Override
	public Business update(int bizId, Business biz) {
		Business updatedBiz = em.find(Business.class, bizId);
		updatedBiz.setName(biz.getName());
		updatedBiz.setLogo(biz.getLogo());
		updatedBiz.setDescription(biz.getDescription());
		updatedBiz.setWebsite(biz.getWebsite());
		updatedBiz.setEmail(biz.getEmail());
		updatedBiz.setPhone(biz.getPhone());
		updatedBiz.setHours(biz.getHours());
		updatedBiz.setRating(biz.getRating());
		updatedBiz.setReviews(biz.getReviews());
		updatedBiz.setYearEst(biz.getYearEst());
		updatedBiz.setUpdateDate(LocalDate.now());
		return updatedBiz;
	}

	@Override
	public boolean deleteById(int bizId) {
		Business biz = new Business();
		boolean success = false;
		em.remove(findById(bizId));
		if(!em.contains(biz)) {
			success = true;
		}
		return success;
	}

	
}
