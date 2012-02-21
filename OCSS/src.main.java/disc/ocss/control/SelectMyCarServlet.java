package disc.ocss.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.model.CarImagesVO;
import disc.ocss.model.CarVO;
import disc.ocss.model.MemberVO;
import disc.ocss.service.Car;
import disc.ocss.service.CarImagesService;
import disc.ocss.service.CarService;

/**
 * Servlet implementation class SelectMyCarServlet
 */
public class SelectMyCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectMyCarServlet() {
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
		CarService service = new CarService();
		CarImagesService iService = new CarImagesService();
		
		HttpSession session = request.getSession();
		
		MemberVO mem = (MemberVO)session.getAttribute("login");
		
		CarVO carVO = new CarVO();
		carVO.setMemberId(mem.getMemberId());
		
	
		ArrayList<CarVO> carList = service.selectMyCar(carVO);
		ArrayList<CarImagesVO> imgList = iService.selectMyCarImages(carVO);
		
		session.setAttribute("carList", carList);
		session.setAttribute("imgList", imgList);
		response.setContentType("text/html;charset=UTF-8");
	
		response.sendRedirect("selectMyCar.page.tiles");
		
	}

}
