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
 * Servlet implementation class SearchPwServlet
 */
public class SearchPwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPwServlet() {
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
		m.setMemberId(request.getParameter("memberId"));
		m.setEmail(request.getParameter("email2"));
		m.setMemberName(request.getParameter("memberName2"));
			
		try {
			String result = memberService.searchPw(m);
			if(result != null) {
			session.setAttribute("resultPw","귀하의 비밀번호는 '"+ result + "' 입니다" );
			}
			else {
				session.setAttribute("resultPw", "아이디나 회원정보가 잘못됐습니다.");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			response.sendRedirect("searchIdPw.page.tiles");
	}

}
