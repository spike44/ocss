package disc.ocss.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import disc.ocss.model.MemberVO;
import disc.ocss.service.MemberService;

/**
 * Servlet implementation class MemberJoinServlet
 */
public class JoinMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinMemberServlet() {
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
		MemberVO m = new MemberVO();
		MemberService memberService = new MemberService();
		if(Integer.parseInt(request.getParameter("powerList"))== 2) {
			m.setApproval(1);
		}
		else {
		m.setApproval(0);
		}
		m.setEmail(request.getParameter("email"));
		m.setMemberId(request.getParameter("memberId"));
		m.setMemberName(request.getParameter("memberName"));
		m.setPassword(request.getParameter("password"));
		m.setPhone(request.getParameter("phone"));
		m.setPowerList(Integer.parseInt(request.getParameter("powerList")));
		
		try {
			session.setAttribute("join", memberService.insertMember(m) + "님 가입을 축하드립니다.");
			response.sendRedirect("index.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
