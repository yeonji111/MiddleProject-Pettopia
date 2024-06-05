package member;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

/**
 * Servlet implementation class MemberDeleteServelt
 */
@WebServlet("/member/delete")
public class MemberDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String deleteId = request.getParameter("id");
		ServletContext servletContext = request.getServletContext();
		SqlSession session = (SqlSession)servletContext.getAttribute("sqlSession");
		MemberService memberService = new MemberService(session);
		
		int result = memberService.deleteMember(deleteId);
		if (result > 0) {
            response.sendRedirect("/pet/member/admin");
        } else {
        	response.sendRedirect("/pet/member/admin");
        }

	}

}
