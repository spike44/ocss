package disc.ocss.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.model.MemberVO;
import disc.ocss.model.NotifyVO;
import disc.ocss.service.MemberService;
import disc.ocss.service.NotifyService;

/**
 * Servlet implementation class InsertNotifyServlet
 */
public class InsertNotifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertNotifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		
		NotifyService notifyService = new NotifyService();
		
		NotifyVO notifyVO = new NotifyVO();
		MemberVO  m = (MemberVO) session.getAttribute("login");
		notifyVO.setCarId(Integer.parseInt(request.getParameter("carId"))); //차후 수정
		notifyVO.setMemberId(m.getMemberId());
		notifyVO.setNotifyContent(request.getParameter("notifyContent"));
		notifyVO.setNotifyTitle(request.getParameter("notifyTitle"));
		notifyVO.setNotifyStatus("접수중");
		try {
			String result = notifyService.insertNotify(notifyVO);
			
			if(result != null) {
				session.setAttribute("resultnotify", "제목 : " + result + "글이 잘 등록되었습니다.");
			}
			else {
				session.setAttribute("resultnotify", "제목 : " + result + "글의 등록이 실패했습니다..");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("detailCarSeller.page.tiles");
	}

}
