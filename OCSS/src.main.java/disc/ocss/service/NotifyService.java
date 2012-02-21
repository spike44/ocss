package disc.ocss.service;

import java.sql.SQLException;
import java.util.List;

import disc.ocss.dao.NotifyDAO;
import disc.ocss.model.NotifyVO;

public class NotifyService {

	public List<NotifyVO> selectAllNotify() throws SQLException {
		List<NotifyVO> list = NotifyDAO.selectAllNotify();

		return list;
	}
	public String insertNotify(NotifyVO notifyVO) throws SQLException {
		String result = NotifyDAO.insertNotify(notifyVO);
		return result;
	}
	
	public int updateNotify(NotifyVO notifyVO) throws SQLException {
		int result = NotifyDAO.updateNotify(notifyVO);
		return result;
	}
	public int deleteNotify(int notifyId) throws SQLException {
		
		int result = NotifyDAO.deleteNotify(notifyId);
		return result;
		
	}
	public List<NotifyVO> selectNotify(String memberId) throws SQLException {
		
		List<NotifyVO> list = NotifyDAO.selectNotify(memberId);
		return list;
	}
}
