package com.model;

import java.util.Arrays;
import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class AdminRegDetails {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(unique=true)
	private String adminUsername;
	private String adminName;
	@Column(unique=true)
	private String adminMobNo;
	private int adminAge;
	private int noOfConsoles;
	@Column(unique=true)
	private String adminMail;
	private String adminPassword;
	@Lob
	private byte[] adminPhoto;
	private String imageContentType;
	
	public String getImageContentType() {
		return imageContentType;
	}
	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAdminUsername() {
		return adminUsername;
	}
	public void setAdminUsername(String adminUsername) {
		this.adminUsername = adminUsername;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminMobNo() {
		return adminMobNo;
	}
	public void setAdminMobNo(String adminMobNo) {
		this.adminMobNo = adminMobNo;
	}
	public int getAdminAge() {
		return adminAge;
	}
	public void setAdminAge(int adminAge) {
		this.adminAge = adminAge;
	}
	public int getNoOfConsoles() {
		return noOfConsoles;
	}
	public void setNoOfConsoles(int noOfConsoles) {
		this.noOfConsoles = noOfConsoles;
	}
	public String getAdminMail() {
		return adminMail;
	}
	public void setAdminMail(String adminMail) {
		this.adminMail = adminMail;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	public byte[] getAdminPhoto() {
		return adminPhoto;
	}
	public void setAdminPhoto(byte[] adminPhoto) {
		this.adminPhoto = adminPhoto;
	}
	
	public String getBase64Image() {
	    return adminPhoto !=null ? Base64.getEncoder().encodeToString(adminPhoto) : null;
		
	}
	
	@Override
	public String toString() {
		return "AdminRegDetails [id=" + id + ", adminUsername=" + adminUsername + ", adminName=" + adminName
				+ ", adminMobNo=" + adminMobNo + ", adminAge=" + adminAge + ", noOfConsoles=" + noOfConsoles
				+ ", adminMail=" + adminMail + ", adminPassword=" + adminPassword + ", adminPhoto="
				+ Arrays.toString(adminPhoto) + "]";
	}
}
