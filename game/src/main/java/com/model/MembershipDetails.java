package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MembershipDetails {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Long id;
	String username;
	Long mobileNo;
	String mail;
	String membershipDetails;
	String membershipDuration;
	Float membershipPrice;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public Long getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(Long mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getMembershipDetails() {
		return membershipDetails;
	}
	public void setMembershipDetails(String membershipDetails) {
		this.membershipDetails = membershipDetails;
	}
	
	public Float getMembershipPrice() {
		return membershipPrice;
	}
	public void setMembershipPrice(Float membershipPrice) {
		this.membershipPrice = membershipPrice;
	}
	public String getMembershipDuration() {
		return membershipDuration;
	}
	public void setMembershipDuration(String membershipDuration) {
		this.membershipDuration = membershipDuration;
	}
	
	
}

