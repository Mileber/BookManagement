package servlet;

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
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
@MultipartConfig
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setContentType("gb2312");
		String bookId = request.getParameter("id");
		String bookName = request.getParameter("bookname");
		String author = request.getParameter("author");
		String press = request.getParameter("press");
		String pubdate = request.getParameter("pubdate");
		Part cover = request.getPart("cover");
		if(cover != null){
			InputStream inputStream = cover.getInputStream();
			
			DB db=new DB();
			Book book = db.findBookById(bookId);
			Book bookNew = new Book();
			bookNew.setId(Integer.parseInt(bookId));
			bookNew.setBookname(bookName);
			bookNew.setAuthor(author);
			bookNew.setPress(press);
			bookNew.setPubdate(pubdate);
			bookNew.setCover(inputStream);
			if(book!=null){
				if(db.updateBook(bookNew, bookId)){
					response.sendRedirect("success.jsp");
				}
			}
		}
		else{
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
