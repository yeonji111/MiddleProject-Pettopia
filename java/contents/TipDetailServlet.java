package contents;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;


@WebServlet("/tip/detail")
public class TipDetailServlet extends HttpServlet {
	private TipService service;

	@Override
	public void init() {
		ServletContext context = getServletContext();
		SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
		service = new TipService(sqlSession);
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		TipVO vo = service.getTip(num);
		request.setAttribute("tip", vo);
		request.getRequestDispatcher("/views/contents/tipDetail.jsp").forward(request, response);
		
	}

}
