package com.techelevator.authentication;

public class SaltedPair {
	public SaltedPair(String hashedPassword, String hash) {
		this.hashedPassword = hashedPassword;
		this.hash = hash;
	}
	private String hashedPassword;
	private String hash;
	public String getHashedPassword() {
		return hashedPassword;
	}
	public void setHashedPassword(String hashedPassword) {
		this.hashedPassword = hashedPassword;
	}
	public String getHash() {
		return hash;
	}
	public void setHash(String hash) {
		this.hash = hash;
	}
	
	
}
