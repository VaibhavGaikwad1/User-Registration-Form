package com.vaibhav.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Pattern;

import lombok.Data;



@Entity
@Data
public class User 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer user_id;
	 @Pattern(regexp = "^[a-zA-Z]{3,12}$", message = "Provide valid user name ")
	private String user_fname;
	 @Pattern(regexp = "^[a-zA-Z]{3,12}$", message = "Provide valid user name ")
	private String user_lname;
	private String user_address1;
	private String user_address2;
	private Integer user_pincode;
	private String user_birthday;
	private String user_email;
	private String user_pass;
	private String user_mobile;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(nullable=false)
	private Date last_update;
	
	@PrePersist
	private void onCreate() {
		last_update=new Date();
	}
	
		
	
	
	
	
	
}
