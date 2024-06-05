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

import common.PaginationInfo;
import common.SearchVO;
import boards.BoardService;
import boards.BoardVO;

@WebServlet("/photo/list")
public class PhotoBoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PhotoBoardService service;
	
	@Override
	public void init() throws ServletException {
		ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new PhotoBoardService(sqlSession);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchType = request.getParameter("searchType");
		String searchWord = request.getParameter("searchWord");
		// 페이징 관련 코드
		String pageNo = request.getParameter("currentPageNo");
		int currentPageNo = pageNo == null ? 1 : Integer.parseInt(pageNo);
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(currentPageNo);
		paginationInfo.setRecordCountPerPage(16);
		paginationInfo.setPageSize(5);
		SearchVO vo = new SearchVO(searchType, searchWord);
		
		int totalCount = service.getPhotoBoardListCount(vo);
		paginationInfo.setTotalRecordCount(totalCount);
		// 페이징된 게시글 목록을 가져오기 위getPhotoBoardList해
		vo.setFirstRecordIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastRecordIndex(paginationInfo.getLastRecordIndex());
		List<PhotoBoardVO> list = service.getPhotoBoardList(vo);
		request.setAttribute("PhotoBoards", list);
		request.setAttribute("pagination", paginationInfo);
		request.getRequestDispatcher("/views/boards/photoBoardList.jsp").forward(request, response);
	}

}
