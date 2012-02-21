package disc.ocss.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import disc.ocss.model.NotifyVO;

public class NotifyDAO {
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
	
	
	public static List<NotifyVO> selectAllNotify() throws SQLException {
		List<NotifyVO> list = sqlMapper.queryForList("notify.selectNotifyall");
		if(list.isEmpty()) {
			return null;
		}
		return list;
	}
	public static String insertNotify(NotifyVO notifyVO) throws SQLException {
		String result = (String) sqlMapper.insert("notify.insertNotify",notifyVO);
		return result;
	}
	
	public static int updateNotify(NotifyVO notifyVO) throws SQLException {
		int result = sqlMapper.update("notify.updateNotify",notifyVO);
		return result;
	}
	public static int deleteNotify(int notifyId) throws SQLException {
		
		int result = sqlMapper.delete("notify.deleteNotify",notifyId);
		return result;
		
	}
	
}
