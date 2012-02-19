package disc.ocss.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.service.CarService;

/**
 * Servlet implementation class SelectCarTypeServlet
 */
public class SelectCarTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectCarTypeServlet() {
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
		String brand = request.getParameter("sel");
		
		HttpSession session = request.getSession();
		if(!brand.isEmpty()){
			session.setAttribute("sel", brand);
			CarService carService = new CarService();
			session.setAttribute("type", carService.selectCarType(brand));
			
			String page = request.getParameter("page"); 
			if(page.isEmpty())
				response.sendRedirect("select.jsp");
			else
				response.sendRedirect("insertCar.jsp");
		}
		
	}

}
