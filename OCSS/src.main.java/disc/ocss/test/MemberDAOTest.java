package disc.ocss.test;

import java.sql.SQLException;

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

	public void testSelectMember() {
		fail("Not yet implemented");
	}

	public void testLoginCheck() throws SQLException {
		MemberVO m = new MemberVO();
		m.setMemberId("spike44");
		m.setPassword("cowboy");
		MemberVO m2 = MemberDAO.loginCheck(m).get(0);
		
		System.out.println(m2.getMemberName());
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
		m.setMemberId("ahdshfg");
		m.setMemberName("aaga");
		m.setApproval(0);
		m.setEmail("dddd");
		m.setPassword("1234");
		m.setPhone("222");
		m.setPowerList(1);
		
		
		
		System.out.println(memberDAO.insertMember(m));
	}

	public void testUpdateMemberInfo() {
		fail("Not yet implemented");
	}

	public void testUpdateMemberApproval() {
		fail("Not yet implemented");
	}

	public void testDeleteMember() {
		fail("Not yet implemented");
	}

}
