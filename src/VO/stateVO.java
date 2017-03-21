 package VO;

import java.io.Serializable;

public class stateVO implements Serializable{
	private int state_id;
	private String state_name;
	private String state_description;

	private countryVO country_id;

	public int getState_id() {
		return state_id;
	}

	public void setState_id(int state_id) {
		this.state_id = state_id;
	}

	public String getState_name() {
		return state_name;
	}

	public void setState_name(String state_name) {
		this.state_name = state_name;
	}

	public String getState_description() {
		return state_description;
	}

	public void setState_description(String state_description) {
		this.state_description = state_description;
	}

	public countryVO getCountry_id() {
		return country_id;
	}

	public void setCountry_id(countryVO country_id) {
		this.country_id = country_id;
	}
	
	
	
	
	
}
