package disc.ocss.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import disc.ocss.model.CarImagesVO;
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
		
		return result;
	}
	
	public static ArrayList<CarImagesVO> selectMainImages(){
		ArrayList<CarImagesVO> result = new ArrayList<CarImagesVO>();
		
		try {
			result = (ArrayList<CarImagesVO>) sqlMapper.queryForList("car.selectMainImages");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
}
