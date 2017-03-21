package VO;

public class fileUpVO 
{
	private int file_id;
	private String file_name;
	private String encrypted_file_name;
	private itemUpVO itemUpVO;
	
	
	
	public itemUpVO getItemUpVO() {
		return itemUpVO;
	}
	public void setItemUpVO(itemUpVO i) {
		this.itemUpVO = i;
	}
	public int getFile_id() {
		return file_id;
	}
	public void setFile_id(int fileid) {
		this.file_id = fileid;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String filename) {
		this.file_name = filename;
	}
	public String getEncrypted_file_name() {
		return encrypted_file_name;
	}
	public void setEncrypted_file_name(String encryptedfilename) {
		this.encrypted_file_name = encryptedfilename;
	}
}
