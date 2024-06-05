package comment;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

@WebServlet("/comment/write")
public class CommentInsertServlet extends HttpServlet {
	private CommentService service;
	private static final long serialVersionUID = 1L;

	@Override
	public void init() {
		ServletContext context = getServletContext();
		SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
		service = new CommentService(sqlSession);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String num = request.getParameter("num");
		System.out.println(num);
		response.sendRedirect("/pet/noti/view?num=" + num);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		String content = request.getParameter("content");
		String id = request.getParameter("id");
		
		int updateno = service.insertComment(new CommentVO(num, id, content));
		if (updateno > 0) {
			// 등록 성공
			response.sendRedirect("/pet/noti/view?num=" + num);
		} else {
			// 등록 실패
			request.setAttribute("msg", "수정 실패");
//			request.getRequestDispatcher("/views/boards//update.jsp").forward(request, response);
			response.sendRedirect("/pet/noti/view?num=" + num);
		}

	}

}
