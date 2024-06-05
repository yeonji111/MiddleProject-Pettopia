package contents;

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


@WebServlet("/tip/list")
public class TipListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TipService service;

	@Override
	public void init() throws ServletException {
        ServletContext context = getServletContext();
        SqlSession sqlSession = (SqlSession) context.getAttribute("sqlSession");
        service = new TipService(sqlSession);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchType = request.getParameter("searchType");
		String searchWord = request.getParameter("searchWord");
		
		
		String pageNo = request.getParameter("currentPageNo");
		int currentPageNo = pageNo == null ? 1 : Integer.parseInt(pageNo);
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(currentPageNo);
		paginationInfo.setRecordCountPerPage(5);
		paginationInfo.setPageSize(5);
		SearchVO vo = new SearchVO(searchType, searchWord);
		
		int totalCount = service.getTipListCount(vo);
		paginationInfo.setTotalRecordCount(totalCount);
		// 페이징된 게시글 목록을 가져오기 위해
		vo.setFirstRecordIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastRecordIndex(paginationInfo.getLastRecordIndex());
		
		List<TipVO> list = service.getTipList(vo);
		request.setAttribute("tips", list);
		request.setAttribute("pagination", paginationInfo);
		request.getRequestDispatcher("/views/contents/tipList.jsp").forward(request, response);
	
	}

}
