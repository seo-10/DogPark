package com.dogpark.dto;

public class NoticeDto {
	
	int code_no;
	String u_id;
	String nt_title;
	String nt_contents;
	int nt_view;
	String date;
	
	public int getCode_no() {
		return code_no;
	}
	public void setCode_no(int code_no) {
		this.code_no = code_no;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getNt_title() {
		return nt_title;
	}
	public void setNt_title(String nt_title) {
		this.nt_title = nt_title;
	}
	public String getNt_contents() {
		return nt_contents;
	}
	public void setNt_contents(String nt_contents) {
		this.nt_contents = nt_contents;
	}
	public int getNt_view() {
		return nt_view;
	}
	public void setNt_view(int nt_view) {
		this.nt_view = nt_view;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	
	
	
	
}
