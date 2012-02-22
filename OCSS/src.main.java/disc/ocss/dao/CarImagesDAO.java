package disc.ocss.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import disc.ocss.model.CarImagesVO;
import disc.ocss.model.CarVO;

public class CarImagesDAO {
	
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
	
	public static ArrayList<CarImagesVO> selectMainImages(){
		ArrayList<CarImagesVO> result = new ArrayList<CarImagesVO>();
		
		try {
			result = (ArrayList<CarImagesVO>) sqlMapper.queryForList("carImages.selectMainImages");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static ArrayList<CarImagesVO> selectImages(CarImagesVO img){
		ArrayList<CarImagesVO> result = new ArrayList<CarImagesVO>();
		try {
			result = (ArrayList<CarImagesVO>) sqlMapper.queryForList("carImages.selectImages",img);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public static void insertImages(CarImagesVO img){
		
		try {
			sqlMapper.insert("carImages.insertImages",img);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static ArrayList<CarImagesVO> selectMyCarImages(CarVO carVO){
		ArrayList<CarImagesVO> result = new ArrayList<CarImagesVO>();
		
		try {
			result = (ArrayList<CarImagesVO>) sqlMapper.queryForList("carImages.selectMyCarImages",carVO);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public static void deleteImages(CarImagesVO img){
		try {
			sqlMapper.delete("carImages.deleteImages",img);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static ArrayList<CarImagesVO> selectPageImage(int num){
		ArrayList<CarImagesVO> result = new ArrayList<CarImagesVO>();
		
		try {
			result = (ArrayList<CarImagesVO>) sqlMapper.queryForList("carImages.selectPageImage", num);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

}
