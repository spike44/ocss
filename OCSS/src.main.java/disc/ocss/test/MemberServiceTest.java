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
			
		List<MemberVO> list = memberService.selectAllMember();
		
		for(MemberVO m1 : list) {
			System.out.println(m1.getMemberId());
			System.out.println(m1.getApproval());
			System.out.println(m1.getEmail());
		}
	}
	
	public void testMember() throws SQLException {
		MemberVO m = new MemberVO();
		m.setMemberId("psay");
		
		List<MemberVO> list = memberService.selectMember(m);
		
		for(MemberVO m1 : list) {
			System.out.println(m1.getMemberId());
			System.out.println(m1.getApproval());
			System.out.println(m1.getEmail());
		}
	}


	public void testInsertMember() throws SQLException {
		MemberVO m = new MemberVO();
		m.setMemberId("psay");
		m.setMemberName("문진학");
		m.setApproval(0);
		m.setEmail("dddd");
		m.setPassword("1234");
		m.setPhone("222");
		m.setPowerList(1);
		
		memberService.insertMember(m);
		
	}
	public void updateforuser() throws SQLException {
		MemberVO m = new MemberVO();
		m.setMemberId("psay");
		m.setEmail("cccc");
		m.setPassword("1234");
		m.setPhone("222");
		memberService.updateMemberInfo(m);
	}
	public void updateforadmin() throws SQLException {
		MemberVO m = new MemberVO();
		m.setMemberId("psay");
		m.setApproval(1);
		memberService.updateMemberApproval(m);
	
	}
	public void deleteMember() throws SQLException {
		MemberVO m = new MemberVO();
		memberService.deleteMember(m);
	}
	public void logincheck() throws SQLException {
		MemberVO m = new MemberVO();
		m.setMemberId("spike44");
		m.setPassword("cowboy");
		
		List<MemberVO> list = memberService.loginCheck(m);
		
		for(MemberVO m1 : list) {
			System.out.println(m1.getMemberName());
		}
	}
}

