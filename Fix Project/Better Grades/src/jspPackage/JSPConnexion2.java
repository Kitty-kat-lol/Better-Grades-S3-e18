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
@WebServlet("/session")
public class JSPConnexion2 extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public JSPConnexion2() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String trimestre = request.getParameter("trimestre");
			String cip = request.getParameter("cip");
			

			RequestDispatcher RequetsDispatcherObj =request.getRequestDispatcher("/Home.jsp");
			request.setAttribute("trimestre",trimestre);
			request.setAttribute("cip",cip);
			RequetsDispatcherObj.forward(request, response);
			
		}

	}