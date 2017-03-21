package VO;
import java.io.Serializable;

public class addtheatreVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int theatre_id;
	private String theatre_name;
	private String cityid;
	private String address;
	private int screen;
	private int latitude;
	private int longitude;
	private String admin_name;
	private int multiplex_id;
	
	public int getTheatre_id() {
		return theatre_id;
	}
	public void setTheatre_id(int theatre_id) {
		this.theatre_id = theatre_id;
	}
	public String getTheatre_name() {
		return theatre_name;
	}
	public void setTheatre_name(String theatre_name) {
		this.theatre_name = theatre_name;
	}
	public String getCityid() {
		return cityid;
	}
	public void setCityid(String cityid) {
		this.cityid = cityid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getScreen() {
		return screen;
	}
	public void setScreen(int screen) {
		this.screen = screen;
	}
	public int getLatitude() {
		return latitude;
	}
	public void setLatitude(int latitude) {
		this.latitude = latitude;
	}
	public int getLongitude() {
		return longitude;
	}
	public void setLongitude(int longitude) {
		this.longitude = longitude;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public int getMultiplex_id() {
		return multiplex_id;
	}
	public void setMultiplex_id(int multiplex_id) {
		this.multiplex_id = multiplex_id;
	}
	
}
