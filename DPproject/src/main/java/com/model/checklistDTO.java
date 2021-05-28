package com.model;

public class checklistDTO {

	private String check_num;
	private String product_id;
	private String building_id;
	private String check_date;
	private String state;
	private String battery;
	private String remarks;
	
	
	public checklistDTO(String check_num, String product_id, String building_id, String check_date, String state,
			String battery, String remarks) {
		this.check_num = check_num;
		this.product_id = product_id;
		this.building_id = building_id;
		this.check_date = check_date;
		this.state = state;
		this.battery = battery;
		this.remarks = remarks;
	}
	
	public checklistDTO(String product_id, String building_id, String check_date, String state, String battery,
			String remarks) {
		super();
		this.product_id = product_id;
		this.building_id = building_id;
		this.check_date = check_date;
		this.state = state;
		this.battery = battery;
		this.remarks = remarks;
	}

	public String getCheck_num() {
		return check_num;
	}


	public void setCheck_num(String check_num) {
		this.check_num = check_num;
	}


	public String getProduct_id() {
		return product_id;
	}


	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}


	public String getBuilding_id() {
		return building_id;
	}


	public void setBuilding_id(String building_id) {
		this.building_id = building_id;
	}


	public String getCheck_date() {
		return check_date;
	}


	public void setCheck_date(String check_date) {
		this.check_date = check_date;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getBattery() {
		return battery;
	}


	public void setBattery(String battery) {
		this.battery = battery;
	}


	public String getRemarks() {
		return remarks;
	}


	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
}
