package disc.ocss.service;

import java.util.ArrayList;

import disc.ocss.dao.CommDAO;
import disc.ocss.model.CommVO;

public class CommService {
	
	public ArrayList<CommVO> selectComm(int carId){
		CommVO comm = new CommVO();
		comm.setCarId(carId);
		return CommDAO.selectComm(comm);
	}
	
	public void insertComm(CommVO comm){
		CommDAO.insertComm(comm);
	}
	
	public void deleteComm(CommVO comm){
		CommDAO.deleteComm(comm);
	}

}
