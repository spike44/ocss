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

	public MemberVO selectMember(MemberVO m) throws SQLException {
		MemberVO result = MemberDAO.selectMember(m).get(0);

		return result;

	}

	public MemberVO loginCheck(MemberVO m) throws SQLException {
		if(MemberDAO.loginCheck(m).isEmpty()) {
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

	public int updateMemberApproval(MemberVO memberVO)
			throws SQLException {
		return MemberDAO.updateMemberApproval(memberVO);
	}

	public int deleteMember(MemberVO memberVO) throws SQLException {
		return MemberDAO.deleteMember(memberVO);
	}

}
