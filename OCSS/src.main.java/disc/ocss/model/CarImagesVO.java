package disc.ocss.model;

import java.io.Serializable;

public class CarImagesVO{
	
	private int imageId;
	private int carId;
	private String images;
	private String path;
	
	public CarImagesVO() {
		super();
	}
	public CarImagesVO(int imageId, int carId, String images, String path) {
		super();
		this.imageId = imageId;
		this.carId = carId;
		this.images = images;
		this.path = path;
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
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	
}
