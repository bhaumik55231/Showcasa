package VO;

import java.io.Serializable;

public class fileUploadVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int file_id;
	private String file_name;
	private String file_description;
	public String getFile_description() {
		return file_description;
	}
	public void setFile_description(String file_description) {
		this.file_description = file_description;
	}
	public int getFile_id() {
		return file_id;
	}
	public void setFile_id(int file_id) {
		this.file_id = file_id;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	
}