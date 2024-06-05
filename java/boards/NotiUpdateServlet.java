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

@WebServlet("/noti/update")
public class NotiUpdateServlet extends HttpServlet {
	private BoardService service;
	private static final long serialVersionUID = 1L;

	@Override
	public void init() {
		ServletContext context = getServletContext();
		SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
		service = new BoardService(sqlSession);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int searchNo = Integer.parseInt(request.getParameter("num"));
		BoardVO vo = service.getBoard(searchNo);
		request.setAttribute("board", vo);
		request.getRequestDispatcher("/views/boards/update.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		int updatebo = service.updateBoard(new BoardVO(title, content, num));
		if (updatebo > 0) {
			// 등록 성공
			response.sendRedirect("/pet/noti/list");
		} else {
			// 등록 실패
			request.setAttribute("msg", "수정 실패");
			request.getRequestDispatcher("/views/boards/update.jsp").forward(request, response);
		}

	}

}
