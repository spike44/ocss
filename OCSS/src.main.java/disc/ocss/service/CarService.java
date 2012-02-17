package disc.ocss.service;

import java.util.ArrayList;
import java.util.List;

import disc.ocss.dao.CarDAO;
import disc.ocss.model.CarVO;

public class CarService {
	
	public CarService(){
		System.out.println("test");
	}
	
	public ArrayList<String> selectCarType(String brand){
		ArrayList<String> result = new ArrayList<String>();
		CarVO carVO = new CarVO();
		carVO.setBrand(brand);
	
		result = (ArrayList<String>) CarDAO.selectCarType(carVO);
		System.out.println(result.isEmpty());
		return result;
	}

}
