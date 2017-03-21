package VO;

import java.io.Serializable;
import java.sql.Timestamp;

public class movieRatingVO implements Serializable 
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 
	private int rating_id;
	private int login_id;
	private int movie_id;
	private double rating_value;
	private Timestamp timestamp;
	public int getRating_id() {
		return rating_id;
	}
	public void setRating_id(int rating_id) {
		this.rating_id = rating_id;
	}
	public int getLogin_id() {
		return login_id;
	}
	public void setLogin_id(int login_id) {
		this.login_id = login_id;
	}
	public int getMovie_id() {
		return movie_id;
	}
	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}
	public double getRating_value() {
		return rating_value;
	}
	public void setRating_value(double rating_value) {
		this.rating_value = rating_value;
	}
	public Timestamp getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
}
