package disc.ocss.test;

import java.sql.SQLException;
import java.util.List;

import disc.ocss.dao.NotifyDAO;
import disc.ocss.model.NotifyVO;
import junit.framework.TestCase;

public class NotifyDAOTest extends TestCase {
	
	private NotifyDAO notifyDAO;
	
	protected void setUp() throws Exception {
		super.setUp();
	}

	public void testSelectAllNotify() throws SQLException {
		List<NotifyVO> list = notifyDAO.selectAllNotify();
		
		for(NotifyVO n : list) {
			System.out.println(n.getNotifyTitle());
		}
	}

	public void testInsertNotify() throws SQLException {
		NotifyVO notifyVO = new NotifyVO();
		notifyVO.setCarId(53463);
		notifyVO.setMemberId("gsagas");
		notifyVO.setNotifyContent("사기치지말랬지. 손모가지로 안끝난다");
		notifyVO.setNotifyTitle("사기신고2");
		notifyVO.setNotifyStatus("접수중");
		
		String result=notifyDAO.insertNotify(notifyVO);
		
		System.out.println(result);
		
	}

	public void testUpdateNotify() {
		fail("Not yet implemented");
	}

	public void testDeleteNotify() {
		fail("Not yet implemented");
	}

}
