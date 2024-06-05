package photoBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;


import photoComment.PhotoCommentService;
import photoComment.PhotoCommentVO;

@WebServlet("/photo/view")
public class PhotoViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PhotoBoardService service;
	private PhotoCommentService commentService;
	
	
	@Override
	public void init() throws ServletException {
		ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new PhotoBoardService(sqlSession);
        commentService = new PhotoCommentService(sqlSession);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int searchNo = Integer.parseInt(request.getParameter("num"));
		 PhotoBoardVO vo = service.getPhotoBoard(searchNo);
		 
		 List<PhotoCommentVO> list = commentService.getPhotoCommentList(searchNo);
		 request.setAttribute("comment", list);
		 request.setAttribute("photo", vo);
		 request.getRequestDispatcher("/views/boards/photoDetail.jsp").forward(request, response);
	}

}
