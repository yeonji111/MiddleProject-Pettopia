package photoBoard;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.ibatis.session.SqlSession;

@MultipartConfig(location = "c:\\temp")
@WebServlet("/photo/update")
public class PhotoUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PhotoBoardService service;

	@Override
	public void init() throws ServletException {
		ServletContext context = getServletContext();
		SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
		service = new PhotoBoardService(sqlSession);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int searchNo = Integer.parseInt(request.getParameter("num"));
        PhotoBoardVO vo = service.getPhotoBoard(searchNo);
        request.setAttribute("photo", vo);
		request.getRequestDispatcher("/views/boards/photoUpdateWrite.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String title = request.getParameter("title");
		int num = Integer.parseInt(request.getParameter("num"));
		String content = request.getParameter("content");
		String fileName = request.getParameter("filepath");
		Part part = request.getPart("uploadFile");
		if (part.getSize() > 0) {
			fileName = part.getSubmittedFileName();
			// 파일이 선택된 경우에는 업로드한 파일의 이름 사용
			fileName = part.getSubmittedFileName();
			// 파일 업로드 로직은 여기에 추가
			part.write("c:\\temp\\" + fileName);
		}
		
		
		int updatePhotoBoard = service.updatePhotoBoard(new PhotoBoardVO(num, title, content, fileName));
		if (updatePhotoBoard > 0) {
			// 등록 성공, 게시판 목록으로 돌아가기
			response.sendRedirect("/pet/photo/list");
		} else {
			// 등록 실패, 작성 화면에 머무르기
			request.setAttribute("msg", "등록 실패");
			request.getRequestDispatcher("/views/boards/photoUpdateWrite.jsp").forward(request, response);
		}

	}

}
