package comment;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;



@WebServlet("/comment/delete")
public class CommentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CommentService service;

	@Override
	public void init() {
		ServletContext context = getServletContext();
		SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
		service = new CommentService(sqlSession);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("pageNo")); // 다시 띄울 글번호 파라미터를 위해
		int deleteNo = Integer.parseInt(request.getParameter("num")); // 이 num은 댓글번호
		int deletedBoard = service.deleteComment(deleteNo);
		if (deletedBoard > 0) {
			// 삭제 성공 시
			response.sendRedirect("/pet/noti/view?num=" + pageNo);
		} else {
			// 삭제 실패 시
			request.setAttribute("msg", "삭제 실패");
			response.sendRedirect("/pet/noti/view?num=" + pageNo);
		}
		
		
	}

}
