package com.model;

public class exitDTO {

	
	private int exit_id;		
	private int product_id;
	private int building_id;
	private int route;
	public int getExit_id() {
		return exit_id;
	}
	public void setExit_id(int exit_id) {
		this.exit_id = exit_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getBuilding_id() {
		return building_id;
	}
	public void setBuilding_id(int building_id) {
		this.building_id = building_id;
	}
	public int getRoute() {
		return route;
	}
	public void setRoute(int route) {
		this.route = route;
	}
	public exitDTO(int exit_id, int product_id, int building_id, int route) {
		super();
		this.exit_id = exit_id;
		this.product_id = product_id;
		this.building_id = building_id;
		this.route = route;
	}
}
