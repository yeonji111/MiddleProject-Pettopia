package boards;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import boards.BoardService;

@WebServlet("/noti/delete")
public class NotiDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BoardService service;

	@Override
	public void init() {
		ServletContext context = getServletContext();
		SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
		service = new BoardService(sqlSession);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int deleteNo = Integer.parseInt(request.getParameter("num"));
		int deletedBoard = service.deleteBoard(deleteNo);
		if (deletedBoard > 0) {
			response.sendRedirect("/pet/noti/list");
		} else {
			request.setAttribute("msg", "삭제 실패");
			request.getRequestDispatcher("/views/boards/notiBoardList.jsp").forward(request, response);
		}

	}

}
