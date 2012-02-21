package disc.ocss.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import disc.ocss.model.CarVO;
import disc.ocss.service.CarService;

/**
 * Servlet implementation class DeleteCarServlet
 */
public class DeleteCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCarServlet() {
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
		String[] parameterValues = request.getParameterValues("checkSellCar");
		
		for (String string : parameterValues) {
			CarVO carVO = new CarVO();
			carVO.setCarId(Integer.parseInt(string));
			
			CarService service = new CarService();
			service.deleteCar(carVO);
		}
		
		response.sendRedirect("mycar.do");
	}

}
