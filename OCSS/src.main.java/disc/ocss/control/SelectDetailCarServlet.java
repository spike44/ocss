package disc.ocss.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.model.CarImagesVO;
import disc.ocss.model.CarTypeVO;
import disc.ocss.model.CarVO;
import disc.ocss.model.MemberVO;
import disc.ocss.service.CarImagesService;
import disc.ocss.service.CarService;
import disc.ocss.service.CommService;

/**
 * Servlet implementation class SelectDetailCarServlet
 */
public class SelectDetailCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectDetailCarServlet() {
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

		CarService carService = new CarService();
		CarImagesService iService = new CarImagesService();
		
		HttpSession session = request.getSession();
		
		ArrayList<CarVO> carList = (ArrayList<CarVO>) session.getAttribute("carList");
		int carId = Integer.parseInt(request.getParameter("carId"));
		CarVO detail = new CarVO();		
		
		if(carList == null){
			detail = carService.selectCarId(carId);
		}
		else{
			for(CarVO car : carList){
				if(car.getCarId()==carId)
					detail = car;
			}
		}
		
		CarTypeVO selectBT = carService.selectBT(detail.getCartypeCode());
		System.out.println(selectBT.getCarType());

		CarImagesService service = new CarImagesService();
		ArrayList<CarImagesVO> img = service.selectImages(carId);
		session.setAttribute("image", img);
		session.setAttribute("main", img.get(0));
		session.setAttribute("detail", detail);
		
		session.setAttribute("bt", selectBT);
		
		CommService comService = new CommService();
		session.setAttribute("comm", comService.selectComm(carId));
		
		MemberVO m = (MemberVO) session.getAttribute("login");
		
		
		
		if(m != null && m.getPowerList()==1)
			response.sendRedirect("detailCarSeller.page.tiles");	
		else	
			response.sendRedirect("detailCar.page.tiles");	
		

	}

}
