package disc.ocss.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import disc.ocss.model.CommVO;
import disc.ocss.service.CommService;

/**
 * Servlet implementation class DeleteCommServlet
 */
public class DeleteCommServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCommServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int commentId = Integer.parseInt(request.getParameter("commentId"));
		int carId = Integer.parseInt(request.getParameter("carId"));
		CommVO comm = new CommVO();
		comm.setCommentId(commentId);
		
		CommService service = new CommService();
		service.deleteComm(comm);
		
		response.sendRedirect("detailCar.jsp?carId="+carId);
		
	}

}
