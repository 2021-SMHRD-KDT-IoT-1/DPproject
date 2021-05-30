package com.model;

public class contactDTO {
	private int num;
	private String name;
	private String tel;
	private String filename;
	private String title;
	private String content;
	private String datetime;
	
	public contactDTO(int num, String name, String tel, String filename, String title, String content,
			String datetime) {
		super();
		this.num = num;
		this.name = name;
		this.tel = tel;
		this.filename = filename;
		this.title = title;
		this.content = content;
		this.datetime = datetime;
	}


	public contactDTO(String name, String tel, String filename, String title, String content) {
		super();
		this.name = name;
		this.tel = tel;
		this.filename = filename;
		this.title = title;
		this.content = content;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}

}