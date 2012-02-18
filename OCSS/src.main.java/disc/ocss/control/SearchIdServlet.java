package disc.ocss.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.model.MemberVO;
import disc.ocss.service.MemberService;

/**
 * Servlet implementation class SearchIdServlet
 */
public class SearchIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		MemberVO m = new MemberVO();
		MemberService memberService = new MemberService();
		HttpSession session =request.getSession();
		
		m.setEmail(request.getParameter("email"));
		m.setMemberName(request.getParameter("memberName"));
		m.setPhone(request.getParameter("phone"));
		
		try {
			String result = memberService.searchId(m);
			if(result != null) {
			session.setAttribute("resultId", "귀하의 아이디는 '"+ result + "' 입니다");
			}
			else {
				session.setAttribute("resultId", "등록된 회원정보가 없습니다.");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			response.sendRedirect("searchIdPw.jsp");
	}

}
