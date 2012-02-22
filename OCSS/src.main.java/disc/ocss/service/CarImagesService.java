package disc.ocss.service;

import java.util.ArrayList;

import disc.ocss.dao.CarImagesDAO;
import disc.ocss.model.CarImagesVO;
import disc.ocss.model.CarVO;

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

	public ArrayList<CarImagesVO> selectMyCarImages(CarVO carVO){
		return CarImagesDAO.selectMyCarImages(carVO);
	}

	public void deleteImages(CarImagesVO img){
		CarImagesDAO.deleteImages(img);
	}

	/*public ArrayList<CarImagesVO> selectPageImage(int num){
		return CarImagesDAO.selectPageImage(num);
	}
	 */
	public ArrayList<CarImagesVO> selectPageImage(int carId){
		return CarImagesDAO.selectPageImage(carId);
	}
}
