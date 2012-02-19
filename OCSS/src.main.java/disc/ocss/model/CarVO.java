package disc.ocss.model;

import java.io.Serializable;

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
	private String color;
	private int totalEval;
	private String carDesc;
	private String sellingStatus;
	private String title;
	private String locationList;
	private String cartypeCode;
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public String getCarDesc() {
		return carDesc;
	}
	public void setCarDesc(String carDesc) {
		this.carDesc = carDesc;
	}
	public String getSellingStatus() {
		return sellingStatus;
	}
	public void setSellingStatus(String sellingStatus) {
		this.sellingStatus = sellingStatus;
	}
	public String getLocationList() {
		return locationList;
	}
	public void setLocationList(String locationList) {
		this.locationList = locationList;
	}
	public String getCartypeCode() {
		return cartypeCode;
	}
	public void setCartypeCode(String cartypeCode) {
		this.cartypeCode = cartypeCode;
	}
	
	
}
