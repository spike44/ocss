package disc.ocss.service;

import disc.ocss.dao.CarDAO;
import disc.ocss.model.CarVO;


public class Car {
	
	private double pEval=0;
	private double yEval=0;
	private double aEval=0;
	
	public void setPriceEval(CarVO carVO){
		int avg = CarDAO.pAVG(carVO);
		pEval = (avg-carVO.getPrice()) / 10.0;
		carVO.setPriceEval((int)pEval);
	}
	
	public void setYearEval(CarVO carVO){
		int avg = CarDAO.yAVG(carVO);
		yEval = (carVO.getCarYear()-avg)*2;
		carVO.setCarYearEval((int)yEval);
	}
	
	public double setAcciEval(CarVO carVO){
		double avg = CarDAO.aAVG(carVO);
		aEval = (carVO.getIsAcci() - avg) *10;
		return aEval;
	}
	
	public void setTotalEval(CarVO carVO){
		int eval = (int)(pEval + yEval + aEval);
		carVO.setTotalEval(eval);
	}

}
