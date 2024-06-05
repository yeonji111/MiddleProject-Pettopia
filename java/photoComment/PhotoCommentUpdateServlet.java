package photoComment;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;


@WebServlet("/photoComment/update")
public class PhotoCommentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PhotoCommentService service;

	@Override
	public void init() {
		ServletContext context = getServletContext();
		SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
		service = new PhotoCommentService(sqlSession);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("pageNo")); // 다시 띄울 글번호 파라미터를 위해
		response.sendRedirect("/pet/photo/view?num=" + pageNo);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pageNo = Integer.parseInt(request.getParameter("pageNo")); // 다시 띄울 글번호 파라미터를 위해
		int updateNo = Integer.parseInt(request.getParameter("num")); // 이 num은 댓글번호
		String content = request.getParameter("content");
		// 삭제할때 쓸 vo
		int updateResult = service.updatePhotoComment(new PhotoCommentVO(content,pageNo));
		
		if (updateResult > 0) {
			// 등록 성공
			response.sendRedirect("/pet/photo/view?num=" + pageNo);
		} else {
			// 등록 실패
			request.setAttribute("msg", "수정 실패");
			response.sendRedirect("/pet/photo/view?num=" + pageNo);
		}
		
	}

}
