package member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

/**
 * Servlet implementation class MemberInsertServlet
 */
@WebServlet("/member/signup")
public class MemberInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// /member/add.jsp로 forwarding
		request.getRequestDispatcher("/views/member/sign_up.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");

		ServletContext servletContext = request.getServletContext();
		SqlSession session = (SqlSession)servletContext.getAttribute("sqlSession");
		MemberService memberService = new MemberService(session);
				
		int result = memberService.insertMember(new MemberVO(id, password, name, nickname));
		
		if (result > 0) {
			response.sendRedirect("/pet/member/login");		
        } else {
            request.getRequestDispatcher("/views/member/sign_up.jsp").forward(request, response);
        }
	}

}
