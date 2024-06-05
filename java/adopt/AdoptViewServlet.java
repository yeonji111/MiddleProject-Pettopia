package adopt;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

@WebServlet("/adopt/view")
public class AdoptViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ServletContext servletContext = request.getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		AdoptService adoptService = new AdoptService(session);
		
		int searchNum = Integer.parseInt(request.getParameter("num"));
		AdoptVO vo = adoptService.getAdopt(searchNum);
		
		request.setAttribute("adoptVO", vo);
		request.getRequestDispatcher("/views/adopt/view.jsp").forward(request, response);

	}

}
