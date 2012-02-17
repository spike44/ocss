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

	@SuppressWarnings("unchecked")
	public static List<MemberVO> selectAllMember() throws SQLException {
		return sqlMapper.queryForList("member.selectall");
	}

	public static List<MemberVO> selectMember(MemberVO m) throws SQLException {
		return sqlMapper.queryForList("member.select", m);
	}

	public static List<MemberVO> loginCheck(MemberVO m) throws SQLException {
		return  sqlMapper.queryForList("member.selectMember", m);
		
	}
	
	public static void insertMember(MemberVO memberVO) throws SQLException {
		sqlMapper.insert("member.insert", memberVO);
	}

	public static void updateMemberInfo(MemberVO memberVO) throws SQLException {
		sqlMapper.update("member.updateforuser", memberVO);
	}

	public static void updateMemberApproval(MemberVO memberVO)
			throws SQLException {
		sqlMapper.update("member.updateforadmin", memberVO);
	}

	public static void deleteMember(MemberVO memberVO) throws SQLException {
		sqlMapper.delete("member.delete", memberVO);
	}

}
