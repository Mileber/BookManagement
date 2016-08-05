package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DB;
import model.Book;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("gb2312");
		response.setContentType("gb2312");
		String id=request.getParameter("search_id");
		String bookname=request.getParameter("search_bookname");
		String author=request.getParameter("search_author");
		String press=request.getParameter("search_press");
		String pubdate=request.getParameter("search_pubdate");
		String[] book = new String[5];
		book[0] = id;
		book[1] = bookname;
		book[2] = author;
		book[3] = press;
		book[4] = pubdate;
		DB db=new DB();
		ArrayList al=db.findBookByParameter(book);
		request.setAttribute("al2", al);
		request.getRequestDispatcher("/searchResult.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
