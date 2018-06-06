package classes;

import java.io.;
import javax.servlet.;
import javax.servlet.http.;


public class project_servlet extends HttpServlet {


	public project_servlet() {
		System.err.println(Servlet initialized!);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.getWriter().println(Hello world!  + request.getUserPrincipal().toString());

	}


}