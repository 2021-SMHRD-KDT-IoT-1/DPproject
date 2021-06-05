package com.model;

public class SensorDTO {
	private int sensor_num;
	private int gas;
	private int fire;
	private int temp;

	public SensorDTO(int sensor_num, int gas, int fire, int temp) {
		super();
		this.sensor_num = sensor_num;
		this.gas = gas;
		this.fire = fire;
		this.temp = temp;
	}

	public int getSensor_num() {
		return sensor_num;
	}

	public void setSensor_num(int sensor_num) {
		this.sensor_num = sensor_num;
	}

	public int getGas() {
		return gas;
	}

	public void setGas(int gas) {
		this.gas = gas;
	}

	public int getFire() {
		return fire;
	}

	public void setFire(int fire) {
		this.fire = fire;
	}

	public int getTemp() {
		return temp;
	}

	public void setTemp(int temp) {
		this.temp = temp;
	}

}
