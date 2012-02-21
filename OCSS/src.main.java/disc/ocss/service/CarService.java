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
	
	
	
	public void insertCar(CarVO carVO){
		CarDAO.insertCar(carVO);
	}
	
	public int nextCarId(){
		return CarDAO.nextCarId();
	}
	
	public ArrayList<CarVO> selectMyCar(CarVO carVO){
		return CarDAO.selectMyCar(carVO);
	}
	
	public void updateSelling(CarVO carVO){
		CarDAO.updateSelling(carVO);
	}
	
	public void deleteCar(CarVO carVO){
		CarDAO.deleteCar(carVO);
	}
	
	public CarTypeVO selectBT(String code){
		CarVO carVO = new CarVO();
		carVO.setCartypeCode(code);
		return CarDAO.selectBT(carVO);
	}
	
	public CarVO selectCarId(int carId){
		CarVO carVO = new CarVO();
		carVO.setCarId(carId);
		return CarDAO.selectCarId(carVO).get(0);
	}
}
