package adopt;

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

@WebServlet("/adopt/list")
public class AdoptListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ServletContext servletContext = request.getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		AdoptService adoptService = new AdoptService(session);

		// 페이징 관련 코드
		String pageNo = request.getParameter("currentPageNo");
		int currentPageNo = pageNo == null ? 1 : Integer.parseInt(pageNo);

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(currentPageNo);
		paginationInfo.setRecordCountPerPage(16);
		paginationInfo.setPageSize(10);
		SearchVO vo = new SearchVO();

		int totalCount = adoptService.getAdoptListCount(vo);
		paginationInfo.setTotalRecordCount(totalCount);
		
		// 페이징된 게시글 목록을 가져오기 위해
		vo.setFirstRecordIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastRecordIndex(paginationInfo.getLastRecordIndex());
		
		List<AdoptVO> adoptList = adoptService.getAdoptList(vo);
		
		
		request.setAttribute("adoptList", adoptList);
		request.setAttribute("pagination", paginationInfo);
		request.getRequestDispatcher("/views/adopt/list.jsp").forward(request, response);

	}

}
