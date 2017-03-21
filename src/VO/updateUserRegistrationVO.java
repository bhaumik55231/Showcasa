package VO;

import java.io.Serializable;

public class updateUserRegistrationVO implements Serializable{
	private int user_id;
	private String first_name;
	private String last_name;
	private String email_id;
	private Long mobile_number;
	private String gender;
	private String password;
	private countryVO country_id;
	private stateVO state_id;
	private cityVO city_id;
	private loginVO loginvo;
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public Long getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(Long mobile_number) {
		this.mobile_number = mobile_number;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public countryVO getCountry_id() {
		return country_id;
	}
	public void setCountry_id(countryVO country_id) {
		this.country_id = country_id;
	}
	public stateVO getState_id() {
		return state_id;
	}
	public void setState_id(stateVO state_id) {
		this.state_id = state_id;
	}
	public cityVO getCity_id() {
		return city_id;
	}
	public void setCity_id(cityVO city_id) {
		this.city_id = city_id;
	}
	public loginVO getLoginvo() {
		return loginvo;
	}
	public void setLoginvo(loginVO loginvo) {
		this.loginvo = loginvo;
	}

}
