package contents;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;


@WebServlet("/recommend/result")
public class RecommendResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private RecommendService service;
    
	
	@Override
    public void init() {
        ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new RecommendService(sqlSession);
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String color = request.getParameter("color");
		String size = request.getParameter("size");
		String home = request.getParameter("home");
		
		
		
		RecommendVO vo = new RecommendVO(color, size, home);
		RecommendVO resultVO = service.getRecommendResult(vo);
		
		request.setAttribute("result",resultVO);
		request.getRequestDispatcher("/views/contents/recommendResult.jsp").forward(request, response);
		

	
	}

	
}
