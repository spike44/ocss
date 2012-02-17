package disc.ocss.control;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadFileServlet
 */
public class UploadFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UploadFileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("restriction")
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("restriction")
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println("진입");
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {
			System.out.println("if 진입");
			// 업로드된 파일을 임시 저장하기 위한 팩토리 생성
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
			// 전송된 파라메터값을 파싱하여 FileItem으로 리스트에 담아 반환해 준다.
			List<FileItem> items = upload.parseRequest(request);

			for (FileItem item : items) {
				System.out.println("for 진입");
				if (item.isFormField()) {
					String name = item.getFieldName(); // 파일이 아니고 name=value
														// 형식으로 전송된 데이터 처리
					String value = item.getString("utf-8");
					out.println("요청파라메터: " + name + " = " + value + "<br/>");
				} else {
					String name = item.getFieldName();
					String fileName = item.getName(); // 파일 이름을 읽어 온다.
					String contentType = item.getContentType(); // 파일의 타입을 읽어
																// 온다.
					long size = item.getSize(); // 파일의 사이즈를 읽어 온다.
					out.println("요청파라메터: " + name + "<br>");
					out.println("파일명: " + fileName + "<br>");
					out.println("내용형식: " + contentType + "<br>");
					out.println("파일크기: " + size + "<br>");
					out.println("파일내용: <br>");

					
					String filename="c:\\"+ fileName;



					request.setAttribute("filename", filename);

					FileOutputStream os = new FileOutputStream(filename);

					InputStream in = item.getInputStream();

					byte[] buffer = new byte[512];

					int len = -1;

					while ((len = in.read(buffer)) != -1) {

						os.write(buffer, 0, len);

					}
					out.println("<img src= '"+filename+"'>");
				}
			}
		}
		catch (FileUploadException e) {
			// TODO: handle exception
		}
	}
	}
}
