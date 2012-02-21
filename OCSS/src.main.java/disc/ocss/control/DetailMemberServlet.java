package disc.ocss.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

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
 * Servlet implementation class DetailMemberServlet
 */
public class DetailMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailMemberServlet() {
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
		
		String memberId= request.getParameter("memberId");
		MemberService memberService = new MemberService();
		NotifyService notifyService = new NotifyService();
		
		try {
			
			MemberVO member = memberService.selectTargetMember(memberId);
			session.setAttribute("targetMember", member);
			List<NotifyVO> notifyList = notifyService.selectNotify(memberId);
			if(notifyList != null) {
				session.setAttribute("notifyList", notifyList);
			}
			else {
				session.setAttribute("resultNotify", "신고한 상품이 없습니다.");
			}
			 response.sendRedirect("detailMember.page.tiles");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
