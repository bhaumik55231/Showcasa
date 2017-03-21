package VO;
import java.io.Serializable;
import java.sql.Timestamp;

public class revenueVO implements Serializable 
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int revenue_id;
	private int multiplex_id;
	private int theatre_id;
	private int screen_id;
	private int show_id;
	private int total_revenue;
	private int total_tickets;
	private Timestamp timestamp;
	public int getRevenue_id() {
		return revenue_id;
	}
	public void setRevenue_id(int revenue_id) {
		this.revenue_id = revenue_id;
	}
	public int getMultiplex_id() {
		return multiplex_id;
	}
	public void setMultiplex_id(int multiplex_id) {
		this.multiplex_id = multiplex_id;
	}
	public int getTheatre_id() {
		return theatre_id;
	}
	public void setTheatre_id(int theatre_id) {
		this.theatre_id = theatre_id;
	}
	public int getScreen_id() {
		return screen_id;
	}
	public void setScreen_id(int screen_id) {
		this.screen_id = screen_id;
	}
	public int getShow_id() {
		return show_id;
	}
	public void setShow_id(int show_id) {
		this.show_id = show_id;
	}
	public int getTotal_revenue() {
		return total_revenue;
	}
	public void setTotal_revenue(int total_revenue) {
		this.total_revenue = total_revenue;
	}
	public int getTotal_tickets() {
		return total_tickets;
	}
	public void setTotal_tickets(int total_tickets) {
		this.total_tickets = total_tickets;
	}
	public Timestamp getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
}
