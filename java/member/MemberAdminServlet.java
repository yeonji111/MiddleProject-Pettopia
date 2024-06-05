package member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import adopt.AdoptFormService;
import adopt.AdoptFormVO;
import adopt.AdoptService;
import common.SearchVO;

@WebServlet("/member/admin")
public class MemberAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ServletContext servletContext = request.getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		MemberService memberService = new MemberService(session);
		AdoptFormService adoptFormService = new AdoptFormService(session);
		
		List<MemberVO> list = memberService.getMemberList();
		List<AdoptFormVO> formList = adoptFormService.getAdoptFormList();
		
		request.setAttribute("member", list);
		request.setAttribute("forms", formList);
		
		request.getRequestDispatcher("/views/common/admin.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext servletContext = request.getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		MemberService memberService = new MemberService(session);

		String Searchid = request.getParameter("id");
		int result = memberService.deleteMember(Searchid);

		if (result > 0) {
			response.sendRedirect("/pet/member/admin");
		} else {
			response.sendRedirect("/pet/member/admin");
		}
	}

}
