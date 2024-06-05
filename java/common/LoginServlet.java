package common;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import member.MemberService;
import member.MemberVO;

@WebServlet("/member/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/common/login.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchId = request.getParameter("id");
		String searchPassword = request.getParameter("password");
		
		// id에 해당하는 데이터를 조회하여 가져온다.
		ServletContext servletContext = request.getServletContext();
		SqlSession session = (SqlSession)servletContext.getAttribute("sqlSession");
		MemberService memberService = new MemberService(session);
		
		MemberVO vo = memberService.loginMember(new MemberVO(searchId, searchPassword));
		if (vo != null) {
			// 세션은 HttpSession 객체를 통해서 관리할 수 있다.
			HttpSession session1 = request.getSession();
			session1.setAttribute("member", vo);
			
			response.sendRedirect("/pet/main");
		} else {
			// 사용자가 없으면 로그인 페이지에 해당하는 사용자가 없다고 알려줌
			request.setAttribute("loginCheck", false);
			request.getRequestDispatcher("/views/common/login.jsp").forward(request, response);
		}
		
	}
}
