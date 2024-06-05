package boards;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import comment.CommentService;
import comment.CommentVO;
import common.SearchVO;

/**
 * Servlet implementation class ViewServlet
 */
@WebServlet("/noti/view")
public class NotiViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BoardService service;
	private CommentService commentService;

	@Override
	public void init() {
		ServletContext context = getServletContext();
		SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
		service = new BoardService(sqlSession);
		commentService = new CommentService(sqlSession);
	}

	//	작성자, 제목 , 내용 , 작성날짜
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int searchNo = Integer.parseInt(request.getParameter("num"));
		BoardVO vo = service.getBoard(searchNo);
		
		List<CommentVO> list = commentService.getCommentList(searchNo);
		request.setAttribute("comment", list);
		request.setAttribute("board", vo);
		request.getRequestDispatcher("/views/boards/boardDetail.jsp").forward(request, response);

	}

}
