package VO;
import java.io.Serializable;

public class screenVO implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4172020166099965464L;
	private int show_id;
	private int start_hr;
	private int start_min;
	private int price1;
	private int price2;
	private int price3;
	private int theatre_id;
	private int screen_id;
	private String admin_name;
	private int movie_id;
	private String movie_name;
	private int multiplex_id;
	private int start_date;
	private int start_month;
	private int start_year;
	private int show_status;
	
	
	public int getScreen_id() {
		return screen_id;
	}
	public void setScreen_id(int screen_id) {
		this.screen_id = screen_id;
	}
	public int getStart_hr() {
		return start_hr;
	}
	public void setStart_hr(int start_hr) {
		this.start_hr = start_hr;
	}
	public int getStart_min() {
		return start_min;
	}
	public void setStart_min(int start_min) {
		this.start_min = start_min;
	}
	public int getPrice1() {
		return price1;
	}
	public void setPrice1(int price1) {
		this.price1 = price1;
	}
	public int getPrice2() {
		return price2;
	}
	public void setPrice2(int price2) {
		this.price2 = price2;
	}
	public int getPrice3() {
		return price3;
	}
	public void setPrice3(int price3) {
		this.price3 = price3;
	}
	public int getTheatre_id() {
		return theatre_id;
	}
	public void setTheatre_id(int theatre_id) {
		this.theatre_id = theatre_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public int getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	public int getShow_id() {
		return show_id;
	}
	public void setShow_id(int show_id) {
		this.show_id = show_id;
	}
	public int getMultiplex_id() {
		return multiplex_id;
	}
	public void setMultiplex_id(int multiplex_id) {
		this.multiplex_id = multiplex_id;
	}
	public int getStart_date() {
		return start_date;
	}
	public void setStart_date(int start_date) {
		this.start_date = start_date;
	}
	public int getStart_month() {
		return start_month;
	}
	public void setStart_month(int start_month) {
		this.start_month = start_month;
	}
	
	public int getStart_year() {
		return start_year;
	}
	public void setStart_year(int start_year) {
		this.start_year = start_year;
	}
	public int getShow_status() {
		return show_status;
	}
	public void setShow_status(int show_status) {
		this.show_status = show_status;
	}
		
	
	
}
