package localpage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MyBatisPackage.dao.ClassAverageDAO;
import MyBatisPackage.dao.CoursDAO;

/**
 * Servlet implementation class CoursRaw
 */
@WebServlet("/CoursRaw")
public class CoursRaw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CoursRaw() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		out.println("");
		ClassAverageDAO Averages = new ClassAverageDAO();
		CoursDAO coursdao = new CoursDAO();
		out.println(coursdao.getAllCourss().toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
