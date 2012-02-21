package disc.ocss.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.model.CarVO;
import disc.ocss.model.CommVO;
import disc.ocss.model.MemberVO;
import disc.ocss.service.CommService;

/**
 * Servlet implementation class insertCommServlet
 */
public class InsertCommServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCommServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String contentDal = request.getParameter("comment");
		HttpSession session = request.getSession();
		CarVO car = (CarVO)session.getAttribute("detail");
		MemberVO member = (MemberVO) session.getAttribute("login");
		
		
		CommVO comm = new CommVO();
		comm.setCarId(car.getCarId());
		comm.setContentDal(contentDal);
		comm.setMemberId(member.getMemberId());
		
		CommService commService = new CommService();
		commService.insertComm(comm);
		//comm.setMemberId(member.getMemberId());
		
		response.sendRedirect("detailCar.jsp?carId="+car.getCarId());
		
	}

}
