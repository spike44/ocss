package disc.ocss.model;

import java.io.Serializable;

public class CarImagesVO implements Serializable{
	
	private int imageId;
	private int carId;
	private String images;
	
	public CarImagesVO() {
		super();
	}
	public CarImagesVO(int imageId, int carId, String images) {
		super();
		this.imageId = imageId;
		this.carId = carId;
		this.images = images;
	}
	public int getImageId() {
		return imageId;
	}
	public void setImageId(int imageId) {
		this.imageId = imageId;
	}
	public int getCarId() {
		return carId;
	}
	public void setCarId(int carId) {
		this.carId = carId;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}	
}
