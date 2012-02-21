package disc.ocss.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.model.CarImagesVO;
import disc.ocss.model.CarVO;
import disc.ocss.service.CarImagesService;
import disc.ocss.service.CarService;

/**
 * Servlet implementation class SelectCarServlet
 */
public class SelectCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectCarServlet() {
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
		
		String change = request.getParameter("change");
		
		
		session.setAttribute("brand", service.selectCarBrand());
		
		
		
		if(change!=null && change.length()!=0 && !change.isEmpty()){
			ArrayList<CarVO> selectPageCar = service.selectPageCar(Integer.parseInt(change));
			session.setAttribute("carList", selectPageCar);
			ArrayList<CarImagesVO> carImageList = iService.selectPageImage(Integer.parseInt(change));
			session.setAttribute("carImageList", carImageList);
		}
		else{
			int cnt = service.countCar();
			
			int page = cnt/10;
			if(cnt%10>0)
				page++;
			
			session.setAttribute("pageSize", page);
			ArrayList<CarVO> selectPageCar = service.selectPageCar(10);
			session.setAttribute("carList", selectPageCar);
			ArrayList<CarImagesVO> carImageList = iService.selectPageImage(10);
			session.setAttribute("carImageList", carImageList);
		}
		
		response.sendRedirect("selectCar.page.tiles");
	}	

}

