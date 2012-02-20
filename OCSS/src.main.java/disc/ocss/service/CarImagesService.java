package disc.ocss.service;

import java.util.ArrayList;

import disc.ocss.dao.CarImagesDAO;
import disc.ocss.model.CarImagesVO;

public class CarImagesService {
	
	public ArrayList<CarImagesVO> selectMainImages(){			
		return CarImagesDAO.selectMainImages();
	}
	
	public ArrayList<CarImagesVO> selectImages(int carId){
		CarImagesVO img = new CarImagesVO();
		img.setCarId(carId);
		return CarImagesDAO.selectImages(img);
	}
	
	public void insertImages(CarImagesVO img){
		CarImagesDAO.insertImages(img);		
	}

}