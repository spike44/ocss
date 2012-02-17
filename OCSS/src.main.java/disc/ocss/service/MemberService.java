package disc.ocss.service;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.ibatis.common.resources.Resources;

import disc.ocss.model.MemberVO;


import java.io.Reader;
import java.io.IOException;
import java.util.List;
import java.sql.SQLException;

public class MemberService {
	
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

		  @SuppressWarnings("unchecked")
		public static List<MemberVO> selectAllMember (MemberVO m) throws SQLException {
		    return sqlMapper.queryForList("member.select",m);
		  }

		  public static void insertMember (MemberVO memberVO) throws SQLException {
		    sqlMapper.insert("member.insert", memberVO);
		  }

		  public static void updateAccount (MemberVO memberVO) throws SQLException {
		    sqlMapper.update("updateMember",memberVO);
		  }

		  public static void deleteAccount (String memberId) throws SQLException {
		    sqlMapper.delete("deleteMember", memberId);
		  }
	
	
	

}
