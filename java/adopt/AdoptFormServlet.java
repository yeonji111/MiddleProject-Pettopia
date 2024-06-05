package adopt;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

@WebServlet("/adopt/form")
public class AdoptFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		request.setAttribute("num", num);
		request.getRequestDispatcher("/views/adopt/form.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext servletContext = request.getServletContext();
		SqlSession session = (SqlSession) servletContext.getAttribute("sqlSession");
		AdoptFormService adoptFormService = new AdoptFormService(session);
		
		
		int num = Integer.parseInt(request.getParameter("num"));    // 동물 번호
		String name = request.getParameter("name");    // 이름
		String phone = request.getParameter("phone");   // 연락처
		
		String address1 = request.getParameter("address1");  // 주소
		String address2 = request.getParameter("address2");  // 상세주소
		String address3 = request.getParameter("address3");  // 주소-참고항목
		String address = address1 + " " + address2 + " " + address3; 
		String live = request.getParameter("live");  // 주거형태
		String family = request.getParameter("family");  // 가족 구성원
		String experience1 = request.getParameter("experience1");  // 반려동물 경험 유무
		String experience2 = request.getParameter("experience2");  // 키우고 있는 반려동물 유무
		
		int result = adoptFormService.addAdoptForm(new AdoptFormVO(num, name, phone, address, live, family, experience1, experience2));
		if (result > 0) {
			response.sendRedirect("/pet/main");
		} else {
			response.sendRedirect("/pet/main");
		}
		
	}

}
