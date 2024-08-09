package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import dao.BookDAO;
import dao.BookDAOImp;
import dto.Books;

public class ListBooksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("lid") == null) {
			response.sendRedirect("login.jsp");
			return;
		}

		BookDAO bookDAO = new BookDAOImp();
		List<Books> booksList = null;
		try {
			booksList = bookDAO.findAll();
			request.setAttribute("booksList", booksList);
		} catch (Exception e) {
			e.printStackTrace();
		}

		request.getRequestDispatcher("allbook.jsp").forward(request, response);
	}
}