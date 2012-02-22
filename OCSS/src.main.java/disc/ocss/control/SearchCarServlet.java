package disc.ocss.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.model.CarImagesVO;
import disc.ocss.model.CarSearchVO;
import disc.ocss.model.CarVO;
import disc.ocss.service.CarImagesService;
import disc.ocss.service.CarService;

/**
 * Servlet implementation class SearchCarServlet
 */
public class SearchCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchCarServlet() {
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
		HttpSession session = request.getSession();
		CarImagesService iService = new CarImagesService();
		CarService service = new CarService();
		
		String change = request.getParameter("change");
		
		if(change == null || change.length()<=0 || change.isEmpty()){
			String brand = request.getParameter("brand").trim();
			String carTypeCode = request.getParameter("typeCode");
			
			
			if(brand.length()==0){}
							
			else if(carTypeCode==null || carTypeCode.length()<=0 || !carTypeCode.isEmpty()){
				brand = service.selectBrandCode(brand);
			}
			
			int isAcci = Integer.parseInt(request.getParameter("isAcci"));
			int isAuto = Integer.parseInt(request.getParameter("isAuto"));		
			int fuel = Integer.parseInt(request.getParameter("fuel"));

			String min = request.getParameter("minPrice");
			int minPrice=0;
			if(min != null && min.length()>0){
				minPrice = Integer.parseInt(min);
			}

			String max = request.getParameter("maxPrice");
			int maxPrice=0;
			if(max != null && max.length()>0){
				maxPrice = Integer.parseInt(max);
			}

			String year = request.getParameter("carYear");
			int carYear=0;
			if(year != null && year.length()>0){
				carYear = Integer.parseInt(year);
			}

			String color = request.getParameter("color");
			String locationList = request.getParameter("locationList");


			CarSearchVO searhVO = new CarSearchVO();
			searhVO.setBrand(brand);
			searhVO.setCarTypeCode(carTypeCode);
			searhVO.setIsAcci(isAcci);
			searhVO.setIsAuto(isAuto);
			searhVO.setFuel(fuel);
			searhVO.setMinPrice(minPrice);
			searhVO.setMaxPrice(maxPrice);
			searhVO.setCarYear(carYear);
			searhVO.setColor(color);
			searhVO.setLocationList(locationList);
			searhVO.setNum(10);
			
			session.setAttribute("keyword",searhVO);
			
			ArrayList<CarVO> searchCar = service.searchCar(searhVO);
			session.setAttribute("carList", searchCar);

			int cnt = searchCar.size();

			int page = service.searchCarCount(searhVO)/10;
			if(cnt%10>0)
				page++;

			session.setAttribute("pageSize", page);

			ArrayList<CarImagesVO> carImageList = new ArrayList<CarImagesVO>();

			for(CarVO car : searchCar){
				ArrayList<CarImagesVO> selectPageImage = iService.selectPageImage(car.getCarId());
				if(selectPageImage.size()<=0 || selectPageImage==null){

					CarImagesVO i = new CarImagesVO();
					i.setCarId(car.getCarId());
					i.setImages("images/noPic.jpg");
					carImageList.add(i);
				}
				else{
					carImageList.add(selectPageImage.get(0));
				}

			}
			session.setAttribute("carImageList", carImageList);
			
			response.sendRedirect("selectCar.page.tiles?search='ok'");
		}
		
		else{
			
			CarSearchVO searhVO = (CarSearchVO)session.getAttribute("keyword");
			searhVO.setNum(Integer.parseInt(change));
			
			ArrayList<CarVO> searchCar = service.searchCar(searhVO);
			session.setAttribute("carList", searchCar);
			
			ArrayList<CarImagesVO> carImageList = new ArrayList<CarImagesVO>();

			for(CarVO car : searchCar){
				ArrayList<CarImagesVO> selectPageImage = iService.selectPageImage(car.getCarId());
				if(selectPageImage.size()<=0 || selectPageImage==null){

					CarImagesVO i = new CarImagesVO();
					i.setCarId(car.getCarId());
					i.setImages("images/noPic.jpg");
					carImageList.add(i);
				}
				else{
					carImageList.add(selectPageImage.get(0));
				}

			}
			session.setAttribute("carImageList", carImageList);
			
			response.sendRedirect("selectCar.page.tiles?search='ok'");
			
		}
		
	}

}
