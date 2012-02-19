package disc.ocss.service;

import java.util.ArrayList;
import java.util.List;

import disc.ocss.dao.CarDAO;
import disc.ocss.model.CarImagesVO;
import disc.ocss.model.CarTypeVO;
import disc.ocss.model.CarVO;

public class CarService {
		
	public ArrayList<CarTypeVO> selectCarType(String brand){
		ArrayList<CarTypeVO> result = new ArrayList<CarTypeVO>();
		CarTypeVO carTypeVO = new CarTypeVO();
		carTypeVO.setBrand(brand);
		result = CarDAO.selectCarType(carTypeVO);
		return result;
	}
	
	public ArrayList<String> selectCarBrand(){
		ArrayList<String> result = new ArrayList<String>();
		ArrayList<CarTypeVO> selectCarType = CarDAO.selectCarBrand();
		for (CarTypeVO carTypeVO : selectCarType) {
			result.add(carTypeVO.getBrand());
		}
		return result;
	}
	
	public ArrayList<CarVO> selectCar(CarVO carVO){
		return CarDAO.selectCar(carVO);
	}
	
	public ArrayList<CarImagesVO> selectMainImages(){			
		return CarDAO.selectMainImages();
	}
	
	public ArrayList<CarImagesVO> selectImages(int carId){
		CarImagesVO img = new CarImagesVO();
		img.setCarId(carId);
		return CarDAO.selectImages(img);
	}

}
