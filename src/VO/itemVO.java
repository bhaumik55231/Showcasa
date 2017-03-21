package VO;

import java.io.Serializable;

public class itemVO implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int item_id;
	private String item_seller;
	private String item_name;
	private String item_description;
	private float item_price;
	private String file_name;
	private String en_file_name;
	private int theatre_id;
	public int getItem_id() {
		return item_id;
	}
	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}
	public String getItem_seller() {
		return item_seller;
	}
	public void setItem_seller(String item_seller) {
		this.item_seller = item_seller;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_description() {
		return item_description;
	}
	public void setItem_description(String item_description) {
		this.item_description = item_description;
	}
	public float getItem_price() {
		return item_price;
	}
	public void setItem_price(float item_price) {
		this.item_price = item_price;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getEn_file_name() {
		return en_file_name;
	}
	public void setEn_file_name(String en_file_name) {
		this.en_file_name = en_file_name;
	}
	public int getTheatre_id() {
		return theatre_id;
	}
	public void setTheatre_id(int theatre_id) {
		this.theatre_id = theatre_id;
	}
	
}
