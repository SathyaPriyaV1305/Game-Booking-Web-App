package com.model;

import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "admingameslist")
public class GamesList {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String gameName;
	private String platform;
	private String specificOffer;
	private String membershipOffer;
	@Lob
	@Column(name = "GameIcon")
	private byte[] gameImage;
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
	public String getGameName() {
		return gameName;
	}
	public void setGameName(String gameName) {
		this.gameName = gameName;
	}
	
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	
	public byte[] getGameImage() {
		return gameImage;
	}
	public void setGameImage(byte[] gameImage) {
		this.gameImage = gameImage;
	}
	public String getSpecificOffer() {
		return specificOffer;
	}
	public void setSpecificOffer(String specificOffer) {
		this.specificOffer = specificOffer;
	}
	public String getMembershipOffer() {
		return membershipOffer;
	}
	public void setMembershipOffer(String membershipOffer) {
		this.membershipOffer = membershipOffer;
	}
	
	public String getBase64Image() {
	    return gameImage !=null ? Base64.getEncoder().encodeToString(gameImage) : null;
		
	}
}
