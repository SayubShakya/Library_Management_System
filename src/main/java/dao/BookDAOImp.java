package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.Books;
import util.JDBCUtil;

public class BookDAOImp implements BookDAO {

	@Override
	public String save(Books book) {
		String status = null;
		String query = "INSERT INTO books (bname, bid, bautho, bsubject) VALUES (?, ?, ?, ?)";

		try (Connection conn = new JDBCUtil().connect(); 
				PreparedStatement ps = conn.prepareStatement(query)) {

			ps.setString(1, book.getBname());
			ps.setString(2, book.getBid());
			ps.setString(3, book.getbautho());
			ps.setString(4, book.getBsubject());

			int rowAffected = ps.executeUpdate();
			status = (rowAffected == 1) ? "success" : "failure";
		} catch (Exception e) {
			e.printStackTrace();
			status = "failure";
		}
		return status;
	}

	@Override
	public Books findById(int bid) {
		String query = "SELECT bname, bid, bautho, bsubject FROM books WHERE bid=?";
		Books book = null;

		try (Connection conn = new JDBCUtil().connect();
				PreparedStatement ps = conn.prepareStatement(query)) {

			ps.setInt(1, bid);
			try (ResultSet rs = ps.executeQuery()) {
				if (rs.next()) {
					book = new Books();
					book.setBname(rs.getString("bname"));
					book.setBid(rs.getString("bid"));
					book.setbautho(rs.getString("bautho"));
					book.setBsubject(rs.getString("bsubject"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return book;
	}

	@Override
	public String deleteById(int bid) {
		String delBstatus = null;
		String query = "DELETE FROM books WHERE bid=?";

		try (Connection conn = new JDBCUtil().connect();
				PreparedStatement ps = conn.prepareStatement(query)) {

			ps.setInt(1, bid);
			int rowAffected = ps.executeUpdate();
			delBstatus = (rowAffected == 1) ? "success" : "failure";
		} catch (Exception e) {
			e.printStackTrace();
			delBstatus = "failure";
		}
		return delBstatus;
	}

	@Override
	public List<Books> findAll() {
		String query = "SELECT * FROM books";
		List<Books> booksList = new ArrayList<>();

		try (Connection conn = new JDBCUtil().connect();
				PreparedStatement ps = conn.prepareStatement(query);
				ResultSet rs = ps.executeQuery()) {

			while (rs.next()) {
				Books book = new Books();
				book.setBid(rs.getString("bid"));
				book.setBname(rs.getString("bname"));
				book.setbautho(rs.getString("bautho"));
				book.setBsubject(rs.getString("bsubject"));
				booksList.add(book);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return booksList;
	}
}
