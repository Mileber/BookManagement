package servlet;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import db.DB;
import model.Book;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
@MultipartConfig
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setContentType("gb2312");
		
		String bookName = request.getParameter("bookname");
		String author = request.getParameter("author");
		String press = request.getParameter("press");
		String pubdate = request.getParameter("pubdate");
		Part cover = request.getPart("cover");
		if(cover != null){
			InputStream inputStream = cover.getInputStream();
			
			Book book = new Book();
			book.setBookname(bookName);
			book.setAuthor(author);
			book.setPress(press);
			book.setPubdate(pubdate);
			book.setCover(inputStream);
			
			// 调DB类中的方法判断是否插入成功
			if(new DB().insertBook(book)){
				response.sendRedirect("success.jsp");
			}
		}else{
			response.sendRedirect("fail.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
