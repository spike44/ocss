package disc.ocss.control;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

	private String value;
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
	@SuppressWarnings({ "restriction", "unchecked" })
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();

		boolean isMultipart= ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {



			// 업로드된 파일을 임시 저장하기 위한 팩토리 생성
			DiskFileItemFactory factory= new DiskFileItemFactory();
			ServletFileUpload upload=new ServletFileUpload(factory); 
			 upload.setSizeMax(10 * 1024 * 1024);
			 upload.setHeaderEncoding("UTF-8");





			// 전송된 파라메터값을 파싱하여 FileItem으로 리스트에 담아 반환해 준다.
			List<FileItem> items;
			try {
				items = upload.parseRequest(request);


				for ( FileItem item : items) {
					if ( item.isFormField() ) {
						String name=item.getFieldName();     // 파일이 아니고 name=value 형식으로 전송된 데이터 처리
						value =item.getString("utf-8");
						System.out.println(value);
					} else {
						String name=item.getFieldName();
						String fileName=item.getName();                     // 파일 이름을 읽어 온다.
						String contentType=item.getContentType();      // 파일의 타입을 읽어 온다.
						long size=item.getSize();                              // 파일의 사이즈를 읽어 온다.

						// 업로드된 파일을 한줄씩 읽어서 화면에 출력한다.
						
						String filename="/images/"+UUID.randomUUID().toString()+".jpg";
						String path = getServletContext().getRealPath("/");

						FileOutputStream os=new FileOutputStream(path+filename);

						InputStream in=item.getInputStream();

						byte[] buffer=new byte[512];

						int len=-1; 

						while ((len=in.read(buffer)) != -1 ) {
							os.write(buffer,0,len);
						}
						
						session.setAttribute(value+"filename", filename);
						os.close();
					}
				}
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			
			response.sendRedirect("/OCSS/view/imagePage.jsp");
		}
	}
}




