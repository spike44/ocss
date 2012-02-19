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
import disc.ocss.service.MemberService;

/**
 * Servlet implementation class EditMemberServlet
 */
public class EditMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditMemberServlet() {
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
		
		m.setEmail(request.getParameter("email"));
		m.setMemberId(request.getParameter("memberId"));
		m.setPassword(request.getParameter("password"));
		m.setPhone(request.getParameter("phone"));
		int result =0;
		try {
			result = memberService.updateMemberInfo(m);
			if(result !=0) {
				session.setAttribute("edit", "회원정보 수정에 성공했습니다.");
				response.sendRedirect("index.jsp");
			}
			else {
				session.setAttribute("edit", "회원 정보 수정에 실패했습니다");
				response.sendRedirect("editMember.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	

}
