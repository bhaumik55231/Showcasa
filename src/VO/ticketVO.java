package VO;

import java.io.Serializable;

public class ticketVO implements Serializable 
{

	/**4 Data Members
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int ticket_id;
	private String ticket_tag;
	private int show_id;
	private int status;
	
	public int getTicket_id() {
		return ticket_id;
	}
	public void setTicket_id(int ticket_id) {
		this.ticket_id = ticket_id;
	}
	public String getTicket_tag() {
		return ticket_tag;
	}
	public void setTicket_tag(String ticket_tag) {
		this.ticket_tag = ticket_tag;
	}
	public int getShow_id() {
		return show_id;
	}
	public void setShow_id(int show_id) {
		this.show_id = show_id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
}
