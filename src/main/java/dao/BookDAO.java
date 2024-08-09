package dao;

import java.util.List;
import dto.Books;

public interface BookDAO {

	String save(Books book);

	Books findById(int bid);

	String deleteById(int bid);

	List<Books> findAll();
}
