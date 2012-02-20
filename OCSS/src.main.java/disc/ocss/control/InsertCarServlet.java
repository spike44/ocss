package disc.ocss.control;

import java.io.IOException;
import java.security.Provider.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.dao.CarImagesDAO;
import disc.ocss.model.CarImagesVO;
import disc.ocss.model.CarVO;
import disc.ocss.model.MemberVO;
import disc.ocss.service.Car;
import disc.ocss.service.CarImagesService;
import disc.ocss.service.CarService;

/**
 * Servlet implementation class InsertCarServlet
 */
public class InsertCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertCarServlet() {
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
		CarVO carVO  = new CarVO();
		carVO.setCarDesc(request.getParameter("content"));
		carVO.setCarYear(Integer.parseInt(request.getParameter("carYear")));
		carVO.setFuel(Integer.parseInt(request.getParameter("fuel")));
		carVO.setColor(request.getParameter("color"));
		carVO.setIsAcci(Integer.parseInt(request.getParameter("isAcci")));
		carVO.setIsAuto(Integer.parseInt(request.getParameter("isAuto")));
		carVO.setLocationList(request.getParameter("locationList"));
		carVO.setPrice(Integer.parseInt(request.getParameter("price")));
		carVO.setTitle(request.getParameter("insertCarName"));
		carVO.setCartypeCode(request.getParameter("type"));
		
		System.out.println(request.getParameter("type"));
		
		carVO.setSellingStatus("판매중");
		
		MemberVO m = new MemberVO();
		m.setMemberId("m001");
		HttpSession session = request.getSession();
		
		session.setAttribute("login", m);
		MemberVO login = (MemberVO) session.getAttribute("login");
		
		carVO.setMemberId(login.getMemberId());
		
		CarService serivce = new CarService();
		int id = serivce.nextCarId();
		carVO.setCarId(id);
		Car c = new Car();
		c.setPriceEval(carVO);
		c.setYearEval(carVO);
		c.setTotalEval(carVO);
		
		serivce.insertCar(carVO);
			
		String file;
		CarImagesVO img = new CarImagesVO();
		CarImagesService iService = new CarImagesService();
		img.setCarId(id);
		if(session.getAttribute("afilename")!=null){
			
			file = (String)session.getAttribute("afilename");
			img.setImages(file);
			iService.insertImages(img);
		}
		if(session.getAttribute("bfilename")!=null){
			
			file = (String)session.getAttribute("bfilename");
			img.setImages(file);
			iService.insertImages(img);
		}
		if(session.getAttribute("cfilename")!=null){
			
			file = (String)session.getAttribute("cfilename");
			img.setImages(file);
			iService.insertImages(img);
		}
		if(session.getAttribute("dfilename")!=null){
			
			file = (String)session.getAttribute("dfilename");
			img.setImages(file);
			iService.insertImages(img);
		}
		if(session.getAttribute("efilename")!=null){
			
			System.out.println("file");
			file = (String)session.getAttribute("efilename");
			img.setImages(file);
			iService.insertImages(img);
		}
		if(session.getAttribute("ffilename")!=null){
			
			file = (String)session.getAttribute("ffilename");
			img.setImages(file);
			iService.insertImages(img);
		}

		
		response.sendRedirect("select.jsp");
		
		
	}

}
