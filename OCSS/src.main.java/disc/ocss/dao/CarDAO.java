package disc.ocss.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import disc.ocss.model.CarSearchVO;
import disc.ocss.model.CarTypeVO;
import disc.ocss.model.CarVO;

public class CarDAO {
	private static SqlMapClient sqlMapper;

	static {
		try {
			Reader reader = Resources.getResourceAsReader("disc/ocss/sqlmap/SqlMapConfig.xml");
			sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
			reader.close(); 
		} catch (IOException e) {
			// Fail fast.
			throw new RuntimeException("Something bad happened while building the SqlMapClient instance." + e, e);
		}
	}
	
	public static ArrayList<CarTypeVO> selectCarType (CarTypeVO cartypeVO) {
		ArrayList<CarTypeVO> result = new ArrayList<CarTypeVO>();
	    try {
	    	result=(ArrayList<CarTypeVO>) sqlMapper.queryForList("car.selectCarType",cartypeVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   return result;
	  }
	
	public static ArrayList<CarTypeVO> selectCarBrand(){
		ArrayList<CarTypeVO> result = new ArrayList<CarTypeVO>();
		try {
			result = (ArrayList<CarTypeVO>) sqlMapper.queryForList("car.selectCarBrand");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public static ArrayList<CarVO> selectCar(CarVO carVO){
		ArrayList<CarVO> result = new ArrayList<CarVO>();
		
		try {
			result = (ArrayList<CarVO>) sqlMapper.queryForList("car.selectCar", carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(result.size());
		return result;
	}
		
	public static void insertCar(CarVO carVO){
		try {
			sqlMapper.insert("car.insertCar",carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static int pAVG(CarVO carVO){
		int result = 0;
		try {
			result = (Integer) sqlMapper.queryForObject("car.pAVG",carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public static int yAVG(CarVO carVO){
		int result = 0;
		try {
			result = (Integer) sqlMapper.queryForObject("car.yAVG", carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public static double aAVG(CarVO carVO){
		double result = 0;
		try {
			result = (Double) sqlMapper.queryForObject("car.aAVG", carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public static void updateEval(CarVO carVO){
		try {
			sqlMapper.update("car.updateEval", carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static int nextCarId(){
		int result=0;
		try {
			result = (Integer) sqlMapper.queryForObject("car.nextCarId");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public static ArrayList<CarVO> selectMyCar(CarVO carVO){
		ArrayList<CarVO> result = new ArrayList<CarVO>();
		
		try {
			result = (ArrayList<CarVO>) sqlMapper.queryForList("car.selectMyCar", carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static void updateSelling(CarVO carVO){
		try {
			sqlMapper.update("car.updateSelling", carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void deleteCar(CarVO carVO){
		try {
			sqlMapper.delete("car.deleteCar", carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static CarTypeVO selectBT(CarVO carVO){
		CarTypeVO result = new CarTypeVO();
		
		try {
			result = (CarTypeVO) sqlMapper.queryForObject("car.selectBT", carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public static ArrayList<CarVO> selectCarId(CarVO carVO){
		ArrayList<CarVO> result = new ArrayList<CarVO>();
		
		try {
			result = (ArrayList<CarVO>) sqlMapper.queryForList("car.selectCarId", carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static int countCar(){
		int result=0;
		try {
			result= (Integer) sqlMapper.queryForObject("car.countCar");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public static ArrayList<CarVO> selectPageCar(int num){
		ArrayList<CarVO> result = new ArrayList<CarVO>();
		
		try {
			result = (ArrayList<CarVO>) sqlMapper.queryForList("car.selectPageCar", num);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	public static ArrayList<CarVO> searchCar(CarSearchVO search){
		ArrayList<CarVO> result = new ArrayList<CarVO>();
		try {
			result = (ArrayList<CarVO>) sqlMapper.queryForList("car.searchCar", search);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	
}
