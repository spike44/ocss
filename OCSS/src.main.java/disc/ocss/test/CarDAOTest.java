package disc.ocss.test;

import disc.ocss.dao.CarDAO;
import disc.ocss.model.CarTypeVO;
import disc.ocss.model.CarVO;
import junit.framework.TestCase;

public class CarDAOTest extends TestCase {
	private CarDAO cardao;

	public void testSelectCarType() {
		fail("Not yet implemented");
	}

	public void testSelectCarBrand() {
		fail("Not yet implemented");
	}

	public void testSelectCar() {
		fail("Not yet implemented");
	}

	public void testInsertCar() {
		fail("Not yet implemented");
	}

	public void testPAVG() {
		fail("Not yet implemented");
	}

	public void testYAVG() {
		fail("Not yet implemented");
	}

	public void testAAVG() {
		fail("Not yet implemented");
	}

	public void testUpdateEval() {
		fail("Not yet implemented");
	}

	public void testNextCarId() {
		fail("Not yet implemented");
	}

	public void testSelectMyCar() {
		fail("Not yet implemented");
	}

	public void testUpdateSelling() {
		fail("Not yet implemented");
	}

	public void testDeleteCar() {
		fail("Not yet implemented");
	}

	public void testSelectBT() {
		
		CarVO cv = new CarVO();
		cv.setCartypeCode("h001-ab");
		
		
		
		CarTypeVO c = cardao.selectBT(cv);
		
		System.out.println(c.getBrand());
		System.out.println(c.getCarType());
		System.out.println(c.getCarTypeCode());
		
	}

	public void testSelectCarId() {
		fail("Not yet implemented");
	}

}
