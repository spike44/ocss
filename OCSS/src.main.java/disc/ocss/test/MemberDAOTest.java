package disc.ocss.test;

import java.sql.SQLException;
import java.sql.SQLWarning;
import java.util.List;

import disc.ocss.dao.MemberDAO;
import disc.ocss.model.MemberVO;
import junit.framework.TestCase;

public class MemberDAOTest extends TestCase {
	private MemberDAO memberDAO;

	protected void setUp() throws Exception {
		super.setUp();
	}

	public void testSelectAllMember() {
		fail("Not yet implemented");
	}

	public void testSelectMember() throws SQLException {
		MemberVO m = new MemberVO();
		m.setApproval(0);
		
		List<MemberVO> list = memberDAO.selectMember(m);
		for(MemberVO m2 : list) {
			System.out.println(m2.getMemberId());
		}
		
		
	}

	public void testLoginCheck() throws SQLException {
		MemberVO m = new MemberVO();
		m.setMemberId("admin");
		m.setPassword("admin");
		if(MemberDAO.loginCheck(m).isEmpty()) {
			System.out.println("null");
		}
		else {
			System.out.println(MemberDAO.loginCheck(m).get(0).getPowerList());
		}
		
		
	}

	public void testSearchId() throws SQLException {
		MemberVO m = new MemberVO();
		m.setMemberName("하종문");
		m.setEmail("jongmun0816@gmail.com");
		m.setPhone("01026813062");
	
		String result = MemberDAO.searchId(m);
		System.out.println(result);
		
	}

	public void testInsertMember() throws SQLException {
		
		MemberVO m = new MemberVO();
		m.setMemberId("hjgjdf");
		m.setMemberName("신충현");
		m.setApproval(0);
		m.setEmail("dddd");
		m.setPassword("1234");
		m.setPhone("222");
		m.setPowerList(1);
		
		
		
		System.out.println(memberDAO.insertMember(m));
	}
	public void testCheckId() throws SQLException {
		String id="agfgd";
		String result = memberDAO.checkId(id);
		
		System.out.println(result);
		
	}
 
	public void testUpdateMemberInfo() {
		MemberVO m = new MemberVO();
		m.setMemberId("kdytajo");
		m.setEmail("abcd@abc.com");
		m.setPassword("4567");
		m.setPhone("3634634");
	}

	public void testUpdateMemberApproval() {
		fail("Not yet implemented");
	}

	public void testDeleteMember() {
		fail("Not yet implemented");
	}

}
