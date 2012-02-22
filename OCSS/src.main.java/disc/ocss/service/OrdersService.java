package disc.ocss.service;

import java.sql.SQLException;
import java.util.List;

import disc.ocss.dao.OrdersDAO;
import disc.ocss.model.OrdersVO;

public class OrdersService {
	public List<OrdersVO> selectBuy(String memberId) throws SQLException {
		List<OrdersVO> list = OrdersDAO.selectBuy(memberId);
		
		return list;
		
	}

	public String insertOrder(OrdersVO ordersVO) throws SQLException {
		// TODO Auto-generated method stub
		String result = OrdersDAO.insertOrder(ordersVO);
		
		return result;
	}
}
