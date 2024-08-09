package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import dao.IssueBookImp;

public class ReturnBookStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String returnstatus = "error";
        
        try {
            int sid = Integer.parseInt(request.getParameter("sid"));  
            int bid = Integer.parseInt(request.getParameter("bid"));      

            IssueBookImp isbook = new IssueBookImp();
            returnstatus = isbook.returnBook(sid, bid);
            
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

        session.setAttribute("returnstatus", returnstatus);
        response.sendRedirect("checkduestud.jsp");  
    }
}