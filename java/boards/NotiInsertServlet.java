package boards;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import member.MemberVO;

@WebServlet("/boards/write")
public class NotiInsertServlet extends HttpServlet {
	private BoardService service;

	@Override
	public void init() throws ServletException {
        ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new BoardService(sqlSession);
	}
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/boards/write.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		String id = member.getId();
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		int insertBoard = service.insertBoard(new BoardVO(id, title, content));
		if (insertBoard > 0) {
			// 등록 성공, 게시판 목록으로 돌아가기
			response.sendRedirect("/pet/noti/list");
		} else {
			// 등록 실패, 작성 화면에 머무르기
			request.setAttribute("msg", "등록 실패");
			request.getRequestDispatcher("/views/boards/write.jsp").forward(request, response);
		}
	}

}
