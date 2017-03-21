package VO;
import java.io.Serializable;
import java.sql.Timestamp;


public class transactionVO implements Serializable
{

	
	private static final long serialVersionUID = 1L;

	private int tr_id;
	private String transaction_id;
	private int show_id;
	private String ticket_list;
	private int user_id;
	private int price;
	private int total_tickets;
	private String booking_email;
	private long booking_number;
	private Timestamp timestamp;
	private int payment_method;
	private int success;
	private int item_price;
	private int grand_total;
	public int getTr_id() {
		return tr_id;
	}
	public void setTr_id(int tr_id) {
		this.tr_id = tr_id;
	}
	public String getTransaction_id() {
		return transaction_id;
	}
	public void setTransaction_id(String transaction_id) {
		this.transaction_id = transaction_id;
	}
	public int getShow_id() {
		return show_id;
	}
	public void setShow_id(int show_id) {
		this.show_id = show_id;
	}
	public String getTicket_list() {
		return ticket_list;
	}
	public void setTicket_list(String ticket_list) {
		this.ticket_list = ticket_list;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotal_tickets() {
		return total_tickets;
	}
	public void setTotal_tickets(int total_tickets) {
		this.total_tickets = total_tickets;
	}
	public String getBooking_email() {
		return booking_email;
	}
	public void setBooking_email(String booking_email) {
		this.booking_email = booking_email;
	}
	public long getBooking_number() {
		return booking_number;
	}
	public void setBooking_number(long booking_number) {
		this.booking_number = booking_number;
	}
	public Timestamp getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
	public int getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(int payment_method) {
		this.payment_method = payment_method;
	}
	public int getSuccess() {
		return success;
	}
	public void setSuccess(int success) {
		this.success = success;
	}
	public int getItem_price() {
		return item_price;
	}
	public void setItem_price(int item_price) {
		this.item_price = item_price;
	}
	public int getGrand_total() {
		return grand_total;
	}
	public void setGrand_total(int grand_total) {
		this.grand_total = grand_total;
	}
	
}
