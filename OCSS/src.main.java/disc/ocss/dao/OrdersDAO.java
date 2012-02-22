package disc.ocss.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import disc.ocss.model.OrdersVO;

public class OrdersDAO {
	private static SqlMapClient sqlMapper;
	static {
		try {
			Reader reader = Resources
					.getResourceAsReader("disc/ocss/sqlmap/SqlMapConfig.xml");
			sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
			reader.close();
		} catch (IOException e) {
			// Fail fast.
			throw new RuntimeException(
					"Something bad happened while building the SqlMapClient instance."
							+ e, e);
		}
	}
	public static List<OrdersVO> selectBuy(String memberId) throws SQLException {
		// TODO Auto-generated method stub
		List<OrdersVO> list = sqlMapper.queryForList("orders.selectBuy",memberId);
		if(list.isEmpty()) {
			return null;
		}
		return list;
	
	}
	public static String insertOrder(OrdersVO ordersVO) throws SQLException {
		// TODO Auto-generated method stub
		String result = (String) sqlMapper.insert("orders.insert",ordersVO);
		return result;
	}

}
