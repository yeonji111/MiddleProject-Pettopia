package photoBoard;

import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PhotoDownloadServlet
 */
@WebServlet("/images")
public class PhotoDownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileName = request.getParameter("filename");
        // 파일 업로드한 폴더 downloadPath
        String downloadPath = ("C:\\temp\\");
        String filePath = downloadPath + fileName;

        // 파일 이름이 한글일 경우를 대비하여 UTF-8로 인코딩함
        String encodingFileName = new String(fileName.getBytes("UTF-8"));

        byte[] b = new byte[4096];
        FileInputStream fileInputStream = new FileInputStream(filePath);

        // 파일 MIME 타입 얻어오기
        String sMimeType = getServletContext().getMimeType(filePath);
        if(sMimeType == null) {
            sMimeType = "application/octet-stream";
        }
        response.setContentType(sMimeType);

        response.setHeader("Content-Disposition", "attachment; filename=" + encodingFileName);

        ServletOutputStream stream = response.getOutputStream();
        int read;
        while ((read = fileInputStream.read(b, 0, b.length)) != -1) {
            stream.write(b, 0, read);
        }
        fileInputStream.close();
	}

}
