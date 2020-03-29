package com.techelevator.validation.model;

import java.time.LocalDate;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

public class Registration {
	
	@NotBlank(message = "FirstName is required")
	@Size(max=20, message = "First Name must be 20 charactors or less")
	private String firstName;
	
	@NotBlank(message = "LastName is required")
	@Size(max=20, message = "Last Name must be 20 charactors or less")
	private String lastName;

	@NotBlank(message = "Email address is required")
	@Email(message = "Please enter a valid email address")
	private String email;
	private String confirmedEmail;
	
	
	@NotBlank(message = "Password address is required")
	@Size(min = 8, message = "Password must be 8 charactor or more")
	private String password;
	private String confirmedPassword;
	
	
	
	@NotNull(message ="Number of tickets must be between 1 and 10")
	@Min(value = 1, message = "Number of tickets must be between 1 and 10")
	@Max(value = 10, message = "Number of tickets must be between 1 and 10")
	private int numberOfTickets ;
	
	
	private boolean emailMatching;
	@AssertTrue (message="Emails much matched")
	public boolean isEmailMatching() {
		if(email != null) {
			return email.equals(confirmedEmail);
		}
		return true;
	}
	
	
	private boolean passwordMatching;
	@AssertTrue (message="Password much matched")
	public boolean isPasswordMatching() {
		if(email != null) {
			return password.contentEquals(confirmedPassword);
		}
		return true;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getConfirmedEmail() {
		return confirmedEmail;
	}
	public void setConfirmedEmail(String confirmedEmail) {
		this.confirmedEmail = confirmedEmail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmedPassword() {
		return confirmedPassword;
	}
	public void setConfirmedPassword(String confirmedPassword) {
		this.confirmedPassword = confirmedPassword;
	}
	
	public int getNumberOfTickets() {
		return numberOfTickets;
	}
	public void setNumberOfTickets(int numberOfTickets) {
		this.numberOfTickets = numberOfTickets;
	}
	public void setEmailMatching(boolean emailMatching) {
		this.emailMatching = emailMatching;
	}
	public void setPasswordMatching(boolean passwordMatching) {
		this.passwordMatching = passwordMatching;
	}
	
		

}
