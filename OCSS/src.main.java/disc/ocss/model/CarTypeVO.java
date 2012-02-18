package disc.ocss.model;

public class CarTypeVO {
	private String carType;
	private String brand;
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
