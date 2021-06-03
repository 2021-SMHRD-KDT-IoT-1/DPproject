package com.model;

public class reportDTO {

	private int report_num;
	private String report_name;
	private String report_tel;
	private String report_filename;
	private String report_title;
	private String report_content;
	private String datetime;
	
	public reportDTO(int report_num, String report_name, String report_tel, String report_filename, String report_title,
			String report_content, String datetime) {
		super();
		this.report_num = report_num;
		this.report_name = report_name;
		this.report_tel = report_tel;
		this.report_filename = report_filename;
		this.report_title = report_title;
		this.report_content = report_content;
		this.datetime = datetime;
	}

	public reportDTO(String report_name, String report_tel, String report_filename, String report_title,
			String report_content) {
		super();
		this.report_name = report_name;
		this.report_tel = report_tel;
		this.report_filename = report_filename;
		this.report_title = report_title;
		this.report_content = report_content;
	}

	public reportDTO(int report_num, String report_name, String report_tel, String report_title,
			String report_content) {
		super();
		this.report_num = report_num;
		this.report_name = report_name;
		this.report_tel = report_tel;
		this.report_title = report_title;
		this.report_content = report_content;
	}

	public int getReport_num() {
		return report_num;
	}

	public void setReport_num(int report_num) {
		this.report_num = report_num;
	}

	public String getReport_name() {
		return report_name;
	}

	public void setReport_name(String report_name) {
		this.report_name = report_name;
	}

	public String getReport_tel() {
		return report_tel;
	}

	public void setReport_tel(String report_tel) {
		this.report_tel = report_tel;
	}

	public String getReport_filename() {
		return report_filename;
	}

	public void setReport_filename(String report_filename) {
		this.report_filename = report_filename;
	}

	public String getReport_title() {
		return report_title;
	}

	public void setReport_title(String report_title) {
		this.report_title = report_title;
	}

	public String getReport_content() {
		return report_content;
	}

	public void setReport_content(String report_content) {
		this.report_content = report_content;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	
}
