package disc.ocss.service;

import java.util.ArrayList;
import java.util.List;

import disc.ocss.dao.CarDAO;
import disc.ocss.model.CarTypeVO;
import disc.ocss.model.CarVO;

public class CarService {
		
	public ArrayList<String> selectCarType(String brand){
		ArrayList<String> result = new ArrayList<String>();
		CarVO carVO = new CarVO();
		carVO.setBrand(brand);
		ArrayList<CarTypeVO> selectCarType = CarDAO.selectCarType(carVO);
		for (CarTypeVO carTypeVO : selectCarType) {
			result.add(carTypeVO.getCarType());
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

}
