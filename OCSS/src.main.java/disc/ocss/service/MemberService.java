package disc.ocss.service;

import disc.ocss.model.MemberVO;

import java.util.List;
import java.sql.SQLException;
import disc.ocss.dao.MemberDAO;

public class MemberService {

	public List<MemberVO> selectAllMember() throws SQLException {
		List<MemberVO> list = MemberDAO.selectAllMember();
		return list;
	}

	public List<MemberVO> selectmemberpower(int i) throws SQLException {
		List<MemberVO> list = MemberDAO.selectmemberpower(i);
		return list;
	}

	public List<MemberVO> selectmemberapproval(int i) throws SQLException {
		List<MemberVO> list = MemberDAO.selectmemberapproval(i);
		return list;
	}

	public List<MemberVO> selectmembername(String s) throws SQLException {
		List<MemberVO> list = MemberDAO.selectmembername(s);
		return list;
	}

	public List<MemberVO> selectmemberid(String s) throws SQLException {
		List<MemberVO> list =  MemberDAO.selectmemberid(s);
		return list;
	}
	
	public List<MemberVO> selectmemberphone(String s) throws SQLException {
		List<MemberVO> list =  MemberDAO.selectmemberphone(s);
		return list;
	}
	
	public List<MemberVO> selectmemberemail(String s) throws SQLException {
		List<MemberVO> list =  MemberDAO.selectmemberemail(s);
		return list;
	}
	
	
	
	public MemberVO loginCheck(MemberVO m) throws SQLException {
		if (MemberDAO.loginCheck(m).isEmpty()) {
			return null;
		}

		else {
			return MemberDAO.loginCheck(m).get(0);
		}

	}

	public String insertMember(MemberVO memberVO) throws SQLException {
		return MemberDAO.insertMember(memberVO);
	}

	public String checkId(String memberId) throws SQLException {
		return MemberDAO.checkId(memberId);
	}

	public String searchId(MemberVO m) throws SQLException {
		return MemberDAO.searchId(m);
	}

	public String searchPw(MemberVO m) throws SQLException {
		return MemberDAO.searchPw(m);
	}

	public int updateMemberInfo(MemberVO memberVO) throws SQLException {
		return MemberDAO.updateMemberInfo(memberVO);
	}

	public int updateMemberApproval(String memberId) throws SQLException {
		return MemberDAO.updateMemberApproval(memberId);
	}

	public int deleteMember(MemberVO memberVO) throws SQLException {
		return MemberDAO.deleteMember(memberVO);
	}

	public int deleteBadMember(String memberId) throws SQLException {
		return MemberDAO.deleteBadMember(memberId);
	}
	
	public MemberVO selectTargetMember(String memberId) throws SQLException {
		
		return MemberDAO.selectmemberid(memberId).get(0);
	
	}

}
