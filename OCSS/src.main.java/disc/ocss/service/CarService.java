package disc.ocss.service;

import java.util.ArrayList;
import java.util.List;

import disc.ocss.dao.CarDAO;
import disc.ocss.model.CarImagesVO;
import disc.ocss.model.CarTypeVO;
import disc.ocss.model.CarVO;

public class CarService {
		
	public ArrayList<String> selectCarType(String brand){
		ArrayList<String> result = new ArrayList<String>();
		CarTypeVO carTypeVO = new CarTypeVO();
		carTypeVO.setBrand(brand);
		ArrayList<CarTypeVO> selectCarType = CarDAO.selectCarType(carTypeVO);
		for (CarTypeVO carType : selectCarType) {
			result.add(carType.getCarType());
		}
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

}
