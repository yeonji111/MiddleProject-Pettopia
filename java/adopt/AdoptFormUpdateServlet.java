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

@WebServlet("/adopt/update")
public class AdoptFormUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int formId = Integer.parseInt(request.getParameter("num"));
	
		String state = request.getParameter("state");
		int result = 0;
		
		System.out.println(state);
		System.out.println(formId);
		
		ServletContext servletContext = request.getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		AdoptFormService adoptFormService = new AdoptFormService(session);
		AdoptService adoptService = new AdoptService(session);
		
		if (state.equals("yes") ) {
			result = adoptFormService.updateAdoptForm(new AdoptFormVO(formId, "승인됨"));
			System.out.println("승인루트");
			adoptService.updateAdopt(new AdoptVO(formId,"입양 진행 중"));
		}
		else {
			result = adoptFormService.updateAdoptForm(new AdoptFormVO(formId, "반려됨"));
			System.out.println("반려루트");
			adoptService.updateAdopt(new AdoptVO(formId,"입양가능"));
			
		}
		
		if (result > 0) {
			response.sendRedirect("/pet/member/admin");
			
		}
		else {
			response.sendRedirect("/pet/member/admin");
			
		}
	}

}
