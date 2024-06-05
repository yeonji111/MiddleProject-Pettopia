package store;

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

@WebServlet("/store/list")
public class StoreListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StoreService service;
	
	@Override
	public void init() throws ServletException {
		ServletContext servletContext = getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		this.service = new StoreService(session);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category = request.getParameter("category");
		String twoCategory = request.getParameter("twoCategory");
		String searchType = request.getParameter("searchType");
		String searchWord = request.getParameter("searchWord");
		// 페이징 관련 코드
		String pageNo = request.getParameter("currentPageNo");
		int currentPageNo = pageNo == null ? 1 : Integer.parseInt(pageNo);
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(currentPageNo);
		paginationInfo.setRecordCountPerPage(16);
		paginationInfo.setPageSize(10);
		SearchVO vo = new SearchVO(searchType, searchWord,category);
		
		int totalCount = service.getStoreListCount(vo);
		paginationInfo.setTotalRecordCount(totalCount);
		// 페이징된 게시글 목록을 가져오기 위해
		vo.setFirstRecordIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastRecordIndex(paginationInfo.getLastRecordIndex());
		vo.setCategory(category);
		
		List<StoreVO> list = service.getStoreList(vo);
		request.setAttribute("stores", list);
		request.setAttribute("pagination", paginationInfo);
		request.setAttribute("searchType", searchType);
		request.setAttribute("searchType", searchType);
		request.setAttribute("searchWord", searchWord);
		request.setAttribute("category", category);
		request.getRequestDispatcher("/views/store/store.jsp").forward(request, response);
		
	}


}
