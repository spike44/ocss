package disc.ocss.test;

import java.sql.SQLException;

import junit.framework.TestCase;
import disc.ocss.model.MemberVO;
import disc.ocss.service.MemberService;

public class MemberServiceTest extends TestCase {

	private MemberService memberService;
	protected void setUp() throws Exception {
		super.setUp();
		//memberService = new MemberService();
	}

	public void testSelectAllMember() throws SQLException {
		MemberVO m = new MemberVO();
		memberService.selectAllMember(m);
	}

	public void testInsertMember() {
		fail("Not yet implemented");
	}

}
