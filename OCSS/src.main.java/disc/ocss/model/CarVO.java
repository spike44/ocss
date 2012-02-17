package disc.ocss.model;

public class CarVO {
	
	private int carId;
	private String memberId;
	private int price;
	private int priceEval;
	private int carYear;
	private int carYearEval;
	private int isAuto;
	private int isAcci;
	private int fuel;
	private int fuelEval;
	private String carType;
	private String color;
	private int totalEval;
	private String descriptionDe;
	private String sellingStatus;
	private String title;
	private String brand;
	private String carLocation;
	
	
	
	
	public CarVO(int carId, String memberId, int price, int priceEval,
			int carYear, int carYearEval, int isAuto, int isAcci, int fuel,
			int fuelEval, String carType, String color, int totalEval,
			String descriptionDe, String sellingStatus, String title,
			String brand, String carLocation) {
		super();
		this.carId = carId;
		this.memberId = memberId;
		this.price = price;
		this.priceEval = priceEval;
		this.carYear = carYear;
		this.carYearEval = carYearEval;
		this.isAuto = isAuto;
		this.isAcci = isAcci;
		this.fuel = fuel;
		this.fuelEval = fuelEval;
		this.carType = carType;
		this.color = color;
		this.totalEval = totalEval;
		this.descriptionDe = descriptionDe;
		this.sellingStatus = sellingStatus;
		this.title = title;
		this.brand = brand;
		this.carLocation = carLocation;
	}
	public CarVO() {
		super();
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPriceEval() {
		return priceEval;
	}
	public void setPriceEval(int priceEval) {
		this.priceEval = priceEval;
	}
	public int getCarYear() {
		return carYear;
	}
	public void setCarYear(int carYear) {
		this.carYear = carYear;
	}
	public int getCarYearEval() {
		return carYearEval;
	}
	public void setCarYearEval(int carYearEval) {
		this.carYearEval = carYearEval;
	}
	public int getIsAuto() {
		return isAuto;
	}
	public void setIsAuto(int isAuto) {
		this.isAuto = isAuto;
	}
	public int getIsAcci() {
		return isAcci;
	}
	public void setIsAcci(int isAcci) {
		this.isAcci = isAcci;
	}
	public int getFuel() {
		return fuel;
	}
	public void setFuel(int fuel) {
		this.fuel = fuel;
	}
	public int getFuelEval() {
		return fuelEval;
	}
	public void setFuelEval(int fuelEval) {
		this.fuelEval = fuelEval;
	}
	public String getCarType() {
		return carType;
	}
	public void setCarType(String carType) {
		this.carType = carType;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getTotalEval() {
		return totalEval;
	}
	public void setTotalEval(int totalEval) {
		this.totalEval = totalEval;
	}
	public String getDescriptionDe() {
		return descriptionDe;
	}
	public void setDescriptionDe(String descriptionDe) {
		this.descriptionDe = descriptionDe;
	}
	public String getSellingStatus() {
		return sellingStatus;
	}
	public void setSellingStatus(String sellingStatus) {
		this.sellingStatus = sellingStatus;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getCarLocation() {
		return carLocation;
	}
	public void setCarLocation(String carLocation) {
		this.carLocation = carLocation;
	}
	
	
	

}
