package disc.ocss.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.model.CarTypeVO;
import disc.ocss.model.CarVO;
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
			if(page==null)
				response.sendRedirect("select.jsp");
			else{
				
				CarVO carVO  = new CarVO();
				if(request.getParameter("content")!=null && request.getParameter("content").length()!=0 )
					carVO.setCarDesc(request.getParameter("content"));
				
				if(request.getParameter("carYear")!=null && request.getParameter("carYear").length()!=0 && cheackString(request.getParameter("carYear")))
					carVO.setCarYear(Integer.parseInt(request.getParameter("carYear")));
				
				
				if(!request.getParameter("fuel").equals("fuel") )
					carVO.setFuel(Integer.parseInt(request.getParameter("fuel")));
				
				
				if(request.getParameter("color")!=null&& request.getParameter("color").length()!=0)
					carVO.setColor(request.getParameter("color"));
				if(!request.getParameter("isAcci").equals("isAcci"))
					carVO.setIsAcci(Integer.parseInt(request.getParameter("isAcci")));
				if(!request.getParameter("isAuto").equals("isAuto"))
					carVO.setIsAuto(Integer.parseInt(request.getParameter("isAuto")));
				if(request.getParameter("locationList")!=null&& request.getParameter("locationList").length()!=0)
					carVO.setLocationList(request.getParameter("locationList"));
				
				if(request.getParameter("price")!=null&& request.getParameter("price").length()!=0  && cheackString(request.getParameter("price")))
					carVO.setPrice(Integer.parseInt(request.getParameter("price")));
				
				if(request.getParameter("insertCarName")!=null&& request.getParameter("insertCarName").length()!=0)
					carVO.setTitle(request.getParameter("insertCarName"));

				session.setAttribute("memory", carVO);
				session.setAttribute("content", request.getParameter("content"));
				
				response.sendRedirect("insertCar.jsp");
			}
		}
		
	}
	
	public boolean cheackString(String param){
		char[] ch = param.toCharArray();
		for (char c : ch) {
			if(!Character.isDigit(c))
				return false;
		}
		return true;
	}

}
