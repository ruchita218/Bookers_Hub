package com.DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.entity.BookDtls;
import com.sun.tools.javac.util.List;
public interface BookDAOImpl{
private Connection conn;
	public boolean addbooks(BookDtls b) {
		boolean f = false;
		try {
			String sql = "insert into book_dtls(bookname, author,price,bookCategory,status,photo,user_email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());
			ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			
		}
	return false;
	
}
	public List<BookDtls>  getAllBooks() {
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtlsb = null;
		try {
			String sql="select * from book_dtls";
			PreparedStatement ps= conn.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			while(rs.next());
			{
				b = new BookDtls();
				b.setbookId(rs.getInt(1));
				b.setbookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setprice(rs.getString(4));
				b.setbookCatgory(rs.getString(5));
				b.setStatus(rs.getString(6));
				list.add(b);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return list;
	}
	public BookDtls getBookById(int id) {
		BookDtls b=null;
		try {
			String sql="select * from book_tls where bookId=?)";
		PreparedStatement ps.conn.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			b= new BookDtls();
			b.setBookId(rs.getInt(1));
			b.setBookName(rs.getString(2));
			b.setAuthor(rs.getString(3));
			b.setPrice(rs.getString(4));
			b.setBookCategory(rs.getString(5));
			b.setStatus(rs.getString(6));
			b.setPhotoName(rs.getString(7));
			b.setEmail(rs.getString(8));
		}
		}catch(Exception e) {
			e.printStackTrace()
		}
		return b;
	}
	public boolean updateEditbooks(int id) {
		boolean f= false;
		try {
			String sql="update book_dtls set bookname=?, author=?,price=?,status=?  where id=?";
			PreparedStatement ps = new prepareStatement(sql);
			
			if(i==1) {
				f=true;
				
			}
	}catch(Exception e) {
		e.printStackTrace();
		}
		return f;
		}
	public boolean deleteBooks(int id) {
	boolean f = false;
	try {
		String sql="delete from book_dtls where bookId=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1,  id);
		int i = ps.executeUpdate();
		if(i==1) {
			f=true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public List<BookDtls> getNewBook(){
		List<BookDtls> list = new ArrayList<BookDtls>();
		BooksDtls b = null;
		try {
			String sql="select * from book_dtls  where bookCategory=? and  status=? order by bookId DESC";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, "New");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next()&&i<=4){
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getNString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<BookDtls> getRecentBook(){
		List<BookDtls> list = new ArrayList<BookDtls>();
		BooksDtls b = null;
		try {
			String sql="select * from book_dtls  where status=? order by bookId DESC";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next()&&i<=4){
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getNString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public List<BookDtls> getOldBooks(){
		List<BookDtls> list = new ArrayList<BookDtls>();
		BooksDtls b = null;
		try {
			String sql="select * from book_dtls  where bookCategory=? and  status=? order by bookId DESC";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, "Old");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next()&&i<=4){
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getNString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				i++;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<BookDtls> getAllRecentBook(){
		List<BookDtls> list = new ArrayList<BookDtls>();
		BooksDtls b = null;
		try {
			String sql="select * from book_dtls  where bookCategory=? and  status=? order by bookId DESC";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, "New");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next()){
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getNString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
	
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
				return null;
			}
	public List<BookDtls> getAllNewBook(){
		List<BookDtls> list = new ArrayList<BookDtls>();
		BooksDtls b = null;
		try {
			String sql="select * from book_dtls  where bookCategory=? and  status=? order by bookId DESC";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, "New");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			int i=1;
			while(rs.next()){
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getNString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);

			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public List<BookDtls> getAllOldBooks(){
		List<BookDtls> list = new ArrayList<BookDtls>();
		BooksDtls b = null;
		try {
			String sql="select * from book_dtls  where bookCategory=? and  status=? order by bookId DESC";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, "Old");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				b=new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getNString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	}

