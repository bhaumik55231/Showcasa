package VO;

import java.io.Serializable;

public class addMovieVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int movie_id;
	private String movie_name;
	private int duration;
	private String file_name;
	private String encrypted_name;
	private int age_restriction;
	private String actor_1;
	private String actor_2;
	private String actor_3;
	private String actor_4;
	private String actor_5;
	private String category;
	private String director;
	private String writer;
	private String release_date;
	private String youtube_link;
	private String plot;
	private String admin_name;
	private int home_value;
	private double rating;
	private int number_user_rating; 
	
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
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getEncrypted_name() {
		return encrypted_name;
	}
	public void setEncrypted_name(String encrypted_name) {
		this.encrypted_name = encrypted_name;
	}
	public int getAge_restriction() {
		return age_restriction;
	}
	public void setAge_restriction(int age_restriction) {
		this.age_restriction = age_restriction;
	}
	public String getActor_1() {
		return actor_1;
	}
	public void setActor_1(String actor_1) {
		this.actor_1 = actor_1;
	}
	public String getActor_2() {
		return actor_2;
	}
	public void setActor_2(String actor_2) {
		this.actor_2 = actor_2;
	}
	public String getActor_3() {
		return actor_3;
	}
	public void setActor_3(String actor_3) {
		this.actor_3 = actor_3;
	}
	public String getActor_4() {
		return actor_4;
	}
	public void setActor_4(String actor_4) {
		this.actor_4 = actor_4;
	}
	public String getActor_5() {
		return actor_5;
	}
	public void setActor_5(String actor_5) {
		this.actor_5 = actor_5;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRelease_date() {
		return release_date;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}
	public String getYoutube_link() {
		return youtube_link;
	}
	public void setYoutube_link(String youtube_link) {
		this.youtube_link = youtube_link;
	}
	public String getPlot() {
		return plot;
	}
	public void setPlot(String plot) {
		this.plot = plot;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public int getHome_value() {
		return home_value;
	}
	public void setHome_value(int home_value) {
		this.home_value = home_value;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public int getNumber_user_rating() {
		return number_user_rating;
	}
	public void setNumber_user_rating(int number_user_rating) {
		this.number_user_rating = number_user_rating;
	}
	
	
}
