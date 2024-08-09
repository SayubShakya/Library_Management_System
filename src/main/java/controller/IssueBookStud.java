package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import dao.BookDAOImp;
import dao.IssueBookImp;
import dao.StudentDAOImp;
import dto.Books;
import dto.Student;

public class IssueBookStud extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        HttpSession session = request.getSession();
	        String issuestatus = "error";

	        try {
	            IssueBookImp issueBookImp = new IssueBookImp();
	            List<List<Object>> issuedBooks = issueBookImp.getAllIssuedBooks();

	            request.setAttribute("issuedBooks", issuedBooks);
	            RequestDispatcher requestDispatcher = request.getRequestDispatcher("issuebookstudent.jsp");
	            requestDispatcher.forward(request, response);
	        } catch (Exception e) {
	            e.printStackTrace();
	            issuestatus = "error";
	        }
	    }

	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        doGet(request, response);
	    }
	}