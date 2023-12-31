package com.DAO;
import java.util.List;

import com.entity.BookDtls;

public interface BookDAO {
public boolean addBooks(BookDtls b) ;
public List<BookDtls> getAllBooks();
public  BookDtls getBookById(int id);
public boolean updateEditbooks(BookDtls b);
public boolean deleteBooks(int id);
public List<BookDtls> getNewBooks();
public List<BookDtls> getRecentBook();
public List<BookDtls> getOldBooks();
public List<BookDtls> getAllRecentBook();
public List<BookDtls> getAllOldBook();
public List<BookDtls> getAllNewBook();

	
}
