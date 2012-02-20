package disc.ocss.model;

import java.io.Serializable;

public class CarTypeVO{
	private String carType;
	private String brand;
	private String carTypeCode;
	
	public CarTypeVO(String carType, String brand, String carTypeCode) {
		super();
		this.carType = carType;
		this.brand = brand;
		this.carTypeCode = carTypeCode;
	}
	public String getCarTypeCode() {
		return carTypeCode;
	}
	public void setCarTypeCode(String carTypeCode) {
		this.carTypeCode = carTypeCode;
	}
	public CarTypeVO() {
		super();
	}
	public String getCarType() {
		return carType;
	}
	public void setCarType(String carType) {
		this.carType = carType;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public CarTypeVO(String carType, String brand) {
		super();
		this.carType = carType;
		this.brand = brand;
	}
}
