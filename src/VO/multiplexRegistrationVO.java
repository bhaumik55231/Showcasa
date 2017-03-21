package VO;

import java.io.Serializable;

public class multiplexRegistrationVO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int multiplex_id;
	private String multiplex_name;
	private int screen;
	private String url;
	private Long contact_number;
	private String email;
	private String password;
	private String head_office_address;
	private String owner_name;
	private String contact_name;
	private int num_theatre;
	
	public String getMultiplex_name() {
		return multiplex_name;
	}
	public void setMultiplex_name(String multiplex_name) {
		this.multiplex_name = multiplex_name;
	}
	public int getMultiplex_id() {
		return multiplex_id;
	}
	public void setMultiplex_id(int multiplex_id) {
		this.multiplex_id = multiplex_id;
	}
	public int getScreen() {
		return screen;
	}
	public void setScreen(int screen) {
		this.screen = screen;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Long getContact_number() {
		return contact_number;
	}
	public void setContact_number(Long contact_number) {
		this.contact_number = contact_number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getHead_office_address() {
		return head_office_address;
	}
	public void setHead_office_address(String head_office_address) {
		this.head_office_address = head_office_address;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public String getContact_name() {
		return contact_name;
	}
	public void setContact_name(String contact_name) {
		this.contact_name = contact_name;
	}
	public int getNum_theatre() {
		return num_theatre;
	}
	public void setNum_theatre(int num_theatre) {
		this.num_theatre = num_theatre;
	}
}