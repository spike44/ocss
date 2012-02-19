package disc.ocss.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import disc.ocss.model.CommVO;

public class CommDAO {
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
	
	public static ArrayList<CommVO> selectComm(CommVO comm){
		ArrayList<CommVO> result = new ArrayList<CommVO>();
		
		try {
			result = (ArrayList<CommVO>) sqlMapper.queryForList("comm.selectComm", comm);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}

}
