package disc.ocss.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

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
	
	public static ArrayList<CarTypeVO> selectCarType (CarVO carVO) {
		ArrayList<CarTypeVO> list = new ArrayList<CarTypeVO>();
	    try {
			list=(ArrayList<CarTypeVO>) sqlMapper.queryForList("car.selectCarType",carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   return list;
	  }
	
	public static ArrayList<CarTypeVO> selectCarBrand(){
		ArrayList<CarTypeVO> list = new ArrayList<CarTypeVO>();
		try {
			list = (ArrayList<CarTypeVO>) sqlMapper.queryForList("car.selectCarBrand");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public static ArrayList<CarImagesVO> selectImages(CarImagesVO img){
		ArrayList<CarImagesVO> result = new ArrayList<CarImagesVO>();
		try {
			result = (ArrayList<CarImagesVO>) sqlMapper.queryForList("car.selectImages",img);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
