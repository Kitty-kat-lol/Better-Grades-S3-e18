package jspPackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JSPConnexion
 */
@WebServlet("/cours")
public class JSPConnexion extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public JSPConnexion() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String NomdeCours = request.getParameter("NomdeCours");
			String cip = request.getUserPrincipal().toString().toUpperCase();
			RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/Cours.jsp");
			request.setAttribute("myname",NomdeCours);
			request.setAttribute("cip",cip);
			RequetsDispatcherObj.forward(request, response);
		}

	}