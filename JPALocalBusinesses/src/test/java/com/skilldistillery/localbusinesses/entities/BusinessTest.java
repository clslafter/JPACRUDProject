package com.skilldistillery.localbusinesses.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.localbusinesses.entities.Business;

class BusinessTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Business business;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPALibertarianBusinesses");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		business = em.find(Business.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		business = null;
	}

	@Test
	void test_business_name_mapping() {
		assertNotNull(business);
		assertEquals("Celicia Entertainment", business.getName());
	}
	
	@Test
	void test_business_logo_mapping() {
		assertNotNull(business);
		assertEquals("https://celicia.live/wp-content/uploads/2020/06/cropped-Celicia_Logo-white-no_Live.png", business.getLogo());
	}
	
	@Test
	void test_business_rating_mapping() {
		assertNotNull(business);
		assertEquals(3, business.getRating());
	}
	
	@Test
	void test_business_date_established_mapping() {
		assertNotNull(business);
		assertEquals(2014, business.getYearEst());
		
	}

}
