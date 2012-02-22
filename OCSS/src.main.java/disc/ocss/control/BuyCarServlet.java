package disc.ocss.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.model.OrdersVO;
import disc.ocss.service.OrdersService;

/**
 * Servlet implementation class BuyCarServlet
 */
public class BuyCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyCarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		OrdersService service = new OrdersService();
		OrdersVO ordersVO = new OrdersVO();
		
		ordersVO.setCarId(Integer.parseInt(request.getParameter("carId")));
		ordersVO.setMemberId(request.getParameter("memberId"));
		
		try {
			String result = service.insertOrder(ordersVO);
			
			if(result != null) {
				session.setAttribute("resultinsertorder", result+"님의 주문이 성공했습니다");
				
			}
			else {
				session.setAttribute("resultinsertorder", "주문이 실패했습니다");
			}
			response.sendRedirect("detailCar.page.tiles");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
