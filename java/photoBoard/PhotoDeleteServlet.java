package photoBoard;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

@WebServlet("/photo/delete")
public class PhotoDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PhotoBoardService service;
	
	@Override
	public void init() throws ServletException {
		ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new PhotoBoardService(sqlSession);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int deleteNo = Integer.parseInt(request.getParameter("num"));
		int deletedBoard = service.deletePhotoBoard(deleteNo);
		if (deletedBoard > 0) {
			response.sendRedirect("/pet/photo/list");
		} else {
			request.setAttribute("msg", "삭제 실패");
			request.getRequestDispatcher("/views/boards/photoDetail.jsp").forward(request, response);
		}
	}

}
