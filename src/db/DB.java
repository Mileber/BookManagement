package db;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.*;

public class DB {
	Connection ct;
	PreparedStatement pstmt;
	
	public DB(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			ct=DriverManager.getConnection("jdbc:mysql://localhost:3306/book2016","root","123456");
			}catch(Exception e){
				e.printStackTrace();
			}
	}
	
	//验证用户名密码
	public User checkUser(String name,String password){
		try{
			pstmt=ct.prepareStatement("select * from user where name=? and password=?");
			pstmt.setString(1,name);
			pstmt.setString(2, password);
			ResultSet rs=pstmt.executeQuery();
			User user=new User();
			while(rs.next()){
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setPassword(rs.getString(3));
				return user;
			}
			return null;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}	
	}
	
	//新增用户
	public boolean insertUser(String name,String pwd){
		try{
			pstmt=ct.prepareStatement("insert into user (name, password) values(?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2, pwd);
			pstmt.executeUpdate();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	//新增图书
	public boolean insertBook(Book book){
		try{
			pstmt=ct.prepareStatement("insert into book (bookname,author,press,pubdate,cover) values(?,?,?,?,?)");
			pstmt.setString(1, book.getBookname());
			pstmt.setString(2, book.getAuthor());
			pstmt.setString(3, book.getPress());
			pstmt.setString(4, book.getPubdate());
			pstmt.setBlob(5, book.getCover());
			pstmt.executeUpdate();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	//删除图书
	public boolean deleteBook(Book book){
		try{
			pstmt=ct.prepareStatement("delete from book where id=?");
			pstmt.setInt(1, book.getId());
			pstmt.executeUpdate();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	//更新or修改图书
	public boolean updateBook(Book book,String id){
		try{
			pstmt=ct.prepareStatement("update book set bookname=?, "
					+"author=?, press=?, pubdate=?, cover=? where id=?");
			pstmt.setString(1, book.getBookname());
			pstmt.setString(2, book.getAuthor());
			pstmt.setString(3, book.getPress());
			pstmt.setString(4, book.getPubdate());
			pstmt.setString(6, id);
			pstmt.setBlob(5, book.getCover());
			pstmt.executeUpdate();
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	//查找所有图书
	public ArrayList findBook(){
		try{
			pstmt=ct.prepareStatement("select * from book");
			ArrayList al=new ArrayList();
			
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				Book book=new Book();
				book.setId(rs.getInt(1));
				book.setBookname(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setPress(rs.getString(4));
				book.setPubdate(rs.getString(5));
				book.setCover(rs.getBlob(5).getBinaryStream());
				al.add(book);
			}
			return al;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	//模糊查询图书
	public ArrayList findBookByParameter(String[] book2){
		try{
			String statement = "select * from book where";
			int flag = 0;
			if(book2[0]!=null||book2[0]!=""){
				statement = statement + " id like '%"+book2[0]+"%'";
				flag = 1;
			}
			if(book2[1]!=null||book2[1]!=""){
				if(flag==1){
					statement = statement + " and";
				}
				statement = statement + " bookname like '%"+book2[1]+"%'";
				flag = 1;
			}
			if(book2[2]!=null||book2[2]!=""){
				if(flag==1){
					statement = statement + " and";
				}
				statement = statement + " author like '%"+book2[2]+"%'";
				flag = 1;
			}
			if(book2[3]!=null||book2[3]!=""){
				if(flag==1){
					statement = statement + " and";
				}
				statement = statement + " press like '%"+book2[3]+"%'";
				flag = 1;
			}
			if(book2[4]!=null||book2[4]!=""){
				if(flag==1){
					statement = statement + " and";
				}
				statement = statement + " pubdate like '%"+book2[4]+"%'";
				flag = 1;
			}
			statement = statement + ";";
			pstmt=ct.prepareStatement(statement);
			
			ArrayList al=new ArrayList();
			
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				Book book=new Book();
				book.setId(rs.getInt(1));
				book.setBookname(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setPress(rs.getString(4));
				book.setPubdate(rs.getString(5));
				book.setCover(rs.getBlob(6).getBinaryStream());
				al.add(book);
			}
			return al;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public Book findBookById(String id){
		try{
			pstmt=ct.prepareStatement("select * from book where id=?");
			pstmt.setString(1, id);
			
			Book bk=new Book();
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				Book book=new Book();
				book.setId(rs.getInt(1));
				book.setBookname(rs.getString(2));
				book.setAuthor(rs.getString(3));
				book.setPress(rs.getString(4));
				book.setPubdate(rs.getString(5));
				book.setCover(rs.getBlob(6).getBinaryStream());
				return book;
			}
			return null;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	

}
