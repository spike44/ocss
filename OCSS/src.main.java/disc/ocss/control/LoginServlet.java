package disc.ocss.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.model.MemberVO;
import disc.ocss.service.MemberService;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		MemberVO m = new MemberVO();
		HttpSession session = request.getSession();
		MemberService memberService = new MemberService();
		m.setMemberId(request.getParameter("memberId"));
		m.setPassword(request.getParameter("password"));
		try {
			MemberVO m2 = memberService.loginCheck(m);
			if(m2 != null) {
				session.setAttribute("login", m2);
						
			}
			else {
				session.setAttribute("loginfailed", "로그인 실패");
						
			}
			if(m2.getPowerList()==3) {
				response.sendRedirect("/control/admin.jsp");
			}
			else if(m2.getPowerList()==2) {
				response.sendRedirect("/index.jsp");
			}
			else if(m2.getPowerList()==1 && m2.getApproval()==1) {
				response.sendRedirect("/index.jsp");
			}
			else if(m2.getPowerList()==1 && m2.getApproval()==0) {
				session.setAttribute("login", null);
				
				session.setAttribute("commit", m2.getMemberId()+"님은 아직 가입 대기중입니다");
				response.sendRedirect("/index.jsp");		
							
			}
		} catch (SQLException e) {
	
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
