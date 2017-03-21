package VO;

import java.io.Serializable;

public class multiplexAdminVO implements Serializable 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6041923787672904670L;
	private int id;
	private int multiplex_id;
	private String user_name;
	private String password;
	private String admin_name;
	private String timestamp;
	public int getMultiplex_id() {
		return multiplex_id;
	}
	public void setMultiplex_id(int multiplex_id) {
		this.multiplex_id = multiplex_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
