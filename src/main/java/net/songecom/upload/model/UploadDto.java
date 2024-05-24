package net.songecom.upload.model;

public class UploadDto {
	
	private int upload_id;
	private int contents_id;
	private String n_filename;
	private String o_filename;
	private String fileext;
	private long filesize;
	public int getUpload_id() {
		return upload_id;
	}
	public void setUpload_id(int upload_id) {
		this.upload_id = upload_id;
	}
	public int getContents_id() {
		return contents_id;
	}
	public void setContents_id(int contents_id) {
		this.contents_id = contents_id;
	}
	public String getN_filename() {
		return n_filename;
	}
	public void setN_filename(String n_filename) {
		this.n_filename = n_filename;
	}
	public String getO_filename() {
		return o_filename;
	}
	public void setO_filename(String o_filename) {
		this.o_filename = o_filename;
	}
	public String getFileext() {
		return fileext;
	}
	public void setFileext(String fileext) {
		this.fileext = fileext;
	}
	public long getFilesize() {
		return filesize;
	}
	public void setFilesize(long filesize) {
		this.filesize = filesize;
	}
	
}
