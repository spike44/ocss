package disc.ocss.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.ibatis.sqlmap.client.SqlMapException;

import disc.ocss.model.MemberVO;

public class MemberDAO {
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

	public static List<MemberVO> selectAllMember() throws SQLException {
		List<MemberVO> list = sqlMapper.queryForList("member.selectall");
		if(list.isEmpty()) {
			return null;
		}
		return list;
	}
	
	public static List<MemberVO> selectmemberpower(int i) throws SQLException {
		List<MemberVO> list = sqlMapper.queryForList("member.selectmemberpower",i);
		if(list.isEmpty()) {
			return null;
		}
		return list;
	}
	public static List<MemberVO> selectmemberapproval(int i) throws SQLException {
		List<MemberVO> list = sqlMapper.queryForList("member.selectmemberapproval",i);
		if(list.isEmpty()) {
			return null;
		}
		return list;
	}
	public static String checkId(String memberId) throws SQLException {
		return (String) sqlMapper.queryForObject("member.checkId", memberId);
	}
	
	public static List<MemberVO> selectmembername(String s) throws SQLException {
		List<MemberVO> list = sqlMapper.queryForList("member.selectmembername",s);
		if(list.isEmpty()) {
			return null;
		}
		return list;
	}
	
	public static List<MemberVO> selectmemberid(String s) throws SQLException {
		List<MemberVO> list = sqlMapper.queryForList("member.selectmemberid", s);
		if(list.isEmpty()) {
			return null;
		}
		return list;

	}
	
	public static List<MemberVO> selectmemberphone(String s) throws SQLException {
		List<MemberVO> list = sqlMapper.queryForList("member.selectmemberphone", s);
		if(list.isEmpty()) {
			return null;
		}
		return list;
		
	}
	public static List<MemberVO> selectmemberemail(String s) throws SQLException {
		List<MemberVO> list = sqlMapper.queryForList("member.selectmemberemail", s);
		if(list.isEmpty()) {
			return null;
		}
		return list;
	}
	
	public static List<MemberVO> loginCheck(MemberVO m) throws SQLException {
		return sqlMapper.queryForList("member.selectMember", m);

	}

	public static String searchId(MemberVO m) throws SQLException {
		return (String) sqlMapper.queryForObject("member.selectId", m);
	}
	public static String searchPw(MemberVO m) throws SQLException {
		return (String) sqlMapper.queryForObject("member.selectPw", m);
	}

	public static String insertMember(MemberVO memberVO) throws SQLException {
		 return (String) sqlMapper.insert("member.insert", memberVO);
	}

	public static int updateMemberInfo(MemberVO memberVO) throws SQLException {
		return sqlMapper.update("member.updateforuser", memberVO);
	}

	public static int updateMemberApproval(String memberId)
			throws SQLException {
		return sqlMapper.update("member.updateforadmin", memberId);
	}

	public static int deleteMember(MemberVO memberVO) throws SQLException {
		return sqlMapper.delete("member.delete", memberVO);
	}
}
