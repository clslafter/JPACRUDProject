package com.skilldistillery.localbusinesses.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Business {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String logo;
	
	private String description;
	
	@Column (name = "website_url")
	private String website;
	
	private String email;
	
	private String phone;
	
	@Column (name = "hours_of_operation")
	private String hours;
	
	private int rating;
	
	private String reviews;
	
	@Column (name = "year_established")
	private int yearEst;
	
	@Column (name = "create_date")
	private LocalDate createDate;
	
	@Column (name = "update_date")
	private LocalDate updateDate;
	
	
	
	
	
	

//	methods
	public Business() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}


	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getHours() {
		return hours;
	}

	public void setHours(String hours) {
		this.hours = hours;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getReviews() {
		return reviews;
	}

	public void setReviews(String reviews) {
		this.reviews = reviews;
	}

	public int getYearEst() {
		return yearEst;
	}

	public void setYearEst(int yearEst) {
		this.yearEst = yearEst;
	}

	public LocalDate getCreateDate() {
		return createDate;
	}

	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}

	public LocalDate getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(LocalDate updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "Business [id=" + id + ", name=" + name + ", logo=" + logo + ", description=" + description
				+ ", website=" + website + ", email=" + email + ", phone=" + phone + ", hours=" + hours + ", rating="
				+ rating + ", reviews=" + reviews + ", dateEst=" + yearEst + ", createDate=" + createDate
				+ ", updateDate=" + updateDate + "]";
	}
	

	
	
	

}
