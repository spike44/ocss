package disc.ocss.test;

import java.sql.SQLException;
import java.util.List;

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
		m.setMemberId("a");
		List<MemberVO> list = memberService.selectAllMember(m);
		
		for(MemberVO m1 : list) {
			System.out.println(m1.getMemberId());
		}
	}

	public void testInsertMember() {
		fail("Not yet implemented");
	}

}
