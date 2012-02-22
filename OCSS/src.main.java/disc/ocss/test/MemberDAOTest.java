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

	public void testSelectMemberId() throws SQLException {
			
		List<MemberVO> list = memberDAO.selectmemberapproval(0);
		for(MemberVO m2 : list) {
			System.out.println(m2.getMemberName());
		}
		
		
	}

	public void testLoginCheck() throws SQLException {
		MemberVO m = new MemberVO();
		m.setMemberId("spike44");
		m.setPassword("cowboy");
		
		//System.out.println(memberDAO.loginCheck(m).getMemberName());
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
		String id="spike44";
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
	
	public void testest(){
		String test = "test";
		System.out.println(test.valueOf(0));
	}

}
